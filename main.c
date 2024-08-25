#include "libasm.a"

int main()
{
    char read_buffer[100];
    char dest_buffer[100];

    ssize_t res1 = ft_write(1, "Hi, This is an Assembly write function!\n", 40);
    ssize_t res2 = ft_write(1, "", 1);
    printf("%ld\n", res1);
    printf("%ld\n", res2);

    printf("%ld\n", ft_strlen("Hi, This is an Assembly write function!\n"));

    printf("ft_read: \n");

    int retunVal = ft_read(3, read_buffer, 100);
    printf("You entered: %s%d\n", read_buffer, retunVal);

    ft_strcpy(dest_buffer, "Str copy test case");
    printf("ft_strcpy(Str copy test case): %s\n", dest_buffer);

    printf("strcmp area\n\n");
    int cmpRes = ft_strcmp("123", "123");
    printf("Str cmp result is : %d\n", cmpRes);
    int cmpRes2 = ft_strcmp("123f", "123g");
    printf("Str cmp result is : %d\n", cmpRes2);
    int cmpRes3 = ft_strcmp("123h", "123g");
    printf("Str cmp result is : %d\n", cmpRes3);

    char* newStr = ft_strdup("Str dup test case");
    printf("Str dup result is : %s\n", newStr);

    

    return 0;
}
