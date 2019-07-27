# ft-libft-asm

Implementation of some libc functions in the Assembly language.

## How to use
You'll need **nasm** for compilation.

`brew install nasm`

The Makefile by default sets the macho64 format `nasm -f macho64`.

### Library methods:
``` c
void ft_bzero(void *sl, size_t n);
char *ft_strcat(char *restrict s1, const char *restrict s2);
int ft_isalpha(int c);
int ft_isupper(int c);
int ft_islower(int c);
int ft_isdigit(int c);
int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isprint(int c);
int ft_toupper(int c);
int ft_tolower(int c);
size_t ft_strlen(const char *s);
int ft_puts(const char *s);
void *ft_memset(void *b, int c, size_t len);
void *ft_memcpy(void *restrict dst, const void *retrict, size_t n);
char *ft_strdup(const char *s1);
void ft_cat(int fd);
```

Bonus methods
``` c
char *ft_strrchr(const char *s, int c);
char *ft_strncpy(char *dst, const char *src, size_t len);
void			*ft_memalloc(size_t size);
void			*ft_memmove(void *dst, const void *src, size_t len);
void			ft_memdel(void **ap);
```

## Testing
The [42FileChecker](https://github.com/jgigault/42FileChecker) supports the libft-asm library.
Locally you can also `make test` and run `sh ./test_libfts`.

### Debugging
`brew install gdb`
