isalpha: int	ft_isalpha(int c);
	What does it do?
	-It checks character is an alphabet letter(a-z or A-Z). If yes it return true(non zero value), if not then returns 0.
	Example: printf("%d\n", isalpha('z')); // → 1
			 printf("%d\n", isalpha('5')); // → 0

isdigit: int ft_isdigit(int c);
	What does it do?
	-It checks character is a digit (0-9). If yes it return true(non zero value), if not then returns 0.
	Example: printf("%d\n", isdigit('z')); // → 0
			 printf("%d\n", isdigit('5')); // → 1

isalnum: int ft_isalnum(int c);
	What does it do?
	-It checks character is an alphabet letter(a-z or A-Z) OR a digit (0-9). If yes it return true(non zero value), if not then returns 0.
	Example: printf("%d\n", isalnum('z')); // → 1
			 printf("%d\n", isalnum('5')); // → 1
			 printf("%d\n", isalnum('&')); // → 0

isascii: int ft_isascii(int c);
	What does it do? 
	-It checks if a character code (integer) is between 0 and 127 (standard ASCII range). If yes it returns true (non zero value), if not then returns 0.
	Example: printf("%d\n", isascii('A')); // → 1
			 printf("%d\n", isascii(127)); // → 1
			 printf("%d\n", isascii(200)); // → 0

isprint: int ft_isprint(int c);
	-It checks if a character code (integer) is a printable character (including space), meaning between 32 and 126 inclusive. If yes it returns true (non zero value), if not then returns 0.
	Example: printf("%d\n", isprint('A')); // → 1
			 printf("%d\n", isprint(' ')); // → 1
			 printf("%d\n", isprint('\n')); // → 0

toupper: int ft_toupper(int c);
	-What does it do?
	-It converts a lowercase letter (a-z) to its uppercase equivalent (A-Z). If the character is not a lowercase letter, it returns the character unchanged.
	Example: printf("%c\n", toupper('a')); // → 'A'
			 printf("%c\n", toupper('Z')); // → 'Z'
			 printf("%c\n", toupper('3')); // → '3'

tolower: int ft_tolower(int c);
	What does it do?
	-It converts an uppercase letter (A-Z) to its lowercase equivalent (a-z). If the character is not an uppercase letter, it returns the character unchanged.
	Example: printf("%c\n", tolower('A')); // → 'a'
			 printf("%c\n", tolower('z')); // → 'z'
			 printf("%c\n", tolower('3')); // → '3'

atoi: int ft_atoi(const char *str);
	What does it do?
	-It converts the initial part of a string to an integer, ignoring leading whitespace and handling optional '+' or '-' signs.
	*It skips any whitespace first (like spaces, tabs).
	*If it sees a +, it just moves past it and continues reading digits.
	*If it sees a -, it marks the number as negative and then continues reading digits.
	*It only considers the first sign it encounters (it doesn’t handle things like --42 properly).
	Example: printf("%d\n", atoi("+42"));    // → 42
			 printf("%d\n", atoi("-42"));    // → -42
			 printf("%d\n", atoi("   -99")); // → -99
			 printf("%d\n", atoi("++123"));  // → 0 (undefined behavior, but usually 0)
			 printf("%d\n", atoi("-+123"));  // → 0 (undefined behavior, but usually 0)

itoa: char    *ft_itoa(int n);
	What does it do?
	-It converts an integer into a string representation (including handling negatives).
	*If the number is negative, itoa adds a '-' sign at the beginning of the resulting string.
	*Positive numbers are just converted normally (no + sign added).
	Example: printf("%s\n", ft_itoa(42));   // → "42"
			 printf("%s\n", ft_itoa(-42));  // → "-42"
			 printf("%s\n", ft_itoa(0));    // → "0"

