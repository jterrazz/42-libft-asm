> Hey there, app enthusiasts! 👋 Ready to dive into the world of game-changing apps? At [jterrazz.com](https://jterrazz.com), I'm all about crafting useful applications and sharing the journey! Discover coding insights, self-improvement hacks, and sneak peeks of my latest projects (psst... my next app is all about leveling up in life! 🚀). Come along for the ride - you might just find the spark for your next big idea! 💡💻

# ft-libft-asm

>  Basic functions written in Assembly using the x86 Intel syntax.

[To better understand this projects, access my medium article here](https://medium.com/a-42-journey/a-quick-guide-to-code-your-first-assembly-functions-43c2032ebfda)

## Getting started

### Requirements

- nasm: `brew install nasm`

### Installation

```bash
make # defaults to -f macho64
```

### Testing

The [42FileChecker](https://github.com/jgigault/42FileChecker) supports the libft-asm library. Also use `make test` and run `sh ./test_libfts`.

### Debugging

- gdb: `brew install gdb`

## Methods

```c
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

char *ft_strrchr(const char *s, int c);
char *ft_strncpy(char *dst, const char *src, size_t len);
void *ft_memalloc(size_t size);
void *ft_memmove(void *dst, const void *src, size_t len);
void ft_memdel(void **ap);
```
