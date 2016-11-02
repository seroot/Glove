global_settings {
	ambient_light rgb <0.200000002980232, 0.200000002980232, 0.200000002980232>
	max_trace_level 15
}

background { color rgb <1,1,1> }

camera {
	perspective
	location <-11.2878339747602, -4.50327332155293, -18.0462634854821>
	angle 40
	up <-0.185132751542075, 0.945683913514868, -0.267222379350354>
	right <-0.922324175075383, -0.0733551495983419, 0.379390482351521> * 1.677321
	direction <0.33918133848721, 0.316703264502608, 0.885807576099582> }

light_source {
	<-78.4600459505875, 18.6352921890499, -50.0262069773697>
	color rgb <1, 1, 1>
	fade_distance 130.047837352261
	fade_power 0
	parallel
	point_at <78.4600459505875, -18.6352921890499, 50.0262069773697>
}

light_source {
	<50.5793165796838, 57.1569661271317, -3.09931727250934>
	color rgb <0.300000011920929, 0.300000011920929, 0.300000011920929>
	fade_distance 130.047837352261
	fade_power 0
	parallel
	point_at <-50.5793165796838, -57.1569661271317, 3.09931727250934>
}

#default {
	finish {ambient .8 diffuse 1 specular 1 roughness .005 metallic 0.5}
}

