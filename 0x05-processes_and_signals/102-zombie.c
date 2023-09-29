#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
 * main - Entry point
 *
 * Description: This program creates 5 zombie processes
 * and demonstrates how to create child processes
 * and wait for them to exit.
 *
 * Return: Always 0 on successful execution.
*/
int main(void)
{
	int i;
	pid_t child_pid;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();

		if (child_pid == 0)
		{
			printf("Zombie process created, PID: %d\n", (int)getpid());
			exit(0);
		}
		else if (child_pid < 0)
		{
			perror("Fork error");
			exit(1);
		}
	}

	sleep(10);

	printf("Parent process, PID: %d\n", (int)getpid());

	for (i = 0; i < 5; i++)
	{
		wait(NULL);
	}

	return (0);
}
