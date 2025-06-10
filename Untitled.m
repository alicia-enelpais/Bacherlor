%% plotting the teacup
% Load the first 4x4 matrix of 16 points for the first patch.
points=load('teacupnodes.txt');
teacuprectangles=load('teacuprectangles.txt');
hold on
grid
for i=1:26
trial=points(teacuprectangles(i,:),:); % list of points. each row ...
represents a point.
trial=trial';
trial=reshape(trial,[],[4]) ;
for v=0:0.05:1
x=[];
for u=0:0.05:1
x=[x,castelpatch(trial,u,v)];
end
plot3(x(1,:),x(2,:),x(3,:),'b.')
end
end
%% plotting the teaspoon
% Load the first 4x4 matrix of 16 points for the first patch.
points=load('teaspoonnodes.txt');
teaspoonrectangles=load('teaspoonrectangles.txt');
hold on
grid
for i=1:16
trial=points(teaspoonrectangles(i,:),:); % list of points. each row ...
represents a point.
trial=trial';
trial=reshape(trial,[],[4]) ;
for v=0:0.05:1
x=[];
for u=0:0.05:1
    x=[x,castelpatch(trial,u,v)];
end
plot3(x(1,:),x(2,:),x(3,:),'b.')
end
end