putchar_fd: void    ft_putchar_fd(char c, int fd);
	What does it do?
	-It writes a single character to the specified file descriptor.
	*ft_putchar_fd allows you to specify which output stream (file descriptor) you want to write to, whereas putchar always writes to the standard output (stdout) by default.
	Example: ft_putchar_fd('A', 1);  // → Writes 'A' to standard output (fd = 1)
			 ft_putchar_fd('B', 2);  // → Writes 'B' to standard error (fd = 2)

putnbr_fd: void	ft_putnbr_fd(int nb, int fd);
	What does it do?
	-It writes an integer to the specified file descriptor.
	Example: ft_putnbr_fd(123, 1);   // → Writes '123' to standard output (fd = 1)
			 ft_putnbr_fd(-456, 2);  // → Writes '-456' to standard error (fd = 2)

putstr_fd: void    ft_putstr_fd(char *str, int fd);
	What does it do?
	-It writes a string to the specified file descriptor.
	Example: ft_putstr_fd("Hello", 1);  // → Writes 'Hello' to standard output (fd = 1)
			 ft_putstr_fd("Error!", 2); // → Writes 'Error!' to standard error (fd = 2)

putendl_fd: void    ft_putendl_fd(char *str, int fd);
	What does it do?
	-It writes a string followed by a newline (\n) to the specified file descriptor.
	Example: ft_putendl_fd("Hello", 1);  // → Writes 'Hello\n' to standard output (fd = 1)
			 ft_putendl_fd("Error!", 2); // → Writes 'Error!\n' to standard error (fd = 2)

memcmp: int ft_memcmp(const void *s1, const void *s2, size_t n);
	What does it do?
	-It compares the first n bytes of two memory blocks and returns:
	*0 if the memory blocks are equal,
	*A negative value if the first differing byte in s1 is less than in s2,
	*A positive value if the first differing byte in s1 is greater than in s2.
	*strcmp cmpare two strings and stops when it finds \0 where memcmp campare two blocks of memory exactly n byte even if encounters a \0 inside.
	Example: printf("%d\n", memcmp("abc", "abc", 3)); // → 0 (both are equal)
			 printf("%d\n", memcmp("abc", "abd", 3)); // → negative value (since 'c' < 'd')
			 printf("%d\n", memcmp("abc", "abb", 3)); // → positive value (since 'c' > 'b')

memset: void    *ft_memset(void *s, int c, size_t n);
	What does it do?
	-It sets a specific value to a block of memory. It fills the memory with a constant byte value for a specified number of bytes.
	Example: char str[6] = "Hello";
			 memset(str, 'x', 3);  // → Sets the first 3 bytes to 'x'
			 printf("%s\n", str);   // → "xxxlo"

memcpy: void    *ft_memcpy(void *dst, const void *src, size_t n);
	What does it do?
	-It copies n bytes from memory area src to memory area dst. The two memory areas should not overlap.
	*memcpy: Copies a specific number of bytes, regardless of the content. It does not check for null terminators.
	 strcpy: Copies characters from the source string until the null terminator (\0) is encountered.
	*memcpy can be used for copying any type of data (including binary data, structs, etc.), not just strings.
	 strcpy is designed specifically for copying null-terminated strings.
	 Example: char dst[5];
			  memcpy(dst, "abc", 4);  // → Copies "abc\0" into dst
			  printf("%s\n", dst);     // → "abc"

memmove: void    *ft_memmove(void *dst, const void *src, size_t len);
	What does it do?
	-It copies n bytes from memory area src to memory area dst. 
	*It handles overlapping memory areas correctly, unlike memcpy.
	Example: char str[6] = "abcde";
			 memmove(str + 2, str, 3); // → Moves "abc" to "cde"
			 printf("%s\n", str);      // → "ababc"

memchr:void    *ft_memchr(const void *s, int c, size_t n);
	What does it do?
	-It searches for the first occurrence of a byte c in the first n bytes of memory block s. Returns a pointer to the found byte, or NULL if not found.
	Example: char str[] = "Hello";
			 char *ptr = memchr(str, 'e', 5);  // → Points to the character 'e'
			 if (ptr) printf("%c\n", *ptr);     // → 'e'

