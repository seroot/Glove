import numpy as np

class Joint(object):
    """
    Class defining a joint on the hand model
    """
    def __init__(self, Master, Slave1, Slave2, Meta = False, Thumb = False):
        self.Master = Master # Node that will rotate
        self.Slave1 = Slave1 # Center node
        self.Slave2  = Slave2 # Bottom Node
        self.Extended = True
        self.Meta = Meta
        self.Thumb = False

        
        # Compute initial value for the angle of the joint
        print self.Master.Position
        print self.Slave1.Position
        Vec1 = (self.Master.Position - self.Slave1.Position)
        self.Vec1 = Vec1/ np.linalg.norm(Vec1)
        Vec2 = (self.Slave1.Position - self.Slave2.Position)
        self.Vec2 = Vec2/ np.linalg.norm(self.Slave1.Position - self.Slave2.Position)
        #print Vec1, Vec2
        #print "Initial angle is ", 180 - np.arccos(np.dot(self.Vec1,self.Vec2))*(180./3.14), "degrees"
        print "------------------"
        
        
        return

    def Rotate(self, Angle):
        if not self.Meta:
            #print "Rotating Proximal Joint"
            C = np.cos(Angle)
            S = np.sin(Angle)
            yt = self.Master.Position[1] - self.Slave1.Position[1]
            zt = self.Master.Position[2] - self.Slave1.Position[2]
            self.Master.Position[1] = (yt*C - zt*S) + self.Slave1.Position[1]
            self.Master.Position[2] = (yt*S + zt*C) + self.Slave1.Position[2]

            Vec1 = (self.Master.Position - self.Slave1.Position)
            self.Vec1 = Vec1/ np.linalg.norm(Vec1)
            Vec2 = (self.Slave1.Position - self.Slave2.Position)
            self.Vec2 = Vec2/ np.linalg.norm(self.Slave1.Position - self.Slave2.Position)
            #print Vec1, Vec2
            #print "Angle for %dth is now ", 180 - np.arccos(np.dot(self.Vec1,self.Vec2))*(180./3.14), "degrees"
            """"
            if self.Thumb:
                print "Rotating Thumb"
                yt = self.Master.Position[0] - self.Slave1.Position[0]
                zt = self.Master.Position[1] - self.Slave1.Position[1]
                self.Master.Position[0] = (yt*C - zt*S) + self.Slave1.Position[0]
                self.Master.Position[1] = (yt*S + zt*C) + self.Slave1.Position[1]
                Vec1 = (self.Master.Position - self.Slave1.Position)
                self.Vec1 = Vec1/ np.linalg.norm(Vec1)
                Vec2 = (self.Slave1.Position - self.Slave2.Position)
                self.Vec2 = Vec2/ np.linalg.norm(self.Slave1.Position - self.Slave2.Position)
                '''
                xt = self.Master.Position[0] - self.Slave1.Position[0]
                yt = self.Master.Position[1] - self.Slave1.Position[1]
                self.Master.Position[0] = (xt*C - yt*S) + self.Slave1.Position[0]
                self.Master.Position[1] = (xt*S + yt*C) + self.Slave1.Position[1]
                '''
                """
        else:
            #print "Rotating Metacarpal Joint"
            C = np.cos(Angle)
            S = np.sin(Angle)
            # Rotate the master about the slave 1
            yt = self.Master.Position[1] - self.Slave1.Position[1]
            zt = self.Master.Position[2] - self.Slave1.Position[2]
            self.Master.Position[1] = (yt*C - zt*S) + self.Slave1.Position[1]
            self.Master.Position[2] = (yt*S + zt*C) + self.Slave1.Position[2]
            
            
            Vec1 = (self.Master.Position - self.Slave1.Position)
            self.Vec1 = Vec1/ np.linalg.norm(Vec1)
            Vec2 = (self.Slave1.Position - self.Slave2.Position)
            self.Vec2 = Vec2/ np.linalg.norm(self.Slave1.Position - self.Slave2.Position)
        
            # Rotate the meta_slave about the slave 1
            yt = self.Meta_Slave.Position[1] - self.Slave1.Position[1]
            zt = self.Meta_Slave.Position[2] - self.Slave1.Position[2]
            self.Meta_Slave.Position[1] = (yt*C - zt*S) + self.Slave1.Position[1]
            self.Meta_Slave.Position[2] = (yt*S + zt*C) + self.Slave1.Position[2]
        
            print self.Thumb


            
        return

