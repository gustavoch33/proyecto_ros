#Control Remoto de Robot Móvil con ROS

Este proyecto contiene los scripts y archivos de configuración necesarios para controlar un robot móvil de forma remota utilizando ROS (Robot Operating System). Está organizado como un workspace típico de ROS y permite ejecutar nodos relacionados con la navegación, control y comunicación remota del robot.

##Estructura del proyecto
El proyecto sigue la estructura estándar de un ROS workspace (catkin_ws) y por los que dentro de la carpeta principal "src", se encontraran pequeños proyectos como si fueran proyectos individuales llamados **Nodos**.

Cada nodo contiene sus propios scripts individuales que le permiten ejecutarse por separado, pero siempre con comunicación intenerna entre ellos.
