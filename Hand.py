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
        self.Joint_List = np.empty(5, dtype=object)
        for i in range(self.N):
            Line = File_Lines[2+i]
            Line = Line.strip('\n').split()
            Type = Line[0]
            Position = np.array( [ float(Line[1]), float(Line[2]), float(Line[3]) ], dtype=float )
            self.Node_List[i] = Node(Position, Type, i+1)
            self.Node_List[i].Print_Info()
        
        self.print_xyz(append=False)
        self.Joint_List[0] = Joint(self.Node_List[21], self.Node_List[17], self.Node_List[12])
        self.Joint_List[1] = Joint(self.Node_List[22], self.Node_List[16], self.Node_List[13])
        self.Joint_List[2] = Joint(self.Node_List[20], self.Node_List[18], self.Node_List[11])
        self.Joint_List[3] = Joint(self.Node_List[23], self.Node_List[15], self.Node_List[14])
        return
    
    def Wave(self, time):
        for i in range(time):
            self.Joint_List[0].Rotate(-3.14/4)
            self.Joint_List[1].Rotate(-3.14/4)
            self.Joint_List[2].Rotate(-3.14/4)
            self.Joint_List[3].Rotate(-3.14/4)
            self.print_xyz()
            self.Joint_List[0].Rotate(-3.14/4)
            self.Joint_List[1].Rotate(-3.14/4)
            self.Joint_List[2].Rotate(-3.14/4)
            self.Joint_List[3].Rotate(-3.14/4)
            self.print_xyz()
            self.Joint_List[0].Rotate(-3.14/4)
            self.Joint_List[1].Rotate(-3.14/4)
            self.Joint_List[2].Rotate(-3.14/4)
            self.print_xyz()
            self.Joint_List[0].Rotate(3.14/4)
            self.Joint_List[1].Rotate(3.14/4)
            self.Joint_List[2].Rotate(3.14/4)
            self.print_xyz()
            self.Joint_List[0].Rotate(3.14/4)
            self.Joint_List[1].Rotate(3.14/4)
            self.Joint_List[2].Rotate(3.14/4)
            self.Joint_List[3].Rotate(3.14/4)
            self.print_xyz()
            self.Joint_List[0].Rotate(3.14/4)
            self.Joint_List[1].Rotate(3.14/4)
            self.Joint_List[2].Rotate(3.14/4)
            self.Joint_List[3].Rotate(3.14/4)
            self.print_xyz()
        return


    def print_xyz(self, append=True):
        File_Name = "Hand_Motion_Voltage.xyz"
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
        
        V1 = []

        for Volt_Obj in Volt_List:
            V1.append(Volt.Voltage[1])
        
        V1 = np.asarray(V1)

        """
        # Optional plot
        plt.plot(V1)
        plt.axhline(y=(V1.max() + V1.min())/2.0, color='r')
        plt.xlabel('Time')
        plt.ylabel('Voltage')
        plt.ylim(V1.min(),V1.max())
        plt.show()
        """
        Midpoint = (V1.max() + V1.min())/2.0

        for V in V1:
            if self.Joint_List[0].Extended and V > Midpoint:
                self.Joint_List[0].Rotate(-3.14/3)
                self.Joint_List[0].Extended = False
            if (not self.Joint_List[0].Extended) and V < Midpoint:
                self.Joint_List[0].Rotate(3.14/3)
                self.Joint_List[0].Extended = True

            self.print_xyz()

        return