bzero: void	ft_bzero(void *s, size_t n);
	What does it do?
	-It sets the first n bytes of memory area s to zero.
	Exmaple: char str[6] = "Hello";
			 bzero(str, 3); // → Sets the first 3 bytes to zero
			 printf("%s\n", str); // → "\0\0\0lo"

calloc: void    *ft_calloc(size_t count, size_t size);
	What does it do?
	-It allocates memory for an array of count elements of size bytes each and initializes all bytes to zero.
	*malloc: Does not initialize the memory. The contents of the allocated memory block are random (garbage values).
	 calloc: Initializes the allocated memory to zero.
	*Use malloc when you just need memory allocation and will be setting the values explicitly later.
	Use calloc when you need memory allocation and you want to ensure the memory is zero-initialized.
	Example: int *arr = (int *)calloc(3, sizeof(int)); // → Allocates an array of 3 integers, each initialized to 0
			 printf("%d\n", arr[0]); // → 0
			 printf("%d\n", arr[1]); // → 0
			 printf("%d\n", arr[2]); // → 0
			 free(arr);

strlen: size_t	ft_strlen(const char *str);
	What does it do?
	-It returns the length of a string, excluding the null terminator (\0).
	*It iterates through the string until it encounters the null terminator and counts the characters.
	Example: printf("%zu\n", ft_strlen("Hello")); // → 5
			 printf("%zu\n", ft_strlen(""));      // → 0

strlcat: size_t	ft_strlcat(char *dest, const char *src, size_t size);
	What does it do?
	-It appends characters from src to dest, and ensures the result is null-terminated and doesn’t exceed the specified size.
	*Returns the total length that would have been created if enough space were available, i.e., the initial length of dest plus the length of src.
	Example: char dest[15] = "Hello";
			 printf("%zu\n", ft_strlcat(dest, "World", 15));  // → 10 (length of "HelloWorld")

strlcpy: size_t  ft_strlcpy(char *dst, const char *src, size_t size);
	What does it do?
	-It copies the string src to dst, ensuring not to exceed size.
	*It null-terminates the copied string if there is space, but if the destination buffer is too small, no null-termination is added.
	*Returns the total length of src, not the number of characters copied.
	*strlen is used to find the length of a string, whereas strlcpy is used to copy a string to another buffer safely, making sure not to overflow the destination.
	*strlen only reads the string and does not modify anything, while strlcpy modifies the destination string (dst) by copying the content from src.
	*Use strlen when you need to know the length of a string. Use strlcpy when you need to copy a string into a destination buffer, ensuring no overflow and proper null-termination.
	Example: char dest[10];
			 printf("%zu\n", ft_strlcpy(dest, "Hello", 10)); // → 5

strncmp: int	ft_strncmp(const char *s1, const char *s2, size_t n);
	What does it do?
	-It compares up to n characters of two strings.
	*Returns 0 if the strings are identical up to n characters, a negative value if s1 is lexicographically less than s2, or a positive value if s1 is greater.
	Example: printf("%d\n", ft_strncmp("Hello", "Hello", 5));  // → 0
			 printf("%d\n", ft_strncmp("Hello", "HellO", 5));  // → 32 (case difference)

striteri: void    ft_striteri(char *s, void (*f)(unsigned int, char*));
	What does it do?
	-It applies the function f to each character of the string s, passing both the index and the character to f.
	Example: void to_uppercase(unsigned int i, char *c) 
			 {	if (*c >= 'a' && *c <= 'z') {
        		*c = *c - 'a' + 'A'; }	}
			 char str[] = "hello";
			 ft_striteri(str, to_uppercase); // Converts to "HELLO"

