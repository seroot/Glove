import numpy as np

import Hand
import Voltage_Signal


def main():
    VR_Hand = Hand.Hand("Hand.xyz")
    VR_Hand.Joint_List[0].Thumb = True 
    Voltage_List = Voltage_Signal.Read_Voltage('sammucsdhand.txt')
    VR_Hand.Mimic_Voltage(Voltage_List)


if __name__== '__main__':main()
