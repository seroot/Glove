#!usr/bin/python

import numpy as np
import matplotlib.pyplot as plt

from Node import *
from Joint import *
from Voltage_Signal import *

class Hand(object):
    """
    Class defining a 3D model for a hand for interfacing glove sensor with virtual reality
    """

    def __init__(self, File_Name):
        print "Importing Hand Model"
        File = open(File_Name, 'r')
        File_Lines = File.readlines()
        self.Name = File_Name.split('.xyz')[0]
        self.N = int(File_Lines[0].strip('\n')) # Integer
        self.Node_List = np.empty(self.N, dtype=object)
        self.Joint_List = np.empty(9, dtype=object)
        for i in range(self.N):
            Line = File_Lines[2+i]
            Line = Line.strip('\n').split()
            Type = Line[0]
            Position = np.array( [ float(Line[1]), float(Line[2]), float(Line[3]) ], dtype=float )
            self.Node_List[i] = Node(Position, Type, i+1)
            self.Node_List[i].Print_Info()
        
        self.print_xyz(append=False)
        
        
        # Thumb
        self.Joint_List[0] = Joint(self.Node_List[15], self.Node_List[14], self.Node_List[7], Meta = True, Thumb = True) # M
        self.Joint_List[0].Meta_Slave = self.Node_List[23]
        
        # Index
        self.Joint_List[1] = Joint(self.Node_List[16], self.Node_List[13], self.Node_List[10], Meta = True) # M
        self.Joint_List[1].Meta_Slave = self.Node_List[22]
        self.Joint_List[2] = Joint(self.Node_List[22], self.Node_List[16], self.Node_List[13]) # P
        
        # Middle
        self.Joint_List[3] = Joint(self.Node_List[17], self.Node_List[12], self.Node_List[9], Meta = True) # M
        self.Joint_List[3].Meta_Slave = self.Node_List[21]
        self.Joint_List[4] = Joint(self.Node_List[21], self.Node_List[17], self.Node_List[12]) # P
        
        # Ring
        self.Joint_List[5] = Joint(self.Node_List[18], self.Node_List[11], self.Node_List[6], Meta = True) # M
        self.Joint_List[5].Meta_Slave = self.Node_List[20]
        self.Joint_List[6] = Joint(self.Node_List[20], self.Node_List[18], self.Node_List[11]) # P
        
        
        # pinky
        self.Joint_List[7] = Joint(self.Node_List[7], self.Node_List[6], self.Node_List[4], Meta = True)
        self.Joint_List[7].Meta_Slave = self.Node_List[19]
        self.Joint_List[8] = Joint(self.Node_List[19], self.Node_List[7], self.Node_List[6])
        
        
        
        return
    


    def print_xyz(self, append=True):
        File_Name = "Hand_Motion_Voltage_UCSD.xyz"
        if append:
            File = open(File_Name, 'a')
        else:
            File = open(File_Name, 'w')
        
        File.write("%d\n" % self.N)
        File.write("#Random Comment\n")
        for Node_O in self.Node_List:
            File.write('%s %.2f %.2f %.2f\n' % (Node_O.Type, Node_O.Position[0], Node_O.Position[1], Node_O.Position[2]))

        #File.write('\n')
        return



    def Mimic_Voltage(self, Volt_List):
        
        #NVolt_List = [[],[],[],[],[],[],[],[],[]]
        #Thresh = [ 2.85, 2.1, 2.65, 2.5, 2.53, 2.0, 2.8, 2.43, 2.9]
        Thresh = [ 3.2, 2.1, 2.95, 2.89, 2.75, 2.85, 2.7, 2.9, 2.9]
        for Volt in Volt_List:
            logic = []
            # Loop through each sensor and find out what its state is
            # State 1 is currently extended, needs to be rotated down
            # State 2 is currently extended, needs to stay put
            # State 3 is currently contracted, needs to extend
            # State 4 is currently contracted, needs to stay put
            for i in range(9):
                Value = Volt.Voltage[i]
                if self.Joint_List[i].Extended and Value > Thresh[i]:
                    logic.append(1)
                elif self.Joint_List[i].Extended and Value < Thresh[i]:
                    logic.append(2)
                elif (not self.Joint_List[i].Extended) and Value < Thresh[i]:
                    logic.append(3)
                else:
                    #(not self.Joint_List[i].Extended) and Value > Thresh[i]:
                    logic.append(4)

            
            # Loop through k three times to slow down hand motion
            for k in range(3):
                # Loop through each digit and apply the appropriate transformation
                for i in range(9):
                    if logic[i] == 1:
                        self.Joint_List[i].Rotate(-3.14/9.0)
                        self.Joint_List[i].Extended = False
                    if logic[i] == 3:
                        self.Joint_List[i].Rotate(3.14/9.0)
                        self.Joint_List[i].Extended = True
                self.print_xyz()
        return
                