strmapi: char    *ft_strmapi(char const *s, char (*f)(unsigned int, char));
	What does it do?
	-It applies the function f to each character of the string s, passing its index and character.
	*The result is stored in a new string, and the function returns this new string.
	*striteri Modifies the original string in place. but strmapi does not modify the original string but creates and returns a new string.
	*No new string is created; it directly modifies the given string but strmapi allocates memory for the new string, which you must free later
	Example: char to_upper(unsigned int i, char c) {
    		 return (c >= 'a' && c <= 'z') ? c - 'a' + 'A' : c;	}
			 char *result = strmapi("hello", to_upper);
			 printf("%s\n", result);  // → "HELLO"
			 free(result);

strdup: char    *ft_strdup(const char *s1);
	What does it do?
	-It allocates memory and copies the string s1 into the newly allocated space, returning a pointer to the copied string.
	*strcpy does not allocate memory, strdup allocates memory for the new string.
	Example: char *dup = ft_strdup("Hello");
			 printf("%s\n", dup); // → "Hello"
			 free(dup);  // Remember to free the allocated memory

strchr: char	*ft_strchr(const char *s, int c);
	What does it do?
	-It returns a pointer to the first occurrence of the character c in the string s.
	*If the character is not found, it returns NULL.
	Example: printf("%s\n", ft_strchr("Hello", 'e')); // → "ello"

strrchr: char    *ft_strrchr(const char *s, int c);
	What does it do?
	-It finds the last occurrence of a character c in the string s.
	*If c is found in the string, it returns a pointer to the last occurrence of c. If c is not found, it returns NULL.
	*strchr: Searches from the beginning of the string to the end, returning the first occurrence of the character.
	 strrchr: Searches from the end of the string to the beginning, returning the last occurrence of the character.
	Example: printf("%s\n", strrchr("Hello World", 'o'));  // → "o World"
			 printf("%s\n", strrchr("Hello World", 'z'));  // → NULL

strnstr: char    *ft_strnstr(const char *big, const char *little, size_t len);
	What does it do?
	-It locates the first occurrence of the substring needle within the string haystack, but only up to len characters.
	*If the substring needle is found, it returns a pointer to the first character of the found substring.
	*If needle is not found, it returns NULL.
	*If needle is an empty string, it returns the string haystack.
	Example: printf("%s\n", strnstr("Hello World", "World", 10));  // → "World"
			 printf("%s\n", strnstr("Hello World", "Earth", 10));  // → NULL

strjoin: char    *ft_strjoin(const char *s1, const char *s2);
	What does it do?
	-It concatenates two strings s1 and s2 into a new string.
	*It allocates memory for the new string, so the caller is responsible for freeing it.
	Example: char *result = strjoin("Hello", " World");
			 printf("%s\n", result);  // → "Hello World"
			 free(result);

strtrim: char    *ft_strtrim(char const *s1, char const *set);
	What does it do?
	-It removes all characters in the string set from the beginning and the end of the string s1. It returns a new string with the trimmed result.
	*It allocates memory for the result, so the caller must free it.
	Example: char *result = strtrim("  \tHello World\t  ", " \t");
			 printf("%s\n", result);  // → "Hello World"
			 free(result);

substr: char    *ft_substr(const char *s, unsigned int start, size_t len);
	What does it do?
	-It returns a substring of s, starting from index start and up to len characters.
	*If start is greater than the length of s, it returns an empty string.
	*It allocates memory for the result, so the caller must free it.
	Example: char *result = substr("Hello World", 6, 5);
			 printf("%s\n", result);  // → "World"
			 free(result);

split: char	**ft_split(char const *s, char c);
	What does it do?
	-It splits the string s into an array of strings, using the delimiter c.
	*It returns a pointer to the array of substrings.
	*It allocates memory for the array and each individual substring, so the caller must free it.
	*The array is terminated by a NULL pointer.
	Example: char **result = split("Hello World How Are You", ' ');
			 for (int i = 0; result[i] != NULL; i++) {
    		 printf("%s\n", result[i]);	}
			 // Output:
			 // "Hello"
			 // "World"
			 // "How"
			 // "Are"
			 // "You"
			 free(result);