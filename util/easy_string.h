#ifndef EASY_STRING_H_
#define EASY_STRING_H_

/**
 * inet的通用函数
 */
#include "easy_define.h"
#include "easy_pool.h"

EASY_CPP_START

extern char *easy_strncpy(char *dst, const char *src, size_t n);
extern char *easy_string_tohex(const char *str, int n, char *result, int size);
extern char *easy_string_toupper(char *str);
extern char *easy_string_tolower(char *str);

EASY_CPP_END

#endif
