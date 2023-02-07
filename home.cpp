#include <stdio.h>
#include <stdlib.h>


//#include <GL/glut.h> //uncoment for linux support

#include <GLFW/glfw3.h>

#include "GL/gl.h" //uncoment for windows support

int mode = 0;

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_E && action == GLFW_PRESS){
	mode+=1;
	printf("Mode: %i\n", mode);
    
	if (mode > 3){
	mode = 0;
}
}
        
}

int main(void)
{
    GLFWwindow* window;
    float angle = 0;
    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Home", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }
	glfwSetKeyCallback(window, key_callback);
    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    printf("GL_VERSION  : %s\n", glGetString(GL_VERSION) );
    printf("GL_RENDERER : %s\n", glGetString(GL_RENDERER) );
    //set color
    glClearColor(0.0f, 0.0f, 0.7f, 0.0f);
    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);
	
	glPushMatrix();
	
    switch (mode) {
    case 1: 	glRotatef(angle, 0.0f, 0.0f, 1.0f); break;
    case 2: 	glRotatef(angle, 0.0f, 1.0f, 0.0f); break;
    case 3:     glRotatef(angle, 1.0f, 0.0f, 0.0f); break;
    }

	glLineWidth(5);

	glBegin(GL_TRIANGLE_FAN);
	glColor3f(1.0f, 0.0f, 0.0f); 

	glVertex2f(0.4f, 0.5f);	
	glVertex2f(0.3f, -0.5f);


	glVertex2f(-0.3f, -0.5f);	

	glVertex2f(-0.4f, 0.5f);	

	//glVertex2f(0.4f, 0.5f);
	glColor3f(0.0f, 0.5f, 0.6f); 
	
	glVertex2f(0.1f, 0.8f);
	glEnd();

	
	glPopMatrix();

	angle += 0.5f;
        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}
