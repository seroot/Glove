import numpy as np

class Node(object):
    """
    Class defining a node on the Hand Model
    """
    def __init__(self, Position, Type, index):
        self.Position = Position
        self.Type = Type
        self.index = index
        return

    def Print_Info(self):
        print self.index, self.Type, self.Position
        return


