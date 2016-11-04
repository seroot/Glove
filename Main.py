import numpy as np

import Hand
import Voltage_Signal


def main():
    VR_Hand = Hand.Hand("Hand.xyz")
    Voltage_List = Voltage_Signal.Read_Voltage('best.txt')
    VR_Hand.Mimic_Voltage(Voltage_List)


if __name__== '__main__':main()
