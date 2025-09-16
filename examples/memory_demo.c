/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memory_demo.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: student <student@1337.ma>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/01 00:00:00 by student           #+#    #+#             */
/*   Updated: 2024/01/01 00:00:00 by student          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	main(void)
{
	char	*str;
	int		*numbers;
	int		i;

	printf("Memory allocation demonstration\n");
	
	// Allocate memory for a string
	str = malloc(50 * sizeof(char));
	if (!str)
		return (1);
	
	strcpy(str, "Hello from allocated memory!");
	printf("String: %s\n", str);
	
	// Allocate memory for integers
	numbers = malloc(5 * sizeof(int));
	if (!numbers)
	{
		free(str);
		return (1);
	}
	
	// Initialize array
	i = 0;
	while (i < 5)
	{
		numbers[i] = (i + 1) * 10;
		i++;
	}
	
	// Print array
	printf("Numbers: ");
	i = 0;
	while (i < 5)
	{
		printf("%d ", numbers[i]);
		i++;
	}
	printf("\n");
	
	// Free allocated memory
	free(str);
	free(numbers);
	
	printf("Memory freed successfully!\n");
	printf("Run with 'valgrind ./memory_demo' to check for leaks\n");
	
	return (0);
}