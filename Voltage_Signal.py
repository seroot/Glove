#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt

class Voltage_Signal():
    def __init__(self, Voltage, Resistance, Code, Letter):
        self.Voltage = Voltage
        self.Resistance = Resistance
        self.Code = Code
        self.Letter = Letter
        self.string = ""
        return
    
    def Print_Info(self):
        """
        print "Voltage = ", self.Voltage
        print "Resistance is futile", self.Resistance
        print "Code is", self.Code
        print "Letter is", self.Letter
        """
        print self.Letter
        self.string = "%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%d,%s" % ( self.Voltage[0], self.Voltage[1], self.Voltage[2], self.Voltage[3], self.Voltage[4], self.Voltage[5], self.Voltage[6], self.Voltage[7], self.Voltage[8], self.Resistance[0], self.Resistance[1], self.Resistance[2], self.Resistance[3], self.Resistance[4], self.Resistance[5], self.Resistance[6], self.Resistance[7], self.Resistance[8], self.Code, self.Letter )
        #print self.string



def Print_File(Filename, Volt_List):
    file = open(Filename, 'w')
    for Volt in Volt_List:
        file.write(Volt.string)
        file.write('\n')
    file.close()
    return


def Read_Voltage(Filename):
    File = open(Filename, 'r')
    Volt_List = []
    for line in File:
        Voltage = []
        Resistance = []
        line = line.split(',')
        if len(line) > 10:
            for i in range(9):
                Voltage.append(float(line[i]))
            for i in range(9,18):
                Resistance.append(float(line[i].strip('.//')))
            Voltage = np.asarray(Voltage)
            Resistance = np.asarray(Resistance)
            Code = int(line[18])
            Letter = line[19].split('\n')[0]


            Volt_List.append(Voltage_Signal(Voltage, Resistance, Code, Letter))
            Volt_List[-1].Print_Info()

    Print_File("%s_Excel.txt" % Filename.strip('.txt') , Volt_List)
    return Volt_List
                 
                         






