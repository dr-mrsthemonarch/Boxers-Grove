# Boxers Grove
A Modelica Library for simulation of Cubli style 3d Pendulums


![Image](https://github.com/dr-mrsthemonarch/Boxers-Grove/blob/main/CubeSubSystems/simulation.png)



This is my current thesis project, the modelica simulation of cubli like 3D pendulums. I initially built this as a way to prove the simplicitiy of the system.

That it indeed can be stabilized without resorting to overly complicated analysis and control. The cubli itself (according to the papers) requires 
adaptive algorithims, advanced nonlinear control and other fancy things to get it to work. Of course when viewing the system it is incredible work, which inspired this repo. It is as mentioend far too complicated.

Being that the 3D pendulum when strictly defined a fully rotationally symmetric system, one can also assume that the inertia tensor of the system, (when following the main axis) will lie exactly on geometric center (GOM) [taken from the COM]. Due to this symmetrie, when building a cubli like body, following the same basic form, 3 motors on face center, one then quite easily assume each heavily coupled inertia component of the inertia tensor, are infact, not coupled and that each can be indepentantly linearly controlled. 

Taking this assumption, that means each GOM 'wall' can be indepentantly controlled, the 3DOF system is practically pulled apart into 3, 1 DOF systems. At this point, highly aggresive LQR controllers can be developed to keep the system strictly on the instable equalibrium, allowing for 3 fully independant linear controllers to keep the system up right, and also prevent attitude of the body. 

Or something like that. Either way, it works in the physical modelica simulation and a real prototype. 

This repo is mostly a way to give access others to a nonlinear system/testbed to try their own algorithims and ideas on, without having to actually spend money on building a real world prototype, although I would highly recommend it, this is a great 'starter' pack, as I do my own research on this, I intend to update this regularly and am welcome to others inputs/improvements. 