union {
}
merge {
}
union {
sphere {
	<-2.27, -1.94, -0.01>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-0.72, -1.91, 0.13>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-3.18, -0.74, 0.07>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<0.14, -0.84, 0.02>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-4.01, 0.29, -0.52>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581,0> }
}
sphere {
	<-4.8, 1.38, -0.83>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1,0> }
}
sphere {
	<-3.11, 1.22, -0.44>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<0.5, 0.62, -0.41>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791,0> }
}
sphere {
	<-1.91, 1.78, -0.61>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-0.54, 1.74, -0.4>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464,0> }
}
sphere {
	<-3.67, 2.78, -1.13>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581,0> }
}
sphere {
	<-2.06, 2.75, -1.07>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581,0> }
}
sphere {
	<-0.43, 2.95, -1.05>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581,0> }
}
sphere {
	<0.74, 1.73, -0.58>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581,0> }
}
sphere {
	<1.08, 2.65, -0.99>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1,0> }
}
sphere {
	<-0.32, 4.34, -1.72>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1,0> }
}
sphere {
	<-2.18, 4.02, -1.81>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1,0> }
}
sphere {
	<-3.82, 3.58, -1.8>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1,0> }
}
sphere {
	<-5.33, 2.24, -1.96>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1,0> }
}
sphere {
	<-3.91, 4.37, -2.81>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1,0> }
}
sphere {
	<-2.26, 5, -3.16>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1,0> }
}
sphere {
	<-0.26, 5.18, -2.73>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1,0> }
}
sphere {
	<1.3, 3.45, -2.11>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1,0> }
}
cylinder {
	<-2.26, 5, -3.16>, 	<-2.22, 4.51, -2.485>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1, 0> }
}
cylinder {
	<-2.22, 4.51, -2.485>, 	<-2.18, 4.02, -1.81>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-3.91, 4.37, -2.81>, 	<-3.865, 3.975, -2.305>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1, 0> }
}
cylinder {
	<-3.865, 3.975, -2.305>, 	<-3.82, 3.58, -1.8>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-0.26, 5.18, -2.73>, 	<-0.29, 4.76, -2.225>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1, 0> }
}
cylinder {
	<-0.29, 4.76, -2.225>, 	<-0.32, 4.34, -1.72>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<1.3, 3.45, -2.11>, 	<1.19, 3.05, -1.55>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1, 0> }
}
cylinder {
	<1.19, 3.05, -1.55>, 	<1.08, 2.65, -0.99>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-5.33, 2.24, -1.96>, 	<-5.065, 1.81, -1.395>, 0.5
	pigment { rgbt <0.5, 0.699999988079071, 1, 0> }
}
cylinder {
	<-5.065, 1.81, -1.395>, 	<-4.8, 1.38, -0.83>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-2.18, 4.02, -1.81>, 	<-2.12, 3.385, -1.44>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-2.12, 3.385, -1.44>, 	<-2.06, 2.75, -1.07>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-3.82, 3.58, -1.8>, 	<-3.745, 3.18, -1.465>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-3.745, 3.18, -1.465>, 	<-3.67, 2.78, -1.13>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-2.06, 2.75, -1.07>, 	<-1.985, 2.265, -0.84>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-1.985, 2.265, -0.84>, 	<-1.91, 1.78, -0.61>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-0.43, 2.95, -1.05>, 	<-0.485, 2.345, -0.725>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-0.485, 2.345, -0.725>, 	<-0.54, 1.74, -0.4>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<1.08, 2.65, -0.99>, 	<0.91, 2.19, -0.785>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<0.91, 2.19, -0.785>, 	<0.74, 1.73, -0.58>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-4.8, 1.38, -0.83>, 	<-4.405, 0.835, -0.675>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-4.405, 0.835, -0.675>, 	<-4.01, 0.29, -0.52>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-4.8, 1.38, -0.83>, 	<-3.955, 1.3, -0.635>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-3.955, 1.3, -0.635>, 	<-3.11, 1.22, -0.44>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.91, 1.78, -0.61>, 	<-2.51, 1.5, -0.525>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-2.51, 1.5, -0.525>, 	<-3.11, 1.22, -0.44>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.91, 1.78, -0.61>, 	<-1.225, 1.76, -0.505>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.225, 1.76, -0.505>, 	<-0.54, 1.74, -0.4>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.74, 1.73, -0.58>, 	<0.62, 1.175, -0.495>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<0.62, 1.175, -0.495>, 	<0.5, 0.62, -0.41>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-4.01, 0.29, -0.52>, 	<-3.56, 0.755, -0.48>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-3.56, 0.755, -0.48>, 	<-3.11, 1.22, -0.44>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.5, 0.62, -0.41>, 	<-0.02, 1.18, -0.405>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-0.02, 1.18, -0.405>, 	<-0.54, 1.74, -0.4>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.5, 0.62, -0.41>, 	<0.32, -0.11, -0.195>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.32, -0.11, -0.195>, 	<0.14, -0.84, 0.02>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-2.27, -1.94, -0.01>, 	<-2.725, -1.34, 0.03>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-2.725, -1.34, 0.03>, 	<-3.18, -0.74, 0.07>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-2.27, -1.94, -0.01>, 	<-1.495, -1.925, 0.06>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.495, -1.925, 0.06>, 	<-0.72, -1.91, 0.13>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.14, -0.84, 0.02>, 	<-0.29, -1.375, 0.075>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-0.29, -1.375, 0.075>, 	<-0.72, -1.91, 0.13>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<0.14, -0.84, 0.02>, 	<-0.66, -0.41, 0.095>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-0.66, -0.41, 0.095>, 	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-1.46, 0.02, 0.17>, 	<-1.09, -0.945, 0.15>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-1.09, -0.945, 0.15>, 	<-0.72, -1.91, 0.13>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.46, 0.02, 0.17>, 	<-1.865, -0.96, 0.08>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-1.865, -0.96, 0.08>, 	<-2.27, -1.94, -0.01>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.46, 0.02, 0.17>, 	<-2.32, -0.36, 0.12>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-2.32, -0.36, 0.12>, 	<-3.18, -0.74, 0.07>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.46, 0.02, 0.17>, 	<-2.735, 0.155, -0.175>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-2.735, 0.155, -0.175>, 	<-4.01, 0.29, -0.52>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-3.18, -0.74, 0.07>, 	<-3.595, -0.225, -0.225>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-3.595, -0.225, -0.225>, 	<-4.01, 0.29, -0.52>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-1.91, 1.78, -0.61>, 	<-1.685, 0.9, -0.22>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1.685, 0.9, -0.22>, 	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-0.54, 1.74, -0.4>, 	<-1, 0.88, -0.115>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-1, 0.88, -0.115>, 	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<0.5, 0.62, -0.41>, 	<-0.48, 0.32, -0.12>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-0.48, 0.32, -0.12>, 	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-3.11, 1.22, -0.44>, 	<-2.285, 0.62, -0.135>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
cylinder {
	<-2.285, 0.62, -0.135>, 	<-1.46, 0.02, 0.17>, 0.5
	pigment { rgbt <0.119999997317791, 0.939999997615814, 0.119999997317791, 0> }
}
cylinder {
	<-0.32, 4.34, -1.72>, 	<-0.375, 3.645, -1.385>, 0.5
	pigment { rgbt <0.0500000007450581, 0.0500000007450581, 1, 0> }
}
cylinder {
	<-0.375, 3.645, -1.385>, 	<-0.43, 2.95, -1.05>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-3.67, 2.78, -1.13>, 	<-3.39, 2, -0.785>, 0.5
	pigment { rgbt <1, 0.0500000007450581, 0.0500000007450581, 0> }
}
cylinder {
	<-3.39, 2, -0.785>, 	<-3.11, 1.22, -0.44>, 0.5
	pigment { rgbt <0.400000005960464, 0.400000005960464, 0.400000005960464, 0> }
}
}
merge {
}
union {
}
union {
}
