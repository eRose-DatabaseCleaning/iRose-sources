


































#pragma once
















































































































#pragma warning(disable:4514)

#pragma warning(disable:4103)


#pragma warning(push)

#pragma warning(disable:4001)
#pragma warning(disable:4201)
#pragma warning(disable:4214)

















#pragma once




















 














































    































































































































































































































#pragma once







extern "C" {

































































































































































































































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    




































































































































































































































    
    











}




































































































#pragma pack(push,8)
















#pragma once

















#pragma pack(push,8)



extern "C" {















typedef __w64 unsigned int   uintptr_t;








typedef char *  va_list;





















































































}



#pragma pack(pop)






extern "C" {





































































































 


  
 

























































































































































 
  
 







 
  
  
 







 
  
   
  


 
























typedef __w64 unsigned int   size_t;






typedef size_t rsize_t;








typedef __w64 int            intptr_t;

















typedef __w64 int            ptrdiff_t;










typedef unsigned short wint_t;
typedef unsigned short wctype_t;



























__declspec(deprecated("This name was supported during some Whidbey pre-releases. Instead, use the standard name errno_t.")) typedef int errcode;




typedef int errno_t;



typedef __w64 long __time32_t;   





typedef __int64 __time64_t;     








typedef __time64_t time_t;      














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct * pthreadlocinfo;
typedef struct threadmbcinfostruct * pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct
{
    pthreadlocinfo locinfo;
    pthreadmbcinfo mbcinfo;
} _locale_tstruct, *_locale_t;


typedef struct tagLC_ID {
        unsigned short wLanguage;
        unsigned short wCountry;
        unsigned short wCodePage;
} LC_ID, *LPLC_ID;




typedef struct threadlocaleinfostruct {
        int refcount;
        unsigned int lc_codepage;
        unsigned int lc_collate_cp;
        unsigned long lc_handle[6]; 
        LC_ID lc_id[6];
        struct {
            char *locale;
            wchar_t *wlocale;
            int *refcount;
            int *wrefcount;
        } lc_category[6];
        int lc_clike;
        int mb_cur_max;
        int * lconv_intl_refcount;
        int * lconv_num_refcount;
        int * lconv_mon_refcount;
        struct lconv * lconv;
        int * ctype1_refcount;
        unsigned short * ctype1;
        const unsigned short * pctype;
        const unsigned char * pclmap;
        const unsigned char * pcumap;
        struct __lc_time_data * lc_time_curr;
} threadlocinfo;




}
































#pragma pack(pop)











#pragma pack(push,8)



extern "C" {





typedef enum _EXCEPTION_DISPOSITION {
    ExceptionContinueExecution,
    ExceptionContinueSearch,
    ExceptionNestedException,
    ExceptionCollidedUnwind
} EXCEPTION_DISPOSITION;











struct _EXCEPTION_RECORD;
struct _CONTEXT;

EXCEPTION_DISPOSITION __cdecl _except_handler (
         struct _EXCEPTION_RECORD *_ExceptionRecord,
         void * _EstablisherFrame,
         struct _CONTEXT *_ContextRecord,
         void * _DispatcherContext
    );













































unsigned long __cdecl _exception_code(void);
void *        __cdecl _exception_info(void);
int           __cdecl _abnormal_termination(void);















}



#pragma pack(pop)




















#pragma once






















































extern "C" {












typedef unsigned long ULONG;
typedef ULONG *PULONG;
typedef unsigned short USHORT;
typedef USHORT *PUSHORT;
typedef unsigned char UCHAR;
typedef UCHAR *PUCHAR;
typedef char *PSZ;

































































































typedef unsigned long       DWORD;
typedef int                 BOOL;
typedef unsigned char       BYTE;
typedef unsigned short      WORD;
typedef float               FLOAT;
typedef FLOAT               *PFLOAT;
typedef BOOL            *PBOOL;
typedef BOOL             *LPBOOL;
typedef BYTE            *PBYTE;
typedef BYTE             *LPBYTE;
typedef int             *PINT;
typedef int              *LPINT;
typedef WORD            *PWORD;
typedef WORD             *LPWORD;
typedef long             *LPLONG;
typedef DWORD           *PDWORD;
typedef DWORD            *LPDWORD;
typedef void             *LPVOID;
typedef const void       *LPCVOID;

typedef int                 INT;
typedef unsigned int        UINT;
typedef unsigned int        *PUINT;
























extern "C" {

















#pragma once




















 































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {


















 const unsigned short * __cdecl __pctype_func(void);

 extern const unsigned short *_pctype;










 extern const unsigned short _wctype[];


 const wctype_t * __cdecl __pwctype_func(void);

 extern const wctype_t *_pwctype;


















                                













  int __cdecl _isctype(     int _C,      int _Type);
  int __cdecl _isctype_l(     int _C,      int _Type,        _locale_t _Locale);
   int __cdecl isalpha(     int _C);
  int __cdecl _isalpha_l(     int _C,        _locale_t _Locale);
   int __cdecl isupper(     int _C);
  int __cdecl _isupper_l(     int _C,        _locale_t _Locale);
   int __cdecl islower(     int _C);
  int __cdecl _islower_l(     int _C,        _locale_t _Locale);
   int __cdecl isdigit(     int _C);
  int __cdecl _isdigit_l(     int _C,        _locale_t _Locale);
  int __cdecl isxdigit(     int _C);
  int __cdecl _isxdigit_l(     int _C,        _locale_t _Locale);
   int __cdecl isspace(     int _C);
  int __cdecl _isspace_l(     int _C,        _locale_t _Locale);
  int __cdecl ispunct(     int _C);
  int __cdecl _ispunct_l(     int _C,        _locale_t _Locale);
   int __cdecl isalnum(     int _C);
  int __cdecl _isalnum_l(     int _C,        _locale_t _Locale);
  int __cdecl isprint(     int _C);
  int __cdecl _isprint_l(     int _C,        _locale_t _Locale);
  int __cdecl isgraph(     int _C);
  int __cdecl _isgraph_l(     int _C,        _locale_t _Locale);
  int __cdecl iscntrl(     int _C);
  int __cdecl _iscntrl_l(     int _C,        _locale_t _Locale);
   int __cdecl toupper(     int _C);
   int __cdecl tolower(     int _C);
   int __cdecl _tolower(     int _C);
  int __cdecl _tolower_l(     int _C,        _locale_t _Locale);
   int __cdecl _toupper(     int _C);
  int __cdecl _toupper_l(     int _C,        _locale_t _Locale);
  int __cdecl __isascii(     int _C);
  int __cdecl __toascii(     int _C);
  int __cdecl __iscsymf(     int _C);
  int __cdecl __iscsym(     int _C);









  int __cdecl iswalpha(     wint_t _C);
  int __cdecl _iswalpha_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswupper(     wint_t _C);
  int __cdecl _iswupper_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswlower(     wint_t _C);
  int __cdecl _iswlower_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswdigit(     wint_t _C);
  int __cdecl _iswdigit_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswxdigit(     wint_t _C);
  int __cdecl _iswxdigit_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswspace(     wint_t _C);
  int __cdecl _iswspace_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswpunct(     wint_t _C);
  int __cdecl _iswpunct_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswalnum(     wint_t _C);
  int __cdecl _iswalnum_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswprint(     wint_t _C);
  int __cdecl _iswprint_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswgraph(     wint_t _C);
  int __cdecl _iswgraph_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswcntrl(     wint_t _C);
  int __cdecl _iswcntrl_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl iswascii(     wint_t _C);
  int __cdecl isleadbyte(     int _C);
  int __cdecl _isleadbyte_l(     int _C,        _locale_t _Locale);

  wint_t __cdecl towupper(     wint_t _C);
  wint_t __cdecl _towupper_l(     wint_t _C,        _locale_t _Locale);
  wint_t __cdecl towlower(     wint_t _C);
  wint_t __cdecl _towlower_l(     wint_t _C,        _locale_t _Locale); 
  int __cdecl iswctype(     wint_t _C,      wctype_t _Type);
  int __cdecl _iswctype_l(     wint_t _C,      wctype_t _Type,        _locale_t _Locale);

  int __cdecl __iswcsymf(     wint_t _C);
  int __cdecl _iswcsymf_l(     wint_t _C,        _locale_t _Locale);
  int __cdecl __iswcsym(     wint_t _C);
  int __cdecl _iswcsym_l(     wint_t _C,        _locale_t _Locale);

__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "iswctype" " instead. See online help for details."))  int __cdecl is_wctype(     wint_t _C,      wctype_t _Type);





















 extern int __mb_cur_max;



 int __cdecl ___mb_cur_max_func(void);
 int __cdecl ___mb_cur_max_l_func(_locale_t);


















































































































































































}





































































































































































































































#pragma once








extern "C" {























































































































































































































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
















































































































































































}


















































































































typedef unsigned long POINTER_64_INT;












#pragma once



extern "C" {


typedef signed char         INT8, *PINT8;
typedef signed short        INT16, *PINT16;
typedef signed int          INT32, *PINT32;
typedef signed __int64      INT64, *PINT64;
typedef unsigned char       UINT8, *PUINT8;
typedef unsigned short      UINT16, *PUINT16;
typedef unsigned int        UINT32, *PUINT32;
typedef unsigned __int64    UINT64, *PUINT64;





typedef signed int LONG32, *PLONG32;





typedef unsigned int ULONG32, *PULONG32;
typedef unsigned int DWORD32, *PDWORD32;






































    typedef __w64 int INT_PTR, *PINT_PTR;
    typedef __w64 unsigned int UINT_PTR, *PUINT_PTR;

    typedef __w64 long LONG_PTR, *PLONG_PTR;
    typedef __w64 unsigned long ULONG_PTR, *PULONG_PTR;

    
































































































































































































typedef unsigned short UHALF_PTR, *PUHALF_PTR;
typedef short HALF_PTR, *PHALF_PTR;
typedef __w64 long SHANDLE_PTR;
typedef __w64 unsigned long HANDLE_PTR;

















__inline
void * __ptr64
PtrToPtr64(
    const void *p
    )
{
    return((void * __ptr64) (unsigned __int64) (ULONG_PTR)p );
}

__inline
void *
Ptr64ToPtr(
    const void * __ptr64 p
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) p);
}

__inline
void * __ptr64
HandleToHandle64(
    const void *h
    )
{
    return((void * __ptr64) h );
}

__inline
void *
Handle64ToHandle(
    const void * __ptr64 h
    )
{
    return((void *) (ULONG_PTR) (unsigned __int64) h );
}































typedef ULONG_PTR SIZE_T, *PSIZE_T;
typedef LONG_PTR SSIZE_T, *PSSIZE_T;





typedef ULONG_PTR DWORD_PTR, *PDWORD_PTR;





typedef __int64 LONG64, *PLONG64;






typedef unsigned __int64 ULONG64, *PULONG64;
typedef unsigned __int64 DWORD64, *PDWORD64;





typedef ULONG_PTR KAFFINITY;
typedef KAFFINITY *PKAFFINITY;


}





























































































































typedef void *PVOID;
typedef void * __ptr64 PVOID64;

































typedef char CHAR;
typedef short SHORT;
typedef long LONG;







typedef wchar_t WCHAR;    





typedef WCHAR *PWCHAR, *LPWCH, *PWCH;
typedef const WCHAR *LPCWCH, *PCWCH;
typedef  WCHAR *NWPSTR, *LPWSTR, *PWSTR;
typedef  PWSTR *PZPWSTR;
typedef  const PWSTR *PCZPWSTR;
typedef  WCHAR  *LPUWSTR, *PUWSTR;
typedef  const WCHAR *LPCWSTR, *PCWSTR;
typedef  PCWSTR *PZPCWSTR;
typedef  const WCHAR  *LPCUWSTR, *PCUWSTR;




typedef CHAR *PCHAR, *LPCH, *PCH;
typedef const CHAR *LPCCH, *PCCH;

typedef  CHAR *NPSTR, *LPSTR, *PSTR;
typedef  PSTR *PZPSTR;
typedef  const PSTR *PCZPSTR;
typedef  const CHAR *LPCSTR, *PCSTR;
typedef  PCSTR *PZPCSTR;























typedef char TCHAR, *PTCHAR;
typedef unsigned char TBYTE , *PTBYTE ;



typedef LPSTR LPTCH, PTCH;
typedef LPSTR PTSTR, LPTSTR, PUTSTR, LPUTSTR;
typedef LPCSTR PCTSTR, LPCTSTR, PCUTSTR, LPCUTSTR;






typedef SHORT *PSHORT;  
typedef LONG *PLONG;    


typedef void *HANDLE;





typedef HANDLE *PHANDLE;





typedef BYTE   FCHAR;
typedef WORD   FSHORT;
typedef DWORD  FLONG;





typedef LONG HRESULT;




    











































typedef char CCHAR;          
typedef DWORD LCID;         
typedef PDWORD PLCID;       
typedef WORD   LANGID;      























typedef struct _FLOAT128 {
    __int64 LowPart;
    __int64 HighPart;
} FLOAT128;

typedef FLOAT128 *PFLOAT128;









typedef __int64 LONGLONG;
typedef unsigned __int64 ULONGLONG;
















typedef LONGLONG *PLONGLONG;
typedef ULONGLONG *PULONGLONG;



typedef LONGLONG USN;




typedef union _LARGE_INTEGER {
    struct {
        DWORD LowPart;
        LONG HighPart;
    };
    struct {
        DWORD LowPart;
        LONG HighPart;
    } u;

    LONGLONG QuadPart;
} LARGE_INTEGER;

typedef LARGE_INTEGER *PLARGE_INTEGER;




typedef union _ULARGE_INTEGER {
    struct {
        DWORD LowPart;
        DWORD HighPart;
    };
    struct {
        DWORD LowPart;
        DWORD HighPart;
    } u;

    ULONGLONG QuadPart;
} ULARGE_INTEGER;

typedef ULARGE_INTEGER *PULARGE_INTEGER;








typedef struct _LUID {
    DWORD LowPart;
    LONG HighPart;
} LUID, *PLUID;


typedef ULONGLONG  DWORDLONG;
typedef DWORDLONG *PDWORDLONG;


































ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );

LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    );

ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    );


#pragma warning(push)

#pragma warning(disable:4035 4793)               

__inline ULONGLONG
__stdcall
Int64ShllMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shld    edx, eax, cl
        shl     eax, cl
    }
}

__inline LONGLONG
__stdcall
Int64ShraMod32 (
    LONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        sar     edx, cl
    }
}

__inline ULONGLONG
__stdcall
Int64ShrlMod32 (
    ULONGLONG Value,
    DWORD ShiftCount
    )
{
    __asm    {
        mov     ecx, ShiftCount
        mov     eax, dword ptr [Value]
        mov     edx, dword ptr [Value+4]
        shrd    eax, edx, cl
        shr     edx, cl
    }
}


#pragma warning(pop)












































extern "C" {



















































unsigned int
__cdecl
_rotl (
     unsigned int Value,
     int Shift
    );

unsigned __int64
__cdecl
_rotl64 (
     unsigned __int64 Value,
     int Shift
    );

unsigned int
__cdecl
_rotr (
     unsigned int Value,
     int Shift
    );

unsigned __int64
__cdecl
_rotr64 (
     unsigned __int64 Value,
     int Shift
    );

#pragma intrinsic(_rotl)
#pragma intrinsic(_rotl64)
#pragma intrinsic(_rotr)
#pragma intrinsic(_rotr64)




}






typedef BYTE  BOOLEAN;           
typedef BOOLEAN *PBOOLEAN;       





typedef struct _LIST_ENTRY {
   struct _LIST_ENTRY *Flink;
   struct _LIST_ENTRY *Blink;
} LIST_ENTRY, *PLIST_ENTRY, * PRLIST_ENTRY;






typedef struct _SINGLE_LIST_ENTRY {
    struct _SINGLE_LIST_ENTRY *Next;
} SINGLE_LIST_ENTRY, *PSINGLE_LIST_ENTRY;





typedef struct LIST_ENTRY32 {
    DWORD Flink;
    DWORD Blink;
} LIST_ENTRY32;
typedef LIST_ENTRY32 *PLIST_ENTRY32;

typedef struct LIST_ENTRY64 {
    ULONGLONG Flink;
    ULONGLONG Blink;
} LIST_ENTRY64;
typedef LIST_ENTRY64 *PLIST_ENTRY64;
























typedef struct _GUID {
    unsigned long  Data1;
    unsigned short Data2;
    unsigned short Data3;
    unsigned char  Data4[ 8 ];
} GUID;















































typedef GUID *LPGUID;




typedef const GUID *LPCGUID;





typedef GUID IID;
typedef IID *LPIID;


typedef GUID CLSID;
typedef CLSID *LPCLSID;


typedef GUID FMTID;
typedef FMTID *LPFMTID;


































































#pragma once




















 































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































extern "C" {






















 void *  __cdecl _memccpy(        void * _Dst,      const void * _Src,      int _Val,      size_t _MaxCount);
  const void *  __cdecl memchr(          const void * _Buf ,      int _Val,      size_t _MaxCount);
  int     __cdecl _memicmp(         const void * _Buf1,          const void * _Buf2,      size_t _Size);
  int     __cdecl _memicmp_l(         const void * _Buf1,          const void * _Buf2,      size_t _Size,        _locale_t _Locale);
         int     __cdecl memcmp(         const void * _Buf1,          const void * _Buf2,      size_t _Size);
         void *  __cdecl memcpy(         void * _Dst,          const void * _Src,      size_t _Size);

 errno_t  __cdecl memcpy_s(         void * _Dst,      rsize_t _DstSize,          const void * _Src,      rsize_t _MaxCount);

        void *  __cdecl memset(         void * _Dst,      int _Val,      size_t _Size);



__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memccpy" ". See online help for details."))  void * __cdecl memccpy(       void * _Dst,          const void * _Src,      int _Val,      size_t _Size);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memicmp" ". See online help for details."))   int __cdecl memicmp(         const void * _Buf1,          const void * _Buf2,      size_t _Size);




  errno_t __cdecl _strset_s(           char * _Dst,      size_t _DstSize,      int _Value);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s(           char (&_Dest)[_Size],      int _Value) { return _strset_s(_Dest, _Size, _Value); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strset( char *_Dest,  int _Value);

  errno_t __cdecl strcpy_s(       char * _Dst,      rsize_t _DstSize,        const char * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s(       char (&_Dest)[_Size],        const char * _Source) { return strcpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcpy( char *_Dest,  const char * _Source);

  errno_t __cdecl strcat_s(           char * _Dst,      rsize_t _DstSize,        const char * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s(           char (&_Dest)[_Size],        const char * _Source) { return strcat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcat( char *_Dest,  const char * _Source);
         int     __cdecl strcmp(       const char * _Str1,        const char * _Str2);
         size_t  __cdecl strlen(       const char * _Str);
  size_t  __cdecl strnlen(       const char * _Str,      size_t _MaxCount);

static __inline  size_t  __cdecl strnlen_s(        const char * _Str,      size_t _MaxCount)
{
    return strnlen(_Str, _MaxCount);
}


  errno_t __cdecl memmove_s(         void * _Dst,      rsize_t _DstSize,          const void * _Src,      rsize_t _MaxCount);





  void *  __cdecl memmove(         void * _Dst,          const void * _Src,      size_t _Size);







  char *  __cdecl _strdup(         const char * _Src);





  const char *  __cdecl strchr(       const char * _Str,      int _Val);
  int     __cdecl _stricmp(        const char * _Str1,         const char * _Str2);
  int     __cdecl _strcmpi(        const char * _Str1,         const char * _Str2);
  int     __cdecl _stricmp_l(        const char * _Str1,         const char * _Str2,        _locale_t _Locale);
  int     __cdecl strcoll(        const char * _Str1,         const  char * _Str2);
  int     __cdecl _strcoll_l(        const char * _Str1,         const char * _Str2,        _locale_t _Locale);
  int     __cdecl _stricoll(        const char * _Str1,         const char * _Str2);
  int     __cdecl _stricoll_l(        const char * _Str1,         const char * _Str2,        _locale_t _Locale);
  int     __cdecl _strncoll  (       const char * _Str1,        const char * _Str2,      size_t _MaxCount);
  int     __cdecl _strncoll_l(       const char * _Str1,        const char * _Str2,      size_t _MaxCount,        _locale_t _Locale);
  int     __cdecl _strnicoll (       const char * _Str1,        const char * _Str2,      size_t _MaxCount);
  int     __cdecl _strnicoll_l(       const char * _Str1,        const char * _Str2,      size_t _MaxCount,        _locale_t _Locale);
  size_t  __cdecl strcspn(        const char * _Str,         const char * _Control);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   char *  __cdecl _strerror(         const char * _ErrMsg);
  errno_t __cdecl _strerror_s(       char * _Buf,      size_t _SizeInBytes,          const char * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(     char (&_Buffer)[_Size],          const char * _ErrorMessage) { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   char *  __cdecl strerror(     int);

  errno_t __cdecl strerror_s(       char * _Buf,      size_t _SizeInBytes,      int _ErrNum);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(     char (&_Buffer)[_Size],      int _ErrorMessage) { return strerror_s(_Buffer, _Size, _ErrorMessage); } }
  errno_t __cdecl _strlwr_s(           char * _Str,      size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s(           char (&_String)[_Size]) { return _strlwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strlwr( char *_String);
  errno_t __cdecl _strlwr_s_l(           char * _Str,      size_t _Size,        _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l(           char (&_String)[_Size],        _locale_t _Locale) { return _strlwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strlwr_l(         char *_String,        _locale_t _Locale);

  errno_t __cdecl strncat_s(           char * _Dst,      rsize_t _DstSize,        const char * _Src,      rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s(           char (&_Dest)[_Size],        const char * _Source,      size_t _Count) { return strncat_s(_Dest, _Size, _Source, _Count); } }
#pragma warning(push)
#pragma warning(disable:6059)

__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strncat(           char *_Dest,        const char * _Source,      size_t _Count);
#pragma warning(pop)



  int     __cdecl strncmp(       const char * _Str1,        const char * _Str2,      size_t _MaxCount);

  int     __cdecl _strnicmp(       const char * _Str1,        const char * _Str2,      size_t _MaxCount);
  int     __cdecl _strnicmp_l(       const char * _Str1,        const char * _Str2,      size_t _MaxCount,        _locale_t _Locale);

  errno_t __cdecl strncpy_s(       char * _Dst,      rsize_t _DstSize,          const char * _Src,      rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(     char (&_Dest)[_Size],        const char * _Source,      size_t _Count) { return strncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strncpy(     char *_Dest,        const char * _Source,      size_t _Count);
  errno_t __cdecl _strnset_s(           char * _Str,      size_t _Size,      int _Val,      size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s(           char (&_Dest)[_Size],      int _Val,      size_t _Count) { return _strnset_s(_Dest, _Size, _Val, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strnset(           char *_Dest,      int _Val,      size_t _Count);
  const char *  __cdecl strpbrk(       const char * _Str,        const char * _Control);
  const char *  __cdecl strrchr(       const char * _Str,      int _Ch);
 char *  __cdecl _strrev(         char * _Str);
  size_t  __cdecl strspn(       const char * _Str,        const char * _Control);
  const char *  __cdecl strstr(       const char * _Str,        const char * _SubStr);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   char *  __cdecl strtok(           char * _Str,        const char * _Delim);

  char *  __cdecl strtok_s(           char * _Str,        const char * _Delim,                        char ** _Context);

  errno_t __cdecl _strupr_s(           char * _Str,      size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s(           char (&_String)[_Size]) { return _strupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strupr( char *_String);
  errno_t __cdecl _strupr_s_l(           char * _Str,      size_t _Size, _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l(           char (&_String)[_Size], _locale_t _Locale) { return _strupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strupr_l(         char *_String,        _locale_t _Locale);
  size_t  __cdecl strxfrm (         char * _Dst,        const char * _Src,      size_t _MaxCount);
  size_t  __cdecl _strxfrm_l(         char * _Dst,        const char * _Src,      size_t _MaxCount,        _locale_t _Locale);


extern "C++" {


inline  char * __cdecl strchr(       char * _Str,      int _Ch)
	{ return (char*)strchr((const char*)_Str, _Ch); }
inline  char * __cdecl strpbrk(       char * _Str,        const char * _Control)
	{ return (char*)strpbrk((const char*)_Str, _Control); }
inline  char * __cdecl strrchr(       char * _Str,      int _Ch)
	{ return (char*)strrchr((const char*)_Str, _Ch); }
inline  char * __cdecl strstr(       char * _Str,        const char * _SubStr)
	{ return (char*)strstr((const char*)_Str, _SubStr); }



inline  void * __cdecl memchr(         void * _Pv,      int _C,      size_t _N)
	{ return (void*)memchr((const void*)_Pv, _C, _N); }

}









__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strdup" ". See online help for details."))   char * __cdecl strdup(         const char * _Src);






__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strcmpi" ". See online help for details."))   int __cdecl strcmpi(       const char * _Str1,        const char * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_stricmp" ". See online help for details."))   int __cdecl stricmp(       const char * _Str1,        const char * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strlwr" ". See online help for details."))  char * __cdecl strlwr(         char * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnicmp" ". See online help for details."))   int __cdecl strnicmp(       const char * _Str1,        const char * _Str,      size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnset" ". See online help for details."))  char * __cdecl strnset(           char * _Str,      int _Val,      size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strrev" ". See online help for details."))  char * __cdecl strrev(         char * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strset" ". See online help for details."))         char * __cdecl strset(         char * _Str,      int _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strupr" ". See online help for details."))  char * __cdecl strupr(         char * _Str);













  wchar_t * __cdecl _wcsdup(       const wchar_t * _Str);






  errno_t __cdecl wcscat_s(           wchar_t * _Dst,      rsize_t _DstSize, const wchar_t * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s(           wchar_t (&_Dest)[_Size],        const wchar_t * _Source) { return wcscat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcscat( wchar_t *_Dest,  const wchar_t * _Source);
  const wchar_t * __cdecl wcschr(       const wchar_t * _Str, wchar_t _Ch);
  int __cdecl wcscmp(       const wchar_t * _Str1,        const wchar_t * _Str2);

  errno_t __cdecl wcscpy_s(       wchar_t * _Dst,      rsize_t _DstSize,        const wchar_t * _Src);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(     wchar_t (&_Dest)[_Size],        const wchar_t * _Source) { return wcscpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcscpy( wchar_t *_Dest,  const wchar_t * _Source);
  size_t __cdecl wcscspn(       const wchar_t * _Str,        const wchar_t * _Control);
  size_t __cdecl wcslen(       const wchar_t * _Str);
  size_t __cdecl wcsnlen(       const wchar_t * _Src,      size_t _MaxCount);

static __inline  size_t __cdecl wcsnlen_s(       const wchar_t * _Src,      size_t _MaxCount)
{
    return wcsnlen(_Src, _MaxCount);
}


  errno_t __cdecl wcsncat_s(           wchar_t * _Dst,      rsize_t _DstSize,        const wchar_t * _Src,      rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s(           wchar_t (&_Dest)[_Size],        const wchar_t * _Source,      size_t _Count) { return wcsncat_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcsncat(     wchar_t *_Dest,        const wchar_t * _Source,      size_t _Count);
  int __cdecl wcsncmp(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount);

  errno_t __cdecl wcsncpy_s(       wchar_t * _Dst,      rsize_t _DstSize,        const wchar_t * _Src,      rsize_t _MaxCount);

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(     wchar_t (&_Dest)[_Size],        const wchar_t * _Source,      size_t _Count) { return wcsncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl wcsncpy(     wchar_t *_Dest,        const wchar_t * _Source,      size_t _Count);
  const wchar_t * __cdecl wcspbrk(       const wchar_t * _Str,        const wchar_t * _Control);
  const wchar_t * __cdecl wcsrchr(       const wchar_t * _Str,      wchar_t _Ch);
  size_t __cdecl wcsspn(       const wchar_t * _Str,        const wchar_t * _Control);
  const wchar_t * __cdecl wcsstr(       const wchar_t * _Str,        const wchar_t * _SubStr);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   wchar_t * __cdecl wcstok(           wchar_t * _Str,        const wchar_t * _Delim);
  wchar_t * __cdecl wcstok_s(           wchar_t * _Str,        const wchar_t * _Delim,                        wchar_t ** _Context);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   wchar_t * __cdecl _wcserror(     int _ErrNum);
  errno_t __cdecl _wcserror_s(         wchar_t * _Buf,      size_t _SizeInWords,      int _ErrNum);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(     wchar_t (&_Buffer)[_Size],      int _Error) { return _wcserror_s(_Buffer, _Size, _Error); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))   wchar_t * __cdecl __wcserror(         const wchar_t * _Str);
  errno_t __cdecl __wcserror_s(         wchar_t * _Buffer,      size_t _SizeInWords,        const wchar_t * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(     wchar_t (&_Buffer)[_Size],        const wchar_t * _ErrorMessage) { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }

  int __cdecl _wcsicmp(       const wchar_t * _Str1,        const wchar_t * _Str2);
  int __cdecl _wcsicmp_l(       const wchar_t * _Str1,        const wchar_t * _Str2,        _locale_t _Locale);
  int __cdecl _wcsnicmp(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount);
  int __cdecl _wcsnicmp_l(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount,        _locale_t _Locale);
  errno_t __cdecl _wcsnset_s(           wchar_t * _Dst,      size_t _DstSizeInWords, wchar_t _Val,      size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s(           wchar_t (&_Dst)[_Size], wchar_t _Val,      size_t _MaxCount) { return _wcsnset_s(_Dst, _Size, _Val, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsnset(           wchar_t *_Str, wchar_t _Val,      size_t _MaxCount);
 wchar_t * __cdecl _wcsrev(         wchar_t * _Str);
  errno_t __cdecl _wcsset_s(           wchar_t * _Str,      size_t _SizeInWords, wchar_t _Val);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s(           wchar_t (&_Str)[_Size], wchar_t _Val) { return _wcsset_s(_Str, _Size, _Val); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsset(         wchar_t *_Str, wchar_t _Val);

  errno_t __cdecl _wcslwr_s(           wchar_t * _Str,      size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s(           wchar_t (&_String)[_Size]) { return _wcslwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcslwr( wchar_t *_String);
  errno_t __cdecl _wcslwr_s_l(           wchar_t * _Str,      size_t _SizeInWords,        _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l(           wchar_t (&_String)[_Size],        _locale_t _Locale) { return _wcslwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcslwr_l(         wchar_t *_String,        _locale_t _Locale);
  errno_t __cdecl _wcsupr_s(           wchar_t * _Str,      size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s(           wchar_t (&_String)[_Size]) { return _wcsupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsupr( wchar_t *_String);
  errno_t __cdecl _wcsupr_s_l(           wchar_t * _Str,      size_t _Size,        _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l(           wchar_t (&_String)[_Size],        _locale_t _Locale) { return _wcsupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  wchar_t * __cdecl _wcsupr_l(         wchar_t *_String,        _locale_t _Locale);
  size_t __cdecl wcsxfrm(         wchar_t * _Dst,        const wchar_t * _Src,      size_t _MaxCount);
  size_t __cdecl _wcsxfrm_l(         wchar_t * _Dst,        const wchar_t *_Src,      size_t _MaxCount,        _locale_t _Locale);
  int __cdecl wcscoll(       const wchar_t * _Str1,        const wchar_t * _Str2);
  int __cdecl _wcscoll_l(       const wchar_t * _Str1,        const wchar_t * _Str2,        _locale_t _Locale);
  int __cdecl _wcsicoll(       const wchar_t * _Str1,        const wchar_t * _Str2);
  int __cdecl _wcsicoll_l(       const wchar_t * _Str1,        const wchar_t *_Str2,        _locale_t _Locale);
  int __cdecl _wcsncoll(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount);
  int __cdecl _wcsncoll_l(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount,        _locale_t _Locale);
  int __cdecl _wcsnicoll(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount);
  int __cdecl _wcsnicoll_l(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount,        _locale_t _Locale);




extern "C++" {
inline  wchar_t * __cdecl wcschr(       wchar_t *_Str, wchar_t _Ch)
        {return ((wchar_t *)wcschr((const wchar_t *)_Str, _Ch)); }
inline  wchar_t * __cdecl wcspbrk(       wchar_t *_Str,        const wchar_t *_Control)
        {return ((wchar_t *)wcspbrk((const wchar_t *)_Str, _Control)); }
inline  wchar_t * __cdecl wcsrchr(       wchar_t *_Str,      wchar_t _Ch)
        {return ((wchar_t *)wcsrchr((const wchar_t *)_Str, _Ch)); }
inline  wchar_t * __cdecl wcsstr(       wchar_t *_Str,        const wchar_t *_SubStr)
        {return ((wchar_t *)wcsstr((const wchar_t *)_Str, _SubStr)); }
}










__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsdup" ". See online help for details."))   wchar_t * __cdecl wcsdup(       const wchar_t * _Str);









__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicmp" ". See online help for details."))   int __cdecl wcsicmp(       const wchar_t * _Str1,        const wchar_t * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnicmp" ". See online help for details."))   int __cdecl wcsnicmp(       const wchar_t * _Str1,        const wchar_t * _Str2,      size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnset" ". See online help for details."))  wchar_t * __cdecl wcsnset(           wchar_t * _Str,        wchar_t _Val,      size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsrev" ". See online help for details."))  wchar_t * __cdecl wcsrev(         wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsset" ". See online help for details."))  wchar_t * __cdecl wcsset(         wchar_t * _Str, wchar_t _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcslwr" ". See online help for details."))  wchar_t * __cdecl wcslwr(         wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsupr" ". See online help for details."))  wchar_t * __cdecl wcsupr(         wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicoll" ". See online help for details."))   int __cdecl wcsicoll(       const wchar_t * _Str1,        const wchar_t * _Str2);








}







__inline int InlineIsEqualGUID(const GUID & rguid1, const GUID & rguid2)
{
   return (
      ((unsigned long *) &rguid1)[0] == ((unsigned long *) &rguid2)[0] &&
      ((unsigned long *) &rguid1)[1] == ((unsigned long *) &rguid2)[1] &&
      ((unsigned long *) &rguid1)[2] == ((unsigned long *) &rguid2)[2] &&
      ((unsigned long *) &rguid1)[3] == ((unsigned long *) &rguid2)[3]);
}

__inline int IsEqualGUID(const GUID & rguid1, const GUID & rguid2)
{
    return !memcmp(&rguid1, &rguid2, sizeof(GUID));
}





























__inline int operator==(const GUID & guidOne, const GUID & guidOther)
{
    return IsEqualGUID(guidOne,guidOther);
}

__inline int operator!=(const GUID & guidOne, const GUID & guidOther)
{
    return !(guidOne == guidOther);
}










typedef struct  _OBJECTID {     
    GUID Lineage;
    DWORD Uniquifier;
} OBJECTID;






































































extern "C++" 
template <typename T, size_t N>
char (*RtlpNumberOf(  T (&)[N] ))[N];


























































































































































































































































































































































































































































































































  













































  





typedef ULONG_PTR KSPIN_LOCK;
typedef KSPIN_LOCK *PKSPIN_LOCK;




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#pragma warning(push)

#pragma warning(disable:4164)   
                                

#pragma function(_enable)
#pragma function(_disable)



#pragma warning(pop)











extern "C" {















BOOLEAN
_bittest (
     LONG const *Base,
     LONG Offset
    );

BOOLEAN
_bittestandcomplement (
     LONG *Base,
     LONG Offset
    );

BOOLEAN
_bittestandset (
     LONG *Base,
     LONG Offset
    );

BOOLEAN
_bittestandreset (
     LONG *Base,
     LONG Offset
    );

BOOLEAN
_interlockedbittestandset (
     LONG *Base,
     LONG Offset
    );

BOOLEAN
_interlockedbittestandreset (
     LONG *Base,
     LONG Offset
    );

#pragma intrinsic(_bittest)
#pragma intrinsic(_bittestandcomplement)
#pragma intrinsic(_bittestandset)
#pragma intrinsic(_bittestandreset)
#pragma intrinsic(_interlockedbittestandset)
#pragma intrinsic(_interlockedbittestandreset)








BOOLEAN
_BitScanForward (
     DWORD *Index,
     DWORD Mask
    );

BOOLEAN
_BitScanReverse (
     DWORD *Index,
     DWORD Mask
    );

#pragma intrinsic(_BitScanForward)
#pragma intrinsic(_BitScanReverse)








































#pragma warning(push)
#pragma warning(disable:4035 4793)

BOOLEAN
__forceinline
InterlockedBitTestAndComplement (
     LONG *Base,
     LONG Bit
    )
{
    __asm {
           mov eax, Bit
           mov ecx, Base
           lock btc [ecx], eax
           setc al
    };
}
#pragma warning(pop)












BYTE 
__readfsbyte (
     DWORD Offset
    );
 
WORD  
__readfsword (
     DWORD Offset
    );
 
DWORD
__readfsdword (
     DWORD Offset
    );
 
void
__writefsbyte (
     DWORD Offset,
     BYTE  Data
    );
 
void
__writefsword (
     DWORD Offset,
     WORD   Data
    );
 
void
__writefsdword (
     DWORD Offset,
     DWORD Data
    );

#pragma intrinsic(__readfsbyte)
#pragma intrinsic(__readfsword)
#pragma intrinsic(__readfsdword)
#pragma intrinsic(__writefsbyte)
#pragma intrinsic(__writefsword)
#pragma intrinsic(__writefsdword)




}







#pragma warning( push )
#pragma warning( disable : 4793 )
__forceinline
void
MemoryBarrier (
    void
    )
{
    LONG Barrier;
    __asm {
        xchg Barrier, eax
    }
}
#pragma warning( pop )























void
__int2c (
    void
    );

#pragma intrinsic(__int2c)












__inline PVOID GetFiberData( void )    { return *(PVOID *) (ULONG_PTR) __readfsdword (0x10);}
__inline PVOID GetCurrentFiber( void ) { return (PVOID) (ULONG_PTR) __readfsdword (0x10);}





































































typedef struct _FLOATING_SAVE_AREA {
    DWORD   ControlWord;
    DWORD   StatusWord;
    DWORD   TagWord;
    DWORD   ErrorOffset;
    DWORD   ErrorSelector;
    DWORD   DataOffset;
    DWORD   DataSelector;
    BYTE    RegisterArea[80];
    DWORD   Cr0NpxState;
} FLOATING_SAVE_AREA;

typedef FLOATING_SAVE_AREA *PFLOATING_SAVE_AREA;











typedef struct _CONTEXT {

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DWORD ContextFlags;

    
    
    
    
    

    DWORD   Dr0;
    DWORD   Dr1;
    DWORD   Dr2;
    DWORD   Dr3;
    DWORD   Dr6;
    DWORD   Dr7;

    
    
    
    

    FLOATING_SAVE_AREA FloatSave;

    
    
    
    

    DWORD   SegGs;
    DWORD   SegFs;
    DWORD   SegEs;
    DWORD   SegDs;

    
    
    
    

    DWORD   Edi;
    DWORD   Esi;
    DWORD   Ebx;
    DWORD   Edx;
    DWORD   Ecx;
    DWORD   Eax;

    
    
    
    

    DWORD   Ebp;
    DWORD   Eip;
    DWORD   SegCs;              
    DWORD   EFlags;             
    DWORD   Esp;
    DWORD   SegSs;

    
    
    
    
    

    BYTE    ExtendedRegisters[512];

} CONTEXT;



typedef CONTEXT *PCONTEXT;









typedef struct _LDT_ENTRY {
    WORD    LimitLow;
    WORD    BaseLow;
    union {
        struct {
            BYTE    BaseMid;
            BYTE    Flags1;     
            BYTE    Flags2;     
            BYTE    BaseHi;
        } Bytes;
        struct {
            DWORD   BaseMid : 8;
            DWORD   Type : 5;
            DWORD   Dpl : 2;
            DWORD   Pres : 1;
            DWORD   LimitHi : 4;
            DWORD   Sys : 1;
            DWORD   Reserved_0 : 1;
            DWORD   Default_Big : 1;
            DWORD   Granularity : 1;
            DWORD   BaseHi : 8;
        } Bits;
    } HighWord;
} LDT_ENTRY, *PLDT_ENTRY;











































































































































































































































































































































































































































































































































































































































































































































































typedef struct _EXCEPTION_RECORD {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    struct _EXCEPTION_RECORD *ExceptionRecord;
    PVOID ExceptionAddress;
    DWORD NumberParameters;
    ULONG_PTR ExceptionInformation[15];
    } EXCEPTION_RECORD;

typedef EXCEPTION_RECORD *PEXCEPTION_RECORD;

typedef struct _EXCEPTION_RECORD32 {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    DWORD ExceptionRecord;
    DWORD ExceptionAddress;
    DWORD NumberParameters;
    DWORD ExceptionInformation[15];
} EXCEPTION_RECORD32, *PEXCEPTION_RECORD32;

typedef struct _EXCEPTION_RECORD64 {
    DWORD    ExceptionCode;
    DWORD ExceptionFlags;
    DWORD64 ExceptionRecord;
    DWORD64 ExceptionAddress;
    DWORD NumberParameters;
    DWORD __unusedAlignment;
    DWORD64 ExceptionInformation[15];
} EXCEPTION_RECORD64, *PEXCEPTION_RECORD64;





typedef struct _EXCEPTION_POINTERS {
    PEXCEPTION_RECORD ExceptionRecord;
    PCONTEXT ContextRecord;
} EXCEPTION_POINTERS, *PEXCEPTION_POINTERS;
typedef PVOID PACCESS_TOKEN;            
typedef PVOID PSECURITY_DESCRIPTOR;     
typedef PVOID PSID;     







































typedef DWORD ACCESS_MASK;
typedef ACCESS_MASK *PACCESS_MASK;
























































typedef struct _GENERIC_MAPPING {
    ACCESS_MASK GenericRead;
    ACCESS_MASK GenericWrite;
    ACCESS_MASK GenericExecute;
    ACCESS_MASK GenericAll;
} GENERIC_MAPPING;
typedef GENERIC_MAPPING *PGENERIC_MAPPING;




































#pragma warning(disable:4103)

#pragma pack(push,4)









typedef struct _LUID_AND_ATTRIBUTES {
    LUID Luid;
    DWORD Attributes;
    } LUID_AND_ATTRIBUTES, * PLUID_AND_ATTRIBUTES;
typedef LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[1];
typedef LUID_AND_ATTRIBUTES_ARRAY *PLUID_AND_ATTRIBUTES_ARRAY;




























#pragma warning(disable:4103)

#pragma pack(pop)










































typedef struct _SID_IDENTIFIER_AUTHORITY {
    BYTE  Value[6];
} SID_IDENTIFIER_AUTHORITY, *PSID_IDENTIFIER_AUTHORITY;





typedef struct _SID {
   BYTE  Revision;
   BYTE  SubAuthorityCount;
   SID_IDENTIFIER_AUTHORITY IdentifierAuthority;



   DWORD SubAuthority[1];

} SID, *PISID;






                                                






typedef enum _SID_NAME_USE {
    SidTypeUser = 1,
    SidTypeGroup,
    SidTypeDomain,
    SidTypeAlias,
    SidTypeWellKnownGroup,
    SidTypeDeletedAccount,
    SidTypeInvalid,
    SidTypeUnknown,
    SidTypeComputer
} SID_NAME_USE, *PSID_NAME_USE;

typedef struct _SID_AND_ATTRIBUTES {
    PSID Sid;
    DWORD Attributes;
    } SID_AND_ATTRIBUTES, * PSID_AND_ATTRIBUTES;

typedef SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[1];
typedef SID_AND_ATTRIBUTES_ARRAY *PSID_AND_ATTRIBUTES_ARRAY;
























































































































































































typedef enum {

    WinNullSid                                  = 0,
    WinWorldSid                                 = 1,
    WinLocalSid                                 = 2,
    WinCreatorOwnerSid                          = 3,
    WinCreatorGroupSid                          = 4,
    WinCreatorOwnerServerSid                    = 5,
    WinCreatorGroupServerSid                    = 6,
    WinNtAuthoritySid                           = 7,
    WinDialupSid                                = 8,
    WinNetworkSid                               = 9,
    WinBatchSid                                 = 10,
    WinInteractiveSid                           = 11,
    WinServiceSid                               = 12,
    WinAnonymousSid                             = 13,
    WinProxySid                                 = 14,
    WinEnterpriseControllersSid                 = 15,
    WinSelfSid                                  = 16,
    WinAuthenticatedUserSid                     = 17,
    WinRestrictedCodeSid                        = 18,
    WinTerminalServerSid                        = 19,
    WinRemoteLogonIdSid                         = 20,
    WinLogonIdsSid                              = 21,
    WinLocalSystemSid                           = 22,
    WinLocalServiceSid                          = 23,
    WinNetworkServiceSid                        = 24,
    WinBuiltinDomainSid                         = 25,
    WinBuiltinAdministratorsSid                 = 26,
    WinBuiltinUsersSid                          = 27,
    WinBuiltinGuestsSid                         = 28,
    WinBuiltinPowerUsersSid                     = 29,
    WinBuiltinAccountOperatorsSid               = 30,
    WinBuiltinSystemOperatorsSid                = 31,
    WinBuiltinPrintOperatorsSid                 = 32,
    WinBuiltinBackupOperatorsSid                = 33,
    WinBuiltinReplicatorSid                     = 34,
    WinBuiltinPreWindows2000CompatibleAccessSid = 35,
    WinBuiltinRemoteDesktopUsersSid             = 36,
    WinBuiltinNetworkConfigurationOperatorsSid  = 37,
    WinAccountAdministratorSid                  = 38,
    WinAccountGuestSid                          = 39,
    WinAccountKrbtgtSid                         = 40,
    WinAccountDomainAdminsSid                   = 41,
    WinAccountDomainUsersSid                    = 42,
    WinAccountDomainGuestsSid                   = 43,
    WinAccountComputersSid                      = 44,
    WinAccountControllersSid                    = 45,
    WinAccountCertAdminsSid                     = 46,
    WinAccountSchemaAdminsSid                   = 47,
    WinAccountEnterpriseAdminsSid               = 48,
    WinAccountPolicyAdminsSid                   = 49,
    WinAccountRasAndIasServersSid               = 50,
    WinNTLMAuthenticationSid                    = 51,
    WinDigestAuthenticationSid                  = 52,
    WinSChannelAuthenticationSid                = 53,
    WinThisOrganizationSid                      = 54,
    WinOtherOrganizationSid                     = 55,
    WinBuiltinIncomingForestTrustBuildersSid    = 56,
    WinBuiltinPerfMonitoringUsersSid            = 57,
    WinBuiltinPerfLoggingUsersSid               = 58,
    WinBuiltinAuthorizationAccessSid            = 59,
    WinBuiltinTerminalServerLicenseServersSid   = 60,
    WinBuiltinDCOMUsersSid                      = 61,

} WELL_KNOWN_SID_TYPE;






















































































typedef struct _ACL {
    BYTE  AclRevision;
    BYTE  Sbz1;
    WORD   AclSize;
    WORD   AceCount;
    WORD   Sbz2;
} ACL;
typedef ACL *PACL;





















typedef struct _ACE_HEADER {
    BYTE  AceType;
    BYTE  AceFlags;
    WORD   AceSize;
} ACE_HEADER;
typedef ACE_HEADER *PACE_HEADER;








































































































typedef struct _ACCESS_ALLOWED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_ALLOWED_ACE;

typedef ACCESS_ALLOWED_ACE *PACCESS_ALLOWED_ACE;

typedef struct _ACCESS_DENIED_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} ACCESS_DENIED_ACE;
typedef ACCESS_DENIED_ACE *PACCESS_DENIED_ACE;

typedef struct _SYSTEM_AUDIT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_AUDIT_ACE;
typedef SYSTEM_AUDIT_ACE *PSYSTEM_AUDIT_ACE;

typedef struct _SYSTEM_ALARM_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
} SYSTEM_ALARM_ACE;
typedef SYSTEM_ALARM_ACE *PSYSTEM_ALARM_ACE;




typedef struct _ACCESS_ALLOWED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_ALLOWED_OBJECT_ACE, *PACCESS_ALLOWED_OBJECT_ACE;

typedef struct _ACCESS_DENIED_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} ACCESS_DENIED_OBJECT_ACE, *PACCESS_DENIED_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_AUDIT_OBJECT_ACE, *PSYSTEM_AUDIT_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
} SYSTEM_ALARM_OBJECT_ACE, *PSYSTEM_ALARM_OBJECT_ACE;






typedef struct _ACCESS_ALLOWED_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} ACCESS_ALLOWED_CALLBACK_ACE, *PACCESS_ALLOWED_CALLBACK_ACE;

typedef struct _ACCESS_DENIED_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} ACCESS_DENIED_CALLBACK_ACE, *PACCESS_DENIED_CALLBACK_ACE;

typedef struct _SYSTEM_AUDIT_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_AUDIT_CALLBACK_ACE, *PSYSTEM_AUDIT_CALLBACK_ACE;

typedef struct _SYSTEM_ALARM_CALLBACK_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD SidStart;
    
} SYSTEM_ALARM_CALLBACK_ACE, *PSYSTEM_ALARM_CALLBACK_ACE;

typedef struct _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} ACCESS_ALLOWED_CALLBACK_OBJECT_ACE, *PACCESS_ALLOWED_CALLBACK_OBJECT_ACE;

typedef struct _ACCESS_DENIED_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} ACCESS_DENIED_CALLBACK_OBJECT_ACE, *PACCESS_DENIED_CALLBACK_OBJECT_ACE;

typedef struct _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} SYSTEM_AUDIT_CALLBACK_OBJECT_ACE, *PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE;

typedef struct _SYSTEM_ALARM_CALLBACK_OBJECT_ACE {
    ACE_HEADER Header;
    ACCESS_MASK Mask;
    DWORD Flags;
    GUID ObjectType;
    GUID InheritedObjectType;
    DWORD SidStart;
    
} SYSTEM_ALARM_CALLBACK_OBJECT_ACE, *PSYSTEM_ALARM_CALLBACK_OBJECT_ACE;















typedef enum _ACL_INFORMATION_CLASS {
    AclRevisionInformation = 1,
    AclSizeInformation
} ACL_INFORMATION_CLASS;






typedef struct _ACL_REVISION_INFORMATION {
    DWORD AclRevision;
} ACL_REVISION_INFORMATION;
typedef ACL_REVISION_INFORMATION *PACL_REVISION_INFORMATION;





typedef struct _ACL_SIZE_INFORMATION {
    DWORD AceCount;
    DWORD AclBytesInUse;
    DWORD AclBytesFree;
} ACL_SIZE_INFORMATION;
typedef ACL_SIZE_INFORMATION *PACL_SIZE_INFORMATION;


























typedef WORD   SECURITY_DESCRIPTOR_CONTROL, *PSECURITY_DESCRIPTOR_CONTROL;

























































































typedef struct _SECURITY_DESCRIPTOR_RELATIVE {
    BYTE  Revision;
    BYTE  Sbz1;
    SECURITY_DESCRIPTOR_CONTROL Control;
    DWORD Owner;
    DWORD Group;
    DWORD Sacl;
    DWORD Dacl;
    } SECURITY_DESCRIPTOR_RELATIVE, *PISECURITY_DESCRIPTOR_RELATIVE;

typedef struct _SECURITY_DESCRIPTOR {
   BYTE  Revision;
   BYTE  Sbz1;
   SECURITY_DESCRIPTOR_CONTROL Control;
   PSID Owner;
   PSID Group;
   PACL Sacl;
   PACL Dacl;

   } SECURITY_DESCRIPTOR, *PISECURITY_DESCRIPTOR;


















































typedef struct _OBJECT_TYPE_LIST {
    WORD   Level;
    WORD   Sbz;
    GUID *ObjectType;
} OBJECT_TYPE_LIST, *POBJECT_TYPE_LIST;















typedef enum _AUDIT_EVENT_TYPE {
    AuditEventObjectAccess,
    AuditEventDirectoryServiceAccess
} AUDIT_EVENT_TYPE, *PAUDIT_EVENT_TYPE;













































typedef struct _PRIVILEGE_SET {
    DWORD PrivilegeCount;
    DWORD Control;
    LUID_AND_ATTRIBUTES Privilege[1];
    } PRIVILEGE_SET, * PPRIVILEGE_SET;
























































typedef enum _SECURITY_IMPERSONATION_LEVEL {
    SecurityAnonymous,
    SecurityIdentification,
    SecurityImpersonation,
    SecurityDelegation
    } SECURITY_IMPERSONATION_LEVEL, * PSECURITY_IMPERSONATION_LEVEL;






























































typedef enum _TOKEN_TYPE {
    TokenPrimary = 1,
    TokenImpersonation
    } TOKEN_TYPE;
typedef TOKEN_TYPE *PTOKEN_TYPE;







typedef enum _TOKEN_INFORMATION_CLASS {
    TokenUser = 1,
    TokenGroups,
    TokenPrivileges,
    TokenOwner,
    TokenPrimaryGroup,
    TokenDefaultDacl,
    TokenSource,
    TokenType,
    TokenImpersonationLevel,
    TokenStatistics,
    TokenRestrictedSids,
    TokenSessionId,
    TokenGroupsAndPrivileges,
    TokenSessionReference,
    TokenSandBoxInert,
    TokenAuditPolicy,
    TokenOrigin,
    MaxTokenInfoClass  
} TOKEN_INFORMATION_CLASS, *PTOKEN_INFORMATION_CLASS;






typedef struct _TOKEN_USER {
    SID_AND_ATTRIBUTES User;
} TOKEN_USER, *PTOKEN_USER;

typedef struct _TOKEN_GROUPS {
    DWORD GroupCount;
    SID_AND_ATTRIBUTES Groups[1];
} TOKEN_GROUPS, *PTOKEN_GROUPS;


typedef struct _TOKEN_PRIVILEGES {
    DWORD PrivilegeCount;
    LUID_AND_ATTRIBUTES Privileges[1];
} TOKEN_PRIVILEGES, *PTOKEN_PRIVILEGES;


typedef struct _TOKEN_OWNER {
    PSID Owner;
} TOKEN_OWNER, *PTOKEN_OWNER;


typedef struct _TOKEN_PRIMARY_GROUP {
    PSID PrimaryGroup;
} TOKEN_PRIMARY_GROUP, *PTOKEN_PRIMARY_GROUP;


typedef struct _TOKEN_DEFAULT_DACL {
    PACL DefaultDacl;
} TOKEN_DEFAULT_DACL, *PTOKEN_DEFAULT_DACL;

typedef struct _TOKEN_GROUPS_AND_PRIVILEGES {
    DWORD SidCount;
    DWORD SidLength;
    PSID_AND_ATTRIBUTES Sids;
    DWORD RestrictedSidCount;
    DWORD RestrictedSidLength;
    PSID_AND_ATTRIBUTES RestrictedSids;
    DWORD PrivilegeCount;
    DWORD PrivilegeLength;
    PLUID_AND_ATTRIBUTES Privileges;
    LUID AuthenticationId;
} TOKEN_GROUPS_AND_PRIVILEGES, *PTOKEN_GROUPS_AND_PRIVILEGES;


















typedef struct _TOKEN_AUDIT_POLICY_ELEMENT {
    DWORD Category;
    DWORD PolicyMask;
} TOKEN_AUDIT_POLICY_ELEMENT, *PTOKEN_AUDIT_POLICY_ELEMENT;

typedef struct _TOKEN_AUDIT_POLICY {
    DWORD PolicyCount;
    TOKEN_AUDIT_POLICY_ELEMENT Policy[1];
} TOKEN_AUDIT_POLICY, *PTOKEN_AUDIT_POLICY;









typedef struct _TOKEN_SOURCE {
    CHAR SourceName[8];
    LUID SourceIdentifier;
} TOKEN_SOURCE, *PTOKEN_SOURCE;


typedef struct _TOKEN_STATISTICS {
    LUID TokenId;
    LUID AuthenticationId;
    LARGE_INTEGER ExpirationTime;
    TOKEN_TYPE TokenType;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    DWORD DynamicCharged;
    DWORD DynamicAvailable;
    DWORD GroupCount;
    DWORD PrivilegeCount;
    LUID ModifiedId;
} TOKEN_STATISTICS, *PTOKEN_STATISTICS;



typedef struct _TOKEN_CONTROL {
    LUID TokenId;
    LUID AuthenticationId;
    LUID ModifiedId;
    TOKEN_SOURCE TokenSource;
} TOKEN_CONTROL, *PTOKEN_CONTROL;

typedef struct _TOKEN_ORIGIN {
    LUID OriginatingLogonSession ;
} TOKEN_ORIGIN, * PTOKEN_ORIGIN ;








typedef BOOLEAN SECURITY_CONTEXT_TRACKING_MODE,
                    * PSECURITY_CONTEXT_TRACKING_MODE;







typedef struct _SECURITY_QUALITY_OF_SERVICE {
    DWORD Length;
    SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
    SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
    BOOLEAN EffectiveOnly;
    } SECURITY_QUALITY_OF_SERVICE, * PSECURITY_QUALITY_OF_SERVICE;






typedef struct _SE_IMPERSONATION_STATE {
    PACCESS_TOKEN Token;
    BOOLEAN CopyOnOpen;
    BOOLEAN EffectiveOnly;
    SECURITY_IMPERSONATION_LEVEL Level;
} SE_IMPERSONATION_STATE, *PSE_IMPERSONATION_STATE;




typedef DWORD SECURITY_INFORMATION, *PSECURITY_INFORMATION;






























































typedef struct _JOB_SET_ARRAY {
    HANDLE JobHandle;   
    DWORD MemberLevel;  
    DWORD Flags;        
} JOB_SET_ARRAY, *PJOB_SET_ARRAY;




typedef struct _NT_TIB {
    struct _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
    PVOID StackBase;
    PVOID StackLimit;
    PVOID SubSystemTib;
    union {
        PVOID FiberData;
        DWORD Version;
    };
    PVOID ArbitraryUserPointer;
    struct _NT_TIB *Self;
} NT_TIB;
typedef NT_TIB *PNT_TIB;




typedef struct _NT_TIB32 {
    DWORD ExceptionList;
    DWORD StackBase;
    DWORD StackLimit;
    DWORD SubSystemTib;
    union {
        DWORD FiberData;
        DWORD Version;
    };
    DWORD ArbitraryUserPointer;
    DWORD Self;
} NT_TIB32, *PNT_TIB32;

typedef struct _NT_TIB64 {
    DWORD64 ExceptionList;
    DWORD64 StackBase;
    DWORD64 StackLimit;
    DWORD64 SubSystemTib;
    union {
        DWORD64 FiberData;
        DWORD Version;
    };
    DWORD64 ArbitraryUserPointer;
    DWORD64 Self;
} NT_TIB64, *PNT_TIB64;











typedef struct _QUOTA_LIMITS {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    SIZE_T PagefileLimit;
    LARGE_INTEGER TimeLimit;
} QUOTA_LIMITS, *PQUOTA_LIMITS;






typedef struct _QUOTA_LIMITS_EX {
    SIZE_T PagedPoolLimit;
    SIZE_T NonPagedPoolLimit;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    SIZE_T PagefileLimit;
    LARGE_INTEGER TimeLimit;
    SIZE_T Reserved1;
    SIZE_T Reserved2;
    SIZE_T Reserved3;
    SIZE_T Reserved4;
    DWORD  Flags;
    DWORD  Reserved5;
} QUOTA_LIMITS_EX, *PQUOTA_LIMITS_EX;

typedef struct _IO_COUNTERS {
    ULONGLONG  ReadOperationCount;
    ULONGLONG  WriteOperationCount;
    ULONGLONG  OtherOperationCount;
    ULONGLONG ReadTransferCount;
    ULONGLONG WriteTransferCount;
    ULONGLONG OtherTransferCount;
} IO_COUNTERS;
typedef IO_COUNTERS *PIO_COUNTERS;


typedef struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
    LARGE_INTEGER TotalUserTime;
    LARGE_INTEGER TotalKernelTime;
    LARGE_INTEGER ThisPeriodTotalUserTime;
    LARGE_INTEGER ThisPeriodTotalKernelTime;
    DWORD TotalPageFaultCount;
    DWORD TotalProcesses;
    DWORD ActiveProcesses;
    DWORD TotalTerminatedProcesses;
} JOBOBJECT_BASIC_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
    LARGE_INTEGER PerProcessUserTimeLimit;
    LARGE_INTEGER PerJobUserTimeLimit;
    DWORD LimitFlags;
    SIZE_T MinimumWorkingSetSize;
    SIZE_T MaximumWorkingSetSize;
    DWORD ActiveProcessLimit;
    ULONG_PTR Affinity;
    DWORD PriorityClass;
    DWORD SchedulingClass;
} JOBOBJECT_BASIC_LIMIT_INFORMATION, *PJOBOBJECT_BASIC_LIMIT_INFORMATION;

typedef struct _JOBOBJECT_EXTENDED_LIMIT_INFORMATION {
    JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
    IO_COUNTERS IoInfo;
    SIZE_T ProcessMemoryLimit;
    SIZE_T JobMemoryLimit;
    SIZE_T PeakProcessMemoryUsed;
    SIZE_T PeakJobMemoryUsed;
} JOBOBJECT_EXTENDED_LIMIT_INFORMATION, *PJOBOBJECT_EXTENDED_LIMIT_INFORMATION;

typedef struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
    DWORD NumberOfAssignedProcesses;
    DWORD NumberOfProcessIdsInList;
    ULONG_PTR ProcessIdList[1];
} JOBOBJECT_BASIC_PROCESS_ID_LIST, *PJOBOBJECT_BASIC_PROCESS_ID_LIST;

typedef struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
    DWORD UIRestrictionsClass;
} JOBOBJECT_BASIC_UI_RESTRICTIONS, *PJOBOBJECT_BASIC_UI_RESTRICTIONS;

typedef struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
    DWORD SecurityLimitFlags ;
    HANDLE JobToken ;
    PTOKEN_GROUPS SidsToDisable ;
    PTOKEN_PRIVILEGES PrivilegesToDelete ;
    PTOKEN_GROUPS RestrictedSids ;
} JOBOBJECT_SECURITY_LIMIT_INFORMATION, *PJOBOBJECT_SECURITY_LIMIT_INFORMATION ;

typedef struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
    DWORD EndOfJobTimeAction;
} JOBOBJECT_END_OF_JOB_TIME_INFORMATION, *PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

typedef struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
    PVOID CompletionKey;
    HANDLE CompletionPort;
} JOBOBJECT_ASSOCIATE_COMPLETION_PORT, *PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;

typedef struct _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION {
    JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
    IO_COUNTERS IoInfo;
} JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION, *PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;

typedef struct _JOBOBJECT_JOBSET_INFORMATION {
    DWORD MemberLevel;
} JOBOBJECT_JOBSET_INFORMATION, *PJOBOBJECT_JOBSET_INFORMATION;


















































































typedef enum _JOBOBJECTINFOCLASS {
    JobObjectBasicAccountingInformation = 1,
    JobObjectBasicLimitInformation,
    JobObjectBasicProcessIdList,
    JobObjectBasicUIRestrictions,
    JobObjectSecurityLimitInformation,
    JobObjectEndOfJobTimeInformation,
    JobObjectAssociateCompletionPortInformation,
    JobObjectBasicAndIoAccountingInformation,
    JobObjectExtendedLimitInformation,
    JobObjectJobSetInformation,
    MaxJobObjectInfoClass
    } JOBOBJECTINFOCLASS;
























typedef enum _LOGICAL_PROCESSOR_RELATIONSHIP {
    RelationProcessorCore,
    RelationNumaNode,
    RelationCache
} LOGICAL_PROCESSOR_RELATIONSHIP;



typedef enum _PROCESSOR_CACHE_TYPE {
    CacheUnified,
    CacheInstruction,
    CacheData,
    CacheTrace
} PROCESSOR_CACHE_TYPE;



typedef struct _CACHE_DESCRIPTOR {
    BYTE   Level;
    BYTE   Associativity;
    WORD   LineSize;
    DWORD  Size;
    PROCESSOR_CACHE_TYPE Type;
} CACHE_DESCRIPTOR, *PCACHE_DESCRIPTOR;

typedef struct _SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
    ULONG_PTR   ProcessorMask;
    LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
    union {
        struct {
            BYTE  Flags;
        } ProcessorCore;
        struct {
            DWORD NodeNumber;
        } NumaNode;
        CACHE_DESCRIPTOR Cache;
        ULONGLONG  Reserved[2];
    };
} SYSTEM_LOGICAL_PROCESSOR_INFORMATION, *PSYSTEM_LOGICAL_PROCESSOR_INFORMATION;






















































typedef struct _MEMORY_BASIC_INFORMATION {
    PVOID BaseAddress;
    PVOID AllocationBase;
    DWORD AllocationProtect;
    SIZE_T RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION, *PMEMORY_BASIC_INFORMATION;

typedef struct _MEMORY_BASIC_INFORMATION32 {
    DWORD BaseAddress;
    DWORD AllocationBase;
    DWORD AllocationProtect;
    DWORD RegionSize;
    DWORD State;
    DWORD Protect;
    DWORD Type;
} MEMORY_BASIC_INFORMATION32, *PMEMORY_BASIC_INFORMATION32;

typedef struct __declspec(align(16)) _MEMORY_BASIC_INFORMATION64 {
    ULONGLONG BaseAddress;
    ULONGLONG AllocationBase;
    DWORD     AllocationProtect;
    DWORD     __alignment1;
    ULONGLONG RegionSize;
    DWORD     State;
    DWORD     Protect;
    DWORD     Type;
    DWORD     __alignment2;
} MEMORY_BASIC_INFORMATION64, *PMEMORY_BASIC_INFORMATION64;



























































































































































typedef struct _FILE_NOTIFY_INFORMATION {
    DWORD NextEntryOffset;
    DWORD Action;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FILE_NOTIFY_INFORMATION, *PFILE_NOTIFY_INFORMATION;






typedef union _FILE_SEGMENT_ELEMENT {
    PVOID64 Buffer;
    ULONGLONG Alignment;
}FILE_SEGMENT_ELEMENT, *PFILE_SEGMENT_ELEMENT;









typedef struct _REPARSE_GUID_DATA_BUFFER {
    DWORD  ReparseTag;
    WORD   ReparseDataLength;
    WORD   Reserved;
    GUID   ReparseGuid;
    struct {
        BYTE   DataBuffer[1];
    } GenericReparseBuffer;
} REPARSE_GUID_DATA_BUFFER, *PREPARSE_GUID_DATA_BUFFER;













































































typedef enum _SYSTEM_POWER_STATE {
    PowerSystemUnspecified = 0,
    PowerSystemWorking     = 1,
    PowerSystemSleeping1   = 2,
    PowerSystemSleeping2   = 3,
    PowerSystemSleeping3   = 4,
    PowerSystemHibernate   = 5,
    PowerSystemShutdown    = 6,
    PowerSystemMaximum     = 7
} SYSTEM_POWER_STATE, *PSYSTEM_POWER_STATE;



typedef enum {
    PowerActionNone = 0,
    PowerActionReserved,
    PowerActionSleep,
    PowerActionHibernate,
    PowerActionShutdown,
    PowerActionShutdownReset,
    PowerActionShutdownOff,
    PowerActionWarmEject
} POWER_ACTION, *PPOWER_ACTION;

typedef enum _DEVICE_POWER_STATE {
    PowerDeviceUnspecified = 0,
    PowerDeviceD0,
    PowerDeviceD1,
    PowerDeviceD2,
    PowerDeviceD3,
    PowerDeviceMaximum
} DEVICE_POWER_STATE, *PDEVICE_POWER_STATE;







typedef DWORD EXECUTION_STATE;

typedef enum {
    LT_DONT_CARE,
    LT_LOWEST_LATENCY
} LATENCY_TIME;

















typedef struct CM_Power_Data_s {
    DWORD               PD_Size;
    DEVICE_POWER_STATE  PD_MostRecentPowerState;
    DWORD               PD_Capabilities;
    DWORD               PD_D1Latency;
    DWORD               PD_D2Latency;
    DWORD               PD_D3Latency;
    DEVICE_POWER_STATE  PD_PowerStateMapping[7];
    SYSTEM_POWER_STATE  PD_DeepestSystemWake;
} CM_POWER_DATA, *PCM_POWER_DATA;



typedef enum {
    SystemPowerPolicyAc,
    SystemPowerPolicyDc,
    VerifySystemPolicyAc,
    VerifySystemPolicyDc,
    SystemPowerCapabilities,
    SystemBatteryState,
    SystemPowerStateHandler,
    ProcessorStateHandler,
    SystemPowerPolicyCurrent,
    AdministratorPowerPolicy,
    SystemReserveHiberFile,
    ProcessorInformation,
    SystemPowerInformation,
    ProcessorStateHandler2,
    LastWakeTime,                                   
    LastSleepTime,                                  
    SystemExecutionState,
    SystemPowerStateNotifyHandler,
    ProcessorPowerPolicyAc,
    ProcessorPowerPolicyDc,
    VerifyProcessorPowerPolicyAc,
    VerifyProcessorPowerPolicyDc,
    ProcessorPowerPolicyCurrent,
    SystemPowerStateLogging,
    SystemPowerLoggingEntry
} POWER_INFORMATION_LEVEL;







typedef struct {
    DWORD       Granularity;
    DWORD       Capacity;
} BATTERY_REPORTING_SCALE, *PBATTERY_REPORTING_SCALE;






typedef struct {
    POWER_ACTION    Action;
    DWORD           Flags;
    DWORD           EventCode;
} POWER_ACTION_POLICY, *PPOWER_ACTION_POLICY;



















typedef struct {
    BOOLEAN                 Enable;
    BYTE                    Spare[3];
    DWORD                   BatteryLevel;
    POWER_ACTION_POLICY     PowerPolicy;
    SYSTEM_POWER_STATE      MinSystemState;
} SYSTEM_POWER_LEVEL, *PSYSTEM_POWER_LEVEL;
















typedef struct _SYSTEM_POWER_POLICY {
    DWORD                   Revision;       

    
    POWER_ACTION_POLICY     PowerButton;
    POWER_ACTION_POLICY     SleepButton;
    POWER_ACTION_POLICY     LidClose;
    SYSTEM_POWER_STATE      LidOpenWake;
    DWORD                   Reserved;

    
    POWER_ACTION_POLICY     Idle;
    DWORD                   IdleTimeout;
    BYTE                    IdleSensitivity;

    
    
    BYTE                    DynamicThrottle;

    BYTE                    Spare2[2];

    
    SYSTEM_POWER_STATE      MinSleep;
    SYSTEM_POWER_STATE      MaxSleep;
    SYSTEM_POWER_STATE      ReducedLatencySleep;
    DWORD                   WinLogonFlags;

    
    DWORD                   Spare3;
    DWORD                   DozeS4Timeout;

    
    DWORD                   BroadcastCapacityResolution;
    SYSTEM_POWER_LEVEL      DischargePolicy[4];

    
    DWORD                   VideoTimeout;
    BOOLEAN                 VideoDimDisplay;
    DWORD                   VideoReserved[3];

    
    DWORD                   SpindownTimeout;

    
    BOOLEAN                 OptimizeForPower;
    BYTE                    FanThrottleTolerance;
    BYTE                    ForcedThrottle;
    BYTE                    MinThrottle;
    POWER_ACTION_POLICY     OverThrottled;

} SYSTEM_POWER_POLICY, *PSYSTEM_POWER_POLICY;


typedef struct _PROCESSOR_POWER_POLICY_INFO {

    
    DWORD                   TimeCheck;                      
    DWORD                   DemoteLimit;                    
    DWORD                   PromoteLimit;                   

    
    BYTE                    DemotePercent;
    BYTE                    PromotePercent;
    BYTE                    Spare[2];

    
    DWORD                   AllowDemotion:1;
    DWORD                   AllowPromotion:1;
    DWORD                   Reserved:30;

} PROCESSOR_POWER_POLICY_INFO, *PPROCESSOR_POWER_POLICY_INFO;


typedef struct _PROCESSOR_POWER_POLICY {
    DWORD                       Revision;       

    
    BYTE                        DynamicThrottle;
    BYTE                        Spare[3];

    
    DWORD                       DisableCStates:1;
    DWORD                       Reserved:31;

    
    
    
    DWORD                       PolicyCount;
    PROCESSOR_POWER_POLICY_INFO Policy[3];

} PROCESSOR_POWER_POLICY, *PPROCESSOR_POWER_POLICY;


typedef struct _ADMINISTRATOR_POWER_POLICY {

    
    SYSTEM_POWER_STATE      MinSleep;
    SYSTEM_POWER_STATE      MaxSleep;

    
    DWORD                   MinVideoTimeout;
    DWORD                   MaxVideoTimeout;

    
    DWORD                   MinSpindownTimeout;
    DWORD                   MaxSpindownTimeout;
} ADMINISTRATOR_POWER_POLICY, *PADMINISTRATOR_POWER_POLICY;


typedef struct {
    
    BOOLEAN             PowerButtonPresent;
    BOOLEAN             SleepButtonPresent;
    BOOLEAN             LidPresent;
    BOOLEAN             SystemS1;
    BOOLEAN             SystemS2;
    BOOLEAN             SystemS3;
    BOOLEAN             SystemS4;           
    BOOLEAN             SystemS5;           
    BOOLEAN             HiberFilePresent;
    BOOLEAN             FullWake;
    BOOLEAN             VideoDimPresent;
    BOOLEAN             ApmPresent;
    BOOLEAN             UpsPresent;

    
    BOOLEAN             ThermalControl;
    BOOLEAN             ProcessorThrottle;
    BYTE                ProcessorMinThrottle;
    BYTE                ProcessorMaxThrottle;
    BYTE                spare2[4];

    
    BOOLEAN             DiskSpinDown;
    BYTE                spare3[8];

    
    BOOLEAN             SystemBatteriesPresent;
    BOOLEAN             BatteriesAreShortTerm;
    BATTERY_REPORTING_SCALE BatteryScale[3];

    
    SYSTEM_POWER_STATE  AcOnLineWake;
    SYSTEM_POWER_STATE  SoftLidWake;
    SYSTEM_POWER_STATE  RtcWake;
    SYSTEM_POWER_STATE  MinDeviceWakeState; 
    SYSTEM_POWER_STATE  DefaultLowLatencyWake;
} SYSTEM_POWER_CAPABILITIES, *PSYSTEM_POWER_CAPABILITIES;

typedef struct {
    BOOLEAN             AcOnLine;
    BOOLEAN             BatteryPresent;
    BOOLEAN             Charging;
    BOOLEAN             Discharging;
    BOOLEAN             Spare1[4];

    DWORD               MaxCapacity;
    DWORD               RemainingCapacity;
    DWORD               Rate;
    DWORD               EstimatedTime;

    DWORD               DefaultAlert1;
    DWORD               DefaultAlert2;
} SYSTEM_BATTERY_STATE, *PSYSTEM_BATTERY_STATE;


































#pragma warning(disable:4103)

#pragma pack(push,4)







































#pragma warning(disable:4103)

#pragma pack(push,2)



















typedef struct _IMAGE_DOS_HEADER {      
    WORD   e_magic;                     
    WORD   e_cblp;                      
    WORD   e_cp;                        
    WORD   e_crlc;                      
    WORD   e_cparhdr;                   
    WORD   e_minalloc;                  
    WORD   e_maxalloc;                  
    WORD   e_ss;                        
    WORD   e_sp;                        
    WORD   e_csum;                      
    WORD   e_ip;                        
    WORD   e_cs;                        
    WORD   e_lfarlc;                    
    WORD   e_ovno;                      
    WORD   e_res[4];                    
    WORD   e_oemid;                     
    WORD   e_oeminfo;                   
    WORD   e_res2[10];                  
    LONG   e_lfanew;                    
  } IMAGE_DOS_HEADER, *PIMAGE_DOS_HEADER;

typedef struct _IMAGE_OS2_HEADER {      
    WORD   ne_magic;                    
    CHAR   ne_ver;                      
    CHAR   ne_rev;                      
    WORD   ne_enttab;                   
    WORD   ne_cbenttab;                 
    LONG   ne_crc;                      
    WORD   ne_flags;                    
    WORD   ne_autodata;                 
    WORD   ne_heap;                     
    WORD   ne_stack;                    
    LONG   ne_csip;                     
    LONG   ne_sssp;                     
    WORD   ne_cseg;                     
    WORD   ne_cmod;                     
    WORD   ne_cbnrestab;                
    WORD   ne_segtab;                   
    WORD   ne_rsrctab;                  
    WORD   ne_restab;                   
    WORD   ne_modtab;                   
    WORD   ne_imptab;                   
    LONG   ne_nrestab;                  
    WORD   ne_cmovent;                  
    WORD   ne_align;                    
    WORD   ne_cres;                     
    BYTE   ne_exetyp;                   
    BYTE   ne_flagsothers;              
    WORD   ne_pretthunks;               
    WORD   ne_psegrefbytes;             
    WORD   ne_swaparea;                 
    WORD   ne_expver;                   
  } IMAGE_OS2_HEADER, *PIMAGE_OS2_HEADER;

typedef struct _IMAGE_VXD_HEADER {      
    WORD   e32_magic;                   
    BYTE   e32_border;                  
    BYTE   e32_worder;                  
    DWORD  e32_level;                   
    WORD   e32_cpu;                     
    WORD   e32_os;                      
    DWORD  e32_ver;                     
    DWORD  e32_mflags;                  
    DWORD  e32_mpages;                  
    DWORD  e32_startobj;                
    DWORD  e32_eip;                     
    DWORD  e32_stackobj;                
    DWORD  e32_esp;                     
    DWORD  e32_pagesize;                
    DWORD  e32_lastpagesize;            
    DWORD  e32_fixupsize;               
    DWORD  e32_fixupsum;                
    DWORD  e32_ldrsize;                 
    DWORD  e32_ldrsum;                  
    DWORD  e32_objtab;                  
    DWORD  e32_objcnt;                  
    DWORD  e32_objmap;                  
    DWORD  e32_itermap;                 
    DWORD  e32_rsrctab;                 
    DWORD  e32_rsrccnt;                 
    DWORD  e32_restab;                  
    DWORD  e32_enttab;                  
    DWORD  e32_dirtab;                  
    DWORD  e32_dircnt;                  
    DWORD  e32_fpagetab;                
    DWORD  e32_frectab;                 
    DWORD  e32_impmod;                  
    DWORD  e32_impmodcnt;               
    DWORD  e32_impproc;                 
    DWORD  e32_pagesum;                 
    DWORD  e32_datapage;                
    DWORD  e32_preload;                 
    DWORD  e32_nrestab;                 
    DWORD  e32_cbnrestab;               
    DWORD  e32_nressum;                 
    DWORD  e32_autodata;                
    DWORD  e32_debuginfo;               
    DWORD  e32_debuglen;                
    DWORD  e32_instpreload;             
    DWORD  e32_instdemand;              
    DWORD  e32_heapsize;                
    BYTE   e32_res3[12];                
    DWORD  e32_winresoff;
    DWORD  e32_winreslen;
    WORD   e32_devid;                   
    WORD   e32_ddkver;                  
  } IMAGE_VXD_HEADER, *PIMAGE_VXD_HEADER;





























#pragma warning(disable:4103)

#pragma pack(pop)














typedef struct _IMAGE_FILE_HEADER {
    WORD    Machine;
    WORD    NumberOfSections;
    DWORD   TimeDateStamp;
    DWORD   PointerToSymbolTable;
    DWORD   NumberOfSymbols;
    WORD    SizeOfOptionalHeader;
    WORD    Characteristics;
} IMAGE_FILE_HEADER, *PIMAGE_FILE_HEADER;






















































typedef struct _IMAGE_DATA_DIRECTORY {
    DWORD   VirtualAddress;
    DWORD   Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;







typedef struct _IMAGE_OPTIONAL_HEADER {
    
    
    

    WORD    Magic;
    BYTE    MajorLinkerVersion;
    BYTE    MinorLinkerVersion;
    DWORD   SizeOfCode;
    DWORD   SizeOfInitializedData;
    DWORD   SizeOfUninitializedData;
    DWORD   AddressOfEntryPoint;
    DWORD   BaseOfCode;
    DWORD   BaseOfData;

    
    
    

    DWORD   ImageBase;
    DWORD   SectionAlignment;
    DWORD   FileAlignment;
    WORD    MajorOperatingSystemVersion;
    WORD    MinorOperatingSystemVersion;
    WORD    MajorImageVersion;
    WORD    MinorImageVersion;
    WORD    MajorSubsystemVersion;
    WORD    MinorSubsystemVersion;
    DWORD   Win32VersionValue;
    DWORD   SizeOfImage;
    DWORD   SizeOfHeaders;
    DWORD   CheckSum;
    WORD    Subsystem;
    WORD    DllCharacteristics;
    DWORD   SizeOfStackReserve;
    DWORD   SizeOfStackCommit;
    DWORD   SizeOfHeapReserve;
    DWORD   SizeOfHeapCommit;
    DWORD   LoaderFlags;
    DWORD   NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER32, *PIMAGE_OPTIONAL_HEADER32;

typedef struct _IMAGE_ROM_OPTIONAL_HEADER {
    WORD   Magic;
    BYTE   MajorLinkerVersion;
    BYTE   MinorLinkerVersion;
    DWORD  SizeOfCode;
    DWORD  SizeOfInitializedData;
    DWORD  SizeOfUninitializedData;
    DWORD  AddressOfEntryPoint;
    DWORD  BaseOfCode;
    DWORD  BaseOfData;
    DWORD  BaseOfBss;
    DWORD  GprMask;
    DWORD  CprMask[4];
    DWORD  GpValue;
} IMAGE_ROM_OPTIONAL_HEADER, *PIMAGE_ROM_OPTIONAL_HEADER;

typedef struct _IMAGE_OPTIONAL_HEADER64 {
    WORD        Magic;
    BYTE        MajorLinkerVersion;
    BYTE        MinorLinkerVersion;
    DWORD       SizeOfCode;
    DWORD       SizeOfInitializedData;
    DWORD       SizeOfUninitializedData;
    DWORD       AddressOfEntryPoint;
    DWORD       BaseOfCode;
    ULONGLONG   ImageBase;
    DWORD       SectionAlignment;
    DWORD       FileAlignment;
    WORD        MajorOperatingSystemVersion;
    WORD        MinorOperatingSystemVersion;
    WORD        MajorImageVersion;
    WORD        MinorImageVersion;
    WORD        MajorSubsystemVersion;
    WORD        MinorSubsystemVersion;
    DWORD       Win32VersionValue;
    DWORD       SizeOfImage;
    DWORD       SizeOfHeaders;
    DWORD       CheckSum;
    WORD        Subsystem;
    WORD        DllCharacteristics;
    ULONGLONG   SizeOfStackReserve;
    ULONGLONG   SizeOfStackCommit;
    ULONGLONG   SizeOfHeapReserve;
    ULONGLONG   SizeOfHeapCommit;
    DWORD       LoaderFlags;
    DWORD       NumberOfRvaAndSizes;
    IMAGE_DATA_DIRECTORY DataDirectory[16];
} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;
















typedef IMAGE_OPTIONAL_HEADER32             IMAGE_OPTIONAL_HEADER;
typedef PIMAGE_OPTIONAL_HEADER32            PIMAGE_OPTIONAL_HEADER;




typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;

typedef struct _IMAGE_NT_HEADERS {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER32 OptionalHeader;
} IMAGE_NT_HEADERS32, *PIMAGE_NT_HEADERS32;

typedef struct _IMAGE_ROM_HEADERS {
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
} IMAGE_ROM_HEADERS, *PIMAGE_ROM_HEADERS;





typedef IMAGE_NT_HEADERS32                  IMAGE_NT_HEADERS;
typedef PIMAGE_NT_HEADERS32                 PIMAGE_NT_HEADERS;































































typedef struct ANON_OBJECT_HEADER {
    WORD    Sig1;            
    WORD    Sig2;            
    WORD    Version;         
    WORD    Machine;
    DWORD   TimeDateStamp;
    CLSID   ClassID;         
    DWORD   SizeOfData;      
} ANON_OBJECT_HEADER;







typedef struct _IMAGE_SECTION_HEADER {
    BYTE    Name[8];
    union {
            DWORD   PhysicalAddress;
            DWORD   VirtualSize;
    } Misc;
    DWORD   VirtualAddress;
    DWORD   SizeOfRawData;
    DWORD   PointerToRawData;
    DWORD   PointerToRelocations;
    DWORD   PointerToLinenumbers;
    WORD    NumberOfRelocations;
    WORD    NumberOfLinenumbers;
    DWORD   Characteristics;
} IMAGE_SECTION_HEADER, *PIMAGE_SECTION_HEADER;

























































































#pragma warning(disable:4103)

#pragma pack(push,2)














typedef struct _IMAGE_SYMBOL {
    union {
        BYTE    ShortName[8];
        struct {
            DWORD   Short;     
            DWORD   Long;      
        } Name;
        DWORD   LongName[2];    
    } N;
    DWORD   Value;
    SHORT   SectionNumber;
    WORD    Type;
    BYTE    StorageClass;
    BYTE    NumberOfAuxSymbols;
} IMAGE_SYMBOL;
typedef IMAGE_SYMBOL  *PIMAGE_SYMBOL;































































































































typedef union _IMAGE_AUX_SYMBOL {
    struct {
        DWORD    TagIndex;                      
        union {
            struct {
                WORD    Linenumber;             
                WORD    Size;                   
            } LnSz;
           DWORD    TotalSize;
        } Misc;
        union {
            struct {                            
                DWORD    PointerToLinenumber;
                DWORD    PointerToNextFunction;
            } Function;
            struct {                            
                WORD     Dimension[4];
            } Array;
        } FcnAry;
        WORD    TvIndex;                        
    } Sym;
    struct {
        BYTE    Name[18];
    } File;
    struct {
        DWORD   Length;                         
        WORD    NumberOfRelocations;            
        WORD    NumberOfLinenumbers;            
        DWORD   CheckSum;                       
        SHORT   Number;                         
        BYTE    Selection;                      
    } Section;
} IMAGE_AUX_SYMBOL;
typedef IMAGE_AUX_SYMBOL  *PIMAGE_AUX_SYMBOL;



typedef enum IMAGE_AUX_SYMBOL_TYPE {
    IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1,
} IMAGE_AUX_SYMBOL_TYPE;

























#pragma warning(disable:4103)

#pragma pack(push,2)









typedef struct IMAGE_AUX_SYMBOL_TOKEN_DEF {
    BYTE  bAuxType;                  
    BYTE  bReserved;                 
    DWORD SymbolTableIndex;
    BYTE  rgbReserved[12];           
} IMAGE_AUX_SYMBOL_TOKEN_DEF;

typedef IMAGE_AUX_SYMBOL_TOKEN_DEF  *PIMAGE_AUX_SYMBOL_TOKEN_DEF;




























#pragma warning(disable:4103)

#pragma pack(pop)





























typedef struct _IMAGE_RELOCATION {
    union {
        DWORD   VirtualAddress;
        DWORD   RelocCount;             
    };
    DWORD   SymbolTableIndex;
    WORD    Type;
} IMAGE_RELOCATION;
typedef IMAGE_RELOCATION  *PIMAGE_RELOCATION;


























































































































































































































































































































































typedef struct _IMAGE_LINENUMBER {
    union {
        DWORD   SymbolTableIndex;               
        DWORD   VirtualAddress;                 
    } Type;
    WORD    Linenumber;                         
} IMAGE_LINENUMBER;
typedef IMAGE_LINENUMBER  *PIMAGE_LINENUMBER;































#pragma warning(disable:4103)

#pragma pack(pop)














typedef struct _IMAGE_BASE_RELOCATION {
    DWORD   VirtualAddress;
    DWORD   SizeOfBlock;

} IMAGE_BASE_RELOCATION;
typedef IMAGE_BASE_RELOCATION  * PIMAGE_BASE_RELOCATION;





























typedef struct _IMAGE_ARCHIVE_MEMBER_HEADER {
    BYTE     Name[16];                          
    BYTE     Date[12];                          
    BYTE     UserID[6];                         
    BYTE     GroupID[6];                        
    BYTE     Mode[8];                           
    BYTE     Size[10];                          
    BYTE     EndHeader[2];                      
} IMAGE_ARCHIVE_MEMBER_HEADER, *PIMAGE_ARCHIVE_MEMBER_HEADER;











typedef struct _IMAGE_EXPORT_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Name;
    DWORD   Base;
    DWORD   NumberOfFunctions;
    DWORD   NumberOfNames;
    DWORD   AddressOfFunctions;     
    DWORD   AddressOfNames;         
    DWORD   AddressOfNameOrdinals;  
} IMAGE_EXPORT_DIRECTORY, *PIMAGE_EXPORT_DIRECTORY;





typedef struct _IMAGE_IMPORT_BY_NAME {
    WORD    Hint;
    BYTE    Name[1];
} IMAGE_IMPORT_BY_NAME, *PIMAGE_IMPORT_BY_NAME;

























#pragma warning(disable:4103)

#pragma pack(push,8)









typedef struct _IMAGE_THUNK_DATA64 {
    union {
        ULONGLONG ForwarderString;  
        ULONGLONG Function;         
        ULONGLONG Ordinal;
        ULONGLONG AddressOfData;    
    } u1;
} IMAGE_THUNK_DATA64;
typedef IMAGE_THUNK_DATA64 * PIMAGE_THUNK_DATA64;




























#pragma warning(disable:4103)

#pragma pack(pop)









typedef struct _IMAGE_THUNK_DATA32 {
    union {
        DWORD ForwarderString;      
        DWORD Function;             
        DWORD Ordinal;
        DWORD AddressOfData;        
    } u1;
} IMAGE_THUNK_DATA32;
typedef IMAGE_THUNK_DATA32 * PIMAGE_THUNK_DATA32;












typedef void
(__stdcall *PIMAGE_TLS_CALLBACK) (
    PVOID DllHandle,
    DWORD Reason,
    PVOID Reserved
    );

typedef struct _IMAGE_TLS_DIRECTORY64 {
    ULONGLONG   StartAddressOfRawData;
    ULONGLONG   EndAddressOfRawData;
    ULONGLONG   AddressOfIndex;         
    ULONGLONG   AddressOfCallBacks;     
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY64;
typedef IMAGE_TLS_DIRECTORY64 * PIMAGE_TLS_DIRECTORY64;

typedef struct _IMAGE_TLS_DIRECTORY32 {
    DWORD   StartAddressOfRawData;
    DWORD   EndAddressOfRawData;
    DWORD   AddressOfIndex;             
    DWORD   AddressOfCallBacks;         
    DWORD   SizeOfZeroFill;
    DWORD   Characteristics;
} IMAGE_TLS_DIRECTORY32;
typedef IMAGE_TLS_DIRECTORY32 * PIMAGE_TLS_DIRECTORY32;












typedef IMAGE_THUNK_DATA32              IMAGE_THUNK_DATA;
typedef PIMAGE_THUNK_DATA32             PIMAGE_THUNK_DATA;

typedef IMAGE_TLS_DIRECTORY32           IMAGE_TLS_DIRECTORY;
typedef PIMAGE_TLS_DIRECTORY32          PIMAGE_TLS_DIRECTORY;


typedef struct _IMAGE_IMPORT_DESCRIPTOR {
    union {
        DWORD   Characteristics;            
        DWORD   OriginalFirstThunk;         
    };
    DWORD   TimeDateStamp;                  
                                            
                                            
                                            

    DWORD   ForwarderChain;                 
    DWORD   Name;
    DWORD   FirstThunk;                     
} IMAGE_IMPORT_DESCRIPTOR;
typedef IMAGE_IMPORT_DESCRIPTOR  *PIMAGE_IMPORT_DESCRIPTOR;





typedef struct _IMAGE_BOUND_IMPORT_DESCRIPTOR {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    NumberOfModuleForwarderRefs;

} IMAGE_BOUND_IMPORT_DESCRIPTOR,  *PIMAGE_BOUND_IMPORT_DESCRIPTOR;

typedef struct _IMAGE_BOUND_FORWARDER_REF {
    DWORD   TimeDateStamp;
    WORD    OffsetModuleName;
    WORD    Reserved;
} IMAGE_BOUND_FORWARDER_REF, *PIMAGE_BOUND_FORWARDER_REF;



















typedef struct _IMAGE_RESOURCE_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    WORD    NumberOfNamedEntries;
    WORD    NumberOfIdEntries;

} IMAGE_RESOURCE_DIRECTORY, *PIMAGE_RESOURCE_DIRECTORY;


















typedef struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
    union {
        struct {
            DWORD NameOffset:31;
            DWORD NameIsString:1;
        };
        DWORD   Name;
        WORD    Id;
    };
    union {
        DWORD   OffsetToData;
        struct {
            DWORD   OffsetToDirectory:31;
            DWORD   DataIsDirectory:1;
        };
    };
} IMAGE_RESOURCE_DIRECTORY_ENTRY, *PIMAGE_RESOURCE_DIRECTORY_ENTRY;










typedef struct _IMAGE_RESOURCE_DIRECTORY_STRING {
    WORD    Length;
    CHAR    NameString[ 1 ];
} IMAGE_RESOURCE_DIRECTORY_STRING, *PIMAGE_RESOURCE_DIRECTORY_STRING;


typedef struct _IMAGE_RESOURCE_DIR_STRING_U {
    WORD    Length;
    WCHAR   NameString[ 1 ];
} IMAGE_RESOURCE_DIR_STRING_U, *PIMAGE_RESOURCE_DIR_STRING_U;











typedef struct _IMAGE_RESOURCE_DATA_ENTRY {
    DWORD   OffsetToData;
    DWORD   Size;
    DWORD   CodePage;
    DWORD   Reserved;
} IMAGE_RESOURCE_DATA_ENTRY, *PIMAGE_RESOURCE_DATA_ENTRY;





typedef struct {
    DWORD   Size;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   GlobalFlagsClear;
    DWORD   GlobalFlagsSet;
    DWORD   CriticalSectionDefaultTimeout;
    DWORD   DeCommitFreeBlockThreshold;
    DWORD   DeCommitTotalFreeThreshold;
    DWORD   LockPrefixTable;            
    DWORD   MaximumAllocationSize;
    DWORD   VirtualMemoryThreshold;
    DWORD   ProcessHeapFlags;
    DWORD   ProcessAffinityMask;
    WORD    CSDVersion;
    WORD    Reserved1;
    DWORD   EditList;                   
    DWORD   SecurityCookie;             
    DWORD   SEHandlerTable;             
    DWORD   SEHandlerCount;
} IMAGE_LOAD_CONFIG_DIRECTORY32, *PIMAGE_LOAD_CONFIG_DIRECTORY32;

typedef struct {
    DWORD      Size;
    DWORD      TimeDateStamp;
    WORD       MajorVersion;
    WORD       MinorVersion;
    DWORD      GlobalFlagsClear;
    DWORD      GlobalFlagsSet;
    DWORD      CriticalSectionDefaultTimeout;
    ULONGLONG  DeCommitFreeBlockThreshold;
    ULONGLONG  DeCommitTotalFreeThreshold;
    ULONGLONG  LockPrefixTable;         
    ULONGLONG  MaximumAllocationSize;
    ULONGLONG  VirtualMemoryThreshold;
    ULONGLONG  ProcessAffinityMask;
    DWORD      ProcessHeapFlags;
    WORD       CSDVersion;
    WORD       Reserved1;
    ULONGLONG  EditList;                
    ULONGLONG  SecurityCookie;          
    ULONGLONG  SEHandlerTable;          
    ULONGLONG  SEHandlerCount;
} IMAGE_LOAD_CONFIG_DIRECTORY64, *PIMAGE_LOAD_CONFIG_DIRECTORY64;





typedef IMAGE_LOAD_CONFIG_DIRECTORY32     IMAGE_LOAD_CONFIG_DIRECTORY;
typedef PIMAGE_LOAD_CONFIG_DIRECTORY32    PIMAGE_LOAD_CONFIG_DIRECTORY;











typedef struct _IMAGE_CE_RUNTIME_FUNCTION_ENTRY {
    DWORD FuncStart;
    DWORD PrologLen : 8;
    DWORD FuncLen : 22;
    DWORD ThirtyTwoBit : 1;
    DWORD ExceptionFlag : 1;
} IMAGE_CE_RUNTIME_FUNCTION_ENTRY, * PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;

typedef struct _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY {
    ULONGLONG BeginAddress;
    ULONGLONG EndAddress;
    ULONGLONG ExceptionHandler;
    ULONGLONG HandlerData;
    ULONGLONG PrologEndAddress;
} IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;

typedef struct _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD ExceptionHandler;
    DWORD HandlerData;
    DWORD PrologEndAddress;
} IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY, *PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;

typedef struct _IMAGE_RUNTIME_FUNCTION_ENTRY {
    DWORD BeginAddress;
    DWORD EndAddress;
    DWORD UnwindInfoAddress;
} _IMAGE_RUNTIME_FUNCTION_ENTRY, *_PIMAGE_RUNTIME_FUNCTION_ENTRY;

typedef  _IMAGE_RUNTIME_FUNCTION_ENTRY  IMAGE_IA64_RUNTIME_FUNCTION_ENTRY;
typedef _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_IA64_RUNTIME_FUNCTION_ENTRY;















typedef  _IMAGE_RUNTIME_FUNCTION_ENTRY  IMAGE_RUNTIME_FUNCTION_ENTRY;
typedef _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_RUNTIME_FUNCTION_ENTRY;







typedef struct _IMAGE_DEBUG_DIRECTORY {
    DWORD   Characteristics;
    DWORD   TimeDateStamp;
    WORD    MajorVersion;
    WORD    MinorVersion;
    DWORD   Type;
    DWORD   SizeOfData;
    DWORD   AddressOfRawData;
    DWORD   PointerToRawData;
} IMAGE_DEBUG_DIRECTORY, *PIMAGE_DEBUG_DIRECTORY;















typedef struct _IMAGE_COFF_SYMBOLS_HEADER {
    DWORD   NumberOfSymbols;
    DWORD   LvaToFirstSymbol;
    DWORD   NumberOfLinenumbers;
    DWORD   LvaToFirstLinenumber;
    DWORD   RvaToFirstByteOfCode;
    DWORD   RvaToLastByteOfCode;
    DWORD   RvaToFirstByteOfData;
    DWORD   RvaToLastByteOfData;
} IMAGE_COFF_SYMBOLS_HEADER, *PIMAGE_COFF_SYMBOLS_HEADER;






typedef struct _FPO_DATA {
    DWORD       ulOffStart;             
    DWORD       cbProcSize;             
    DWORD       cdwLocals;              
    WORD        cdwParams;              
    WORD        cbProlog : 8;           
    WORD        cbRegs   : 3;           
    WORD        fHasSEH  : 1;           
    WORD        fUseBP   : 1;           
    WORD        reserved : 1;           
    WORD        cbFrame  : 2;           
} FPO_DATA, *PFPO_DATA;





typedef struct _IMAGE_DEBUG_MISC {
    DWORD       DataType;               
    DWORD       Length;                 
                                        
    BOOLEAN     Unicode;                
    BYTE        Reserved[ 3 ];
    BYTE        Data[ 1 ];              
} IMAGE_DEBUG_MISC, *PIMAGE_DEBUG_MISC;








typedef struct _IMAGE_FUNCTION_ENTRY {
    DWORD   StartingAddress;
    DWORD   EndingAddress;
    DWORD   EndOfPrologue;
} IMAGE_FUNCTION_ENTRY, *PIMAGE_FUNCTION_ENTRY;

typedef struct _IMAGE_FUNCTION_ENTRY64 {
    ULONGLONG   StartingAddress;
    ULONGLONG   EndingAddress;
    union {
        ULONGLONG   EndOfPrologue;
        ULONGLONG   UnwindInfoAddress;
    };
} IMAGE_FUNCTION_ENTRY64, *PIMAGE_FUNCTION_ENTRY64;





















typedef struct _IMAGE_SEPARATE_DEBUG_HEADER {
    WORD        Signature;
    WORD        Flags;
    WORD        Machine;
    WORD        Characteristics;
    DWORD       TimeDateStamp;
    DWORD       CheckSum;
    DWORD       ImageBase;
    DWORD       SizeOfImage;
    DWORD       NumberOfSections;
    DWORD       ExportedNamesSize;
    DWORD       DebugDirectorySize;
    DWORD       SectionAlignment;
    DWORD       Reserved[2];
} IMAGE_SEPARATE_DEBUG_HEADER, *PIMAGE_SEPARATE_DEBUG_HEADER;

typedef struct _NON_PAGED_DEBUG_INFO {
    WORD        Signature;
    WORD        Flags;
    DWORD       Size;
    WORD        Machine;
    WORD        Characteristics;
    DWORD       TimeDateStamp;
    DWORD       CheckSum;
    DWORD       SizeOfImage;
    ULONGLONG   ImageBase;
    
    
} NON_PAGED_DEBUG_INFO, *PNON_PAGED_DEBUG_INFO;











                                                









typedef struct _ImageArchitectureHeader {
    unsigned int AmaskValue: 1;                 
                                                
    int :7;                                     
    unsigned int AmaskShift: 8;                 
    int :16;                                    
    DWORD FirstEntryRVA;                        
} IMAGE_ARCHITECTURE_HEADER, *PIMAGE_ARCHITECTURE_HEADER;

typedef struct _ImageArchitectureEntry {
    DWORD FixupInstRVA;                         
    DWORD NewInst;                              
} IMAGE_ARCHITECTURE_ENTRY, *PIMAGE_ARCHITECTURE_ENTRY;




























#pragma warning(disable:4103)

#pragma pack(pop)
















typedef struct IMPORT_OBJECT_HEADER {
    WORD    Sig1;                       
    WORD    Sig2;                       
    WORD    Version;
    WORD    Machine;
    DWORD   TimeDateStamp;              
    DWORD   SizeOfData;                 

    union {
        WORD    Ordinal;                
        WORD    Hint;
    };

    WORD    Type : 2;                   
    WORD    NameType : 3;               
    WORD    Reserved : 11;              
} IMPORT_OBJECT_HEADER;

typedef enum IMPORT_OBJECT_TYPE
{
    IMPORT_OBJECT_CODE = 0,
    IMPORT_OBJECT_DATA = 1,
    IMPORT_OBJECT_CONST = 2,
} IMPORT_OBJECT_TYPE;

typedef enum IMPORT_OBJECT_NAME_TYPE
{
    IMPORT_OBJECT_ORDINAL = 0,          
    IMPORT_OBJECT_NAME = 1,             
    IMPORT_OBJECT_NAME_NO_PREFIX = 2,   
    IMPORT_OBJECT_NAME_UNDECORATE = 3,  
                                        
} IMPORT_OBJECT_NAME_TYPE;





typedef enum ReplacesCorHdrNumericDefines
{

    COMIMAGE_FLAGS_ILONLY               =0x00000001,
    COMIMAGE_FLAGS_32BITREQUIRED        =0x00000002,
    COMIMAGE_FLAGS_IL_LIBRARY           =0x00000004,
    COMIMAGE_FLAGS_STRONGNAMESIGNED     =0x00000008,
    COMIMAGE_FLAGS_TRACKDEBUGDATA       =0x00010000,


    COR_VERSION_MAJOR_V2                =2,
    COR_VERSION_MAJOR                   =COR_VERSION_MAJOR_V2,
    COR_VERSION_MINOR                   =0,
    COR_DELETED_NAME_LENGTH             =8,
    COR_VTABLEGAP_NAME_LENGTH           =8,


    NATIVE_TYPE_MAX_CB                  =1,   
    COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE=0xFF,


    IMAGE_COR_MIH_METHODRVA             =0x01,
    IMAGE_COR_MIH_EHRVA                 =0x02,    
    IMAGE_COR_MIH_BASICBLOCK            =0x08,


    COR_VTABLE_32BIT                    =0x01,          
    COR_VTABLE_64BIT                    =0x02,          
    COR_VTABLE_FROM_UNMANAGED           =0x04,          
    COR_VTABLE_CALL_MOST_DERIVED        =0x10,          


    IMAGE_COR_EATJ_THUNK_SIZE           =32,            


    
    MAX_CLASS_NAME                      =1024,
    MAX_PACKAGE_NAME                    =1024,
} ReplacesCorHdrNumericDefines;


typedef struct IMAGE_COR20_HEADER
{
    
    DWORD                   cb;              
    WORD                    MajorRuntimeVersion;
    WORD                    MinorRuntimeVersion;
    
    
    IMAGE_DATA_DIRECTORY    MetaData;        
    DWORD                   Flags;           
    DWORD                   EntryPointToken;
    
    
    IMAGE_DATA_DIRECTORY    Resources;
    IMAGE_DATA_DIRECTORY    StrongNameSignature;

    
    IMAGE_DATA_DIRECTORY    CodeManagerTable;
    IMAGE_DATA_DIRECTORY    VTableFixups;
    IMAGE_DATA_DIRECTORY    ExportAddressTableJumps;

    
    IMAGE_DATA_DIRECTORY    ManagedNativeHeader;
    
} IMAGE_COR20_HEADER, *PIMAGE_COR20_HEADER;




























































typedef union _SLIST_HEADER {
    ULONGLONG Alignment;
    struct {
        SINGLE_LIST_ENTRY Next;
        WORD   Depth;
        WORD   Sequence;
    };
} SLIST_HEADER, *PSLIST_HEADER;






__declspec(dllimport)
void
__stdcall
RtlInitializeSListHead (
     PSLIST_HEADER ListHead
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
RtlFirstEntrySList (
     const SLIST_HEADER *ListHead
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
RtlInterlockedPopEntrySList (
     PSLIST_HEADER ListHead
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
RtlInterlockedPushEntrySList (
     PSLIST_HEADER ListHead,
     PSINGLE_LIST_ENTRY ListEntry
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
RtlInterlockedFlushSList (
     PSLIST_HEADER ListHead
    );

__declspec(dllimport)
WORD  
__stdcall
RtlQueryDepthSList (
     PSLIST_HEADER ListHead
    );

















__declspec(dllimport)
void
__stdcall
RtlCaptureContext (
     PCONTEXT ContextRecord
    );























































__declspec(dllimport)
SIZE_T
__stdcall
RtlCompareMemory (
    const void *Source1,
    const void *Source2,
    SIZE_T Length
    );











__forceinline
PVOID
RtlSecureZeroMemory(
     PVOID ptr,
     SIZE_T cnt
    )
{
    volatile char *vptr = (volatile char *)ptr;







    while (cnt) {
        *vptr = 0;
        vptr++;
        cnt--;
    }



    return ptr;
}




typedef struct _MESSAGE_RESOURCE_ENTRY {
    WORD   Length;
    WORD   Flags;
    BYTE  Text[ 1 ];
} MESSAGE_RESOURCE_ENTRY, *PMESSAGE_RESOURCE_ENTRY;



typedef struct _MESSAGE_RESOURCE_BLOCK {
    DWORD LowId;
    DWORD HighId;
    DWORD OffsetToEntries;
} MESSAGE_RESOURCE_BLOCK, *PMESSAGE_RESOURCE_BLOCK;

typedef struct _MESSAGE_RESOURCE_DATA {
    DWORD NumberOfBlocks;
    MESSAGE_RESOURCE_BLOCK Blocks[ 1 ];
} MESSAGE_RESOURCE_DATA, *PMESSAGE_RESOURCE_DATA;

typedef struct _OSVERSIONINFOA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
} OSVERSIONINFOA, *POSVERSIONINFOA, *LPOSVERSIONINFOA;

typedef struct _OSVERSIONINFOW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
} OSVERSIONINFOW, *POSVERSIONINFOW, *LPOSVERSIONINFOW, RTL_OSVERSIONINFOW, *PRTL_OSVERSIONINFOW;





typedef OSVERSIONINFOA OSVERSIONINFO;
typedef POSVERSIONINFOA POSVERSIONINFO;
typedef LPOSVERSIONINFOA LPOSVERSIONINFO;


typedef struct _OSVERSIONINFOEXA {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    CHAR   szCSDVersion[ 128 ];     
    WORD   wServicePackMajor;
    WORD   wServicePackMinor;
    WORD   wSuiteMask;
    BYTE  wProductType;
    BYTE  wReserved;
} OSVERSIONINFOEXA, *POSVERSIONINFOEXA, *LPOSVERSIONINFOEXA;
typedef struct _OSVERSIONINFOEXW {
    DWORD dwOSVersionInfoSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    DWORD dwBuildNumber;
    DWORD dwPlatformId;
    WCHAR  szCSDVersion[ 128 ];     
    WORD   wServicePackMajor;
    WORD   wServicePackMinor;
    WORD   wSuiteMask;
    BYTE  wProductType;
    BYTE  wReserved;
} OSVERSIONINFOEXW, *POSVERSIONINFOEXW, *LPOSVERSIONINFOEXW, RTL_OSVERSIONINFOEXW, *PRTL_OSVERSIONINFOEXW;





typedef OSVERSIONINFOEXA OSVERSIONINFOEX;
typedef POSVERSIONINFOEXA POSVERSIONINFOEX;
typedef LPOSVERSIONINFOEXA LPOSVERSIONINFOEX;



























































__declspec(dllimport)
ULONGLONG
__stdcall
VerSetConditionMask(
          ULONGLONG   ConditionMask,
          DWORD   TypeMask,
          BYTE    Condition
        );


typedef struct _RTL_CRITICAL_SECTION_DEBUG {
    WORD   Type;
    WORD   CreatorBackTraceIndex;
    struct _RTL_CRITICAL_SECTION *CriticalSection;
    LIST_ENTRY ProcessLocksList;
    DWORD EntryCount;
    DWORD ContentionCount;
    DWORD Spare[ 2 ];
} RTL_CRITICAL_SECTION_DEBUG, *PRTL_CRITICAL_SECTION_DEBUG, RTL_RESOURCE_DEBUG, *PRTL_RESOURCE_DEBUG;




typedef struct _RTL_CRITICAL_SECTION {
    PRTL_CRITICAL_SECTION_DEBUG DebugInfo;

    
    
    
    

    LONG LockCount;
    LONG RecursionCount;
    HANDLE OwningThread;        
    HANDLE LockSemaphore;
    ULONG_PTR SpinCount;        
} RTL_CRITICAL_SECTION, *PRTL_CRITICAL_SECTION;

typedef void (__stdcall * RTL_VERIFIER_DLL_LOAD_CALLBACK) (
    PWSTR DllName,
    PVOID DllBase,
    SIZE_T DllSize,
    PVOID Reserved
    );

typedef void (__stdcall * RTL_VERIFIER_DLL_UNLOAD_CALLBACK) (
    PWSTR DllName,
    PVOID DllBase,
    SIZE_T DllSize,
    PVOID Reserved
    );

typedef void (__stdcall * RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK) (
    PVOID AllocationBase,
    SIZE_T AllocationSize
    );

typedef struct _RTL_VERIFIER_THUNK_DESCRIPTOR {

    PCHAR ThunkName;
    PVOID ThunkOldAddress;
    PVOID ThunkNewAddress;

} RTL_VERIFIER_THUNK_DESCRIPTOR, *PRTL_VERIFIER_THUNK_DESCRIPTOR;

typedef struct _RTL_VERIFIER_DLL_DESCRIPTOR {

    PWCHAR DllName;
    DWORD DllFlags;
    PVOID DllAddress;
    PRTL_VERIFIER_THUNK_DESCRIPTOR DllThunks;

} RTL_VERIFIER_DLL_DESCRIPTOR, *PRTL_VERIFIER_DLL_DESCRIPTOR;

typedef struct _RTL_VERIFIER_PROVIDER_DESCRIPTOR {

    
    
    

    DWORD Length;        
    PRTL_VERIFIER_DLL_DESCRIPTOR ProviderDlls;
    RTL_VERIFIER_DLL_LOAD_CALLBACK ProviderDllLoadCallback;
    RTL_VERIFIER_DLL_UNLOAD_CALLBACK ProviderDllUnloadCallback;
    
    
    
    
        
    PWSTR VerifierImage;
    DWORD VerifierFlags;
    DWORD VerifierDebug;
    
    PVOID RtlpGetStackTraceAddress;
    PVOID RtlpDebugPageHeapCreate;
    PVOID RtlpDebugPageHeapDestroy;

    
    
    
    
    RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK ProviderNtdllHeapFreeCallback;

} RTL_VERIFIER_PROVIDER_DESCRIPTOR, *PRTL_VERIFIER_PROVIDER_DESCRIPTOR;


























































































































void
__stdcall
RtlApplicationVerifierStop (
         ULONG_PTR Code,
         PSTR Message,
         ULONG_PTR Param1,
         PSTR Description1,
         ULONG_PTR Param2,
         PSTR Description2,
         ULONG_PTR Param3,
         PSTR Description3,
         ULONG_PTR Param4,
         PSTR Description4
    );

typedef LONG (__stdcall *PVECTORED_EXCEPTION_HANDLER)(
    struct _EXCEPTION_POINTERS *ExceptionInfo
    );








typedef enum _HEAP_INFORMATION_CLASS {

    HeapCompatibilityInformation

} HEAP_INFORMATION_CLASS;

__declspec(dllimport)
DWORD   
__stdcall
RtlSetHeapInformation (
     PVOID HeapHandle,
     HEAP_INFORMATION_CLASS HeapInformationClass,
     PVOID HeapInformation ,
     SIZE_T HeapInformationLength 
    );

__declspec(dllimport)
DWORD   
__stdcall
RtlQueryHeapInformation (
     PVOID HeapHandle,
     HEAP_INFORMATION_CLASS HeapInformationClass,
     PVOID HeapInformation ,
     SIZE_T HeapInformationLength ,
     PSIZE_T ReturnLength 
    );





DWORD
__stdcall
RtlMultipleAllocateHeap (
     PVOID HeapHandle,
     DWORD Flags,
     SIZE_T Size,
     DWORD Count,
     PVOID * Array
    );

DWORD
__stdcall
RtlMultipleFreeHeap (
     PVOID HeapHandle,
     DWORD Flags,
     DWORD Count,
     PVOID * Array
    );
    











typedef void (__stdcall * WAITORTIMERCALLBACKFUNC) (PVOID, BOOLEAN );   
typedef void (__stdcall * WORKERCALLBACKFUNC) (PVOID );                 
typedef void (__stdcall * APC_CALLBACK_FUNCTION) (DWORD   , PVOID, PVOID); 
typedef
void
(__stdcall *PFLS_CALLBACK_FUNCTION) (
     PVOID lpFlsData
    );



typedef enum _ACTIVATION_CONTEXT_INFO_CLASS {
    ActivationContextBasicInformation                       = 1,
    ActivationContextDetailedInformation                    = 2,
    AssemblyDetailedInformationInActivationContext          = 3,
    FileInformationInAssemblyOfAssemblyInActivationContext  = 4,
    MaxActivationContextInfoClass,

    
    
    
    AssemblyDetailedInformationInActivationContxt           = 3,
    FileInformationInAssemblyOfAssemblyInActivationContxt   = 4
} ACTIVATION_CONTEXT_INFO_CLASS;




typedef struct _ACTIVATION_CONTEXT_QUERY_INDEX {
    DWORD ulAssemblyIndex; 
    DWORD ulFileIndexInAssembly; 
} ACTIVATION_CONTEXT_QUERY_INDEX, * PACTIVATION_CONTEXT_QUERY_INDEX;

typedef const struct _ACTIVATION_CONTEXT_QUERY_INDEX * PCACTIVATION_CONTEXT_QUERY_INDEX;







typedef struct _ASSEMBLY_FILE_DETAILED_INFORMATION {
    DWORD ulFlags;
    DWORD ulFilenameLength;
    DWORD ulPathLength; 

    PCWSTR lpFileName;
    PCWSTR lpFilePath;   
} ASSEMBLY_FILE_DETAILED_INFORMATION, *PASSEMBLY_FILE_DETAILED_INFORMATION;
typedef const ASSEMBLY_FILE_DETAILED_INFORMATION *PCASSEMBLY_FILE_DETAILED_INFORMATION;










typedef struct _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION {
    DWORD ulFlags;
    DWORD ulEncodedAssemblyIdentityLength;      
    DWORD ulManifestPathType;                   
    DWORD ulManifestPathLength;                 
    LARGE_INTEGER liManifestLastWriteTime;      
    DWORD ulPolicyPathType;                     
    DWORD ulPolicyPathLength;                   
    LARGE_INTEGER liPolicyLastWriteTime;        
    DWORD ulMetadataSatelliteRosterIndex;
    
    DWORD ulManifestVersionMajor;               
    DWORD ulManifestVersionMinor;               
    DWORD ulPolicyVersionMajor;                 
    DWORD ulPolicyVersionMinor;                 
    DWORD ulAssemblyDirectoryNameLength;        

    PCWSTR lpAssemblyEncodedAssemblyIdentity;
    PCWSTR lpAssemblyManifestPath;
    PCWSTR lpAssemblyPolicyPath;
    PCWSTR lpAssemblyDirectoryName;

    DWORD  ulFileCount;
} ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION, * PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

typedef const struct _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION * PCACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION ;

typedef struct _ACTIVATION_CONTEXT_DETAILED_INFORMATION {
    DWORD dwFlags;
    DWORD ulFormatVersion;
    DWORD ulAssemblyCount;
    DWORD ulRootManifestPathType;
    DWORD ulRootManifestPathChars;
    DWORD ulRootConfigurationPathType;
    DWORD ulRootConfigurationPathChars;
    DWORD ulAppDirPathType;
    DWORD ulAppDirPathChars;
    PCWSTR lpRootManifestPath;
    PCWSTR lpRootConfigurationPath;
    PCWSTR lpAppDirPath;
} ACTIVATION_CONTEXT_DETAILED_INFORMATION, *PACTIVATION_CONTEXT_DETAILED_INFORMATION;

typedef const struct _ACTIVATION_CONTEXT_DETAILED_INFORMATION *PCACTIVATION_CONTEXT_DETAILED_INFORMATION;













































typedef struct _EVENTLOGRECORD {
    DWORD  Length;        
    DWORD  Reserved;      
    DWORD  RecordNumber;  
    DWORD  TimeGenerated; 
    DWORD  TimeWritten;   
    DWORD  EventID;
    WORD   EventType;
    WORD   NumStrings;
    WORD   EventCategory;
    WORD   ReservedFlags; 
    DWORD  ClosingRecordNumber; 
    DWORD  StringOffset;  
    DWORD  UserSidLength;
    DWORD  UserSidOffset;
    DWORD  DataLength;
    DWORD  DataOffset;    
    
    
    
    
    
    
    
    
    
    
    
} EVENTLOGRECORD, *PEVENTLOGRECORD;






#pragma warning(push)

#pragma warning(disable : 4200)
typedef struct _EVENTSFORLOGFILE{
	DWORD			ulSize;
    WCHAR   		szLogicalLogFile[256];        
    DWORD			ulNumRecords;
	EVENTLOGRECORD 	pEventLogRecords[];
}EVENTSFORLOGFILE, *PEVENTSFORLOGFILE;

typedef struct _PACKEDEVENTINFO{
    DWORD               ulSize;  
    DWORD               ulNumEventsForLogFile; 
    DWORD 				ulOffsets[];           
}PACKEDEVENTINFO, *PPACKEDEVENTINFO;


#pragma warning(pop)
























































                                                    


                                                    


                                                    


                                                    
                                                    































































                                            






























































typedef enum _CM_SERVICE_NODE_TYPE {
    DriverType               = 0x00000001,
    FileSystemType           = 0x00000002,
    Win32ServiceOwnProcess   = 0x00000010,
    Win32ServiceShareProcess = 0x00000020,
    AdapterType              = 0x00000004,
    RecognizerType           = 0x00000008
} SERVICE_NODE_TYPE;

typedef enum _CM_SERVICE_LOAD_TYPE {
    BootLoad    = 0x00000000,
    SystemLoad  = 0x00000001,
    AutoLoad    = 0x00000002,
    DemandLoad  = 0x00000003,
    DisableLoad = 0x00000004
} SERVICE_LOAD_TYPE;

typedef enum _CM_ERROR_CONTROL_TYPE {
    IgnoreError   = 0x00000000,
    NormalError   = 0x00000001,
    SevereError   = 0x00000002,
    CriticalError = 0x00000003
} SERVICE_ERROR_TYPE;










typedef struct _TAPE_ERASE {
    DWORD Type;
    BOOLEAN Immediate;
} TAPE_ERASE, *PTAPE_ERASE;












typedef struct _TAPE_PREPARE {
    DWORD Operation;
    BOOLEAN Immediate;
} TAPE_PREPARE, *PTAPE_PREPARE;










typedef struct _TAPE_WRITE_MARKS {
    DWORD Type;
    DWORD Count;
    BOOLEAN Immediate;
} TAPE_WRITE_MARKS, *PTAPE_WRITE_MARKS;









typedef struct _TAPE_GET_POSITION {
    DWORD Type;
    DWORD Partition;
    LARGE_INTEGER Offset;
} TAPE_GET_POSITION, *PTAPE_GET_POSITION;
















typedef struct _TAPE_SET_POSITION {
    DWORD Method;
    DWORD Partition;
    LARGE_INTEGER Offset;
    BOOLEAN Immediate;
} TAPE_SET_POSITION, *PTAPE_SET_POSITION;























































































typedef struct _TAPE_GET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD DefaultBlockSize;
    DWORD MaximumBlockSize;
    DWORD MinimumBlockSize;
    DWORD MaximumPartitionCount;
    DWORD FeaturesLow;
    DWORD FeaturesHigh;
    DWORD EOTWarningZoneSize;
} TAPE_GET_DRIVE_PARAMETERS, *PTAPE_GET_DRIVE_PARAMETERS;





typedef struct _TAPE_SET_DRIVE_PARAMETERS {
    BOOLEAN ECC;
    BOOLEAN Compression;
    BOOLEAN DataPadding;
    BOOLEAN ReportSetmarks;
    DWORD EOTWarningZoneSize;
} TAPE_SET_DRIVE_PARAMETERS, *PTAPE_SET_DRIVE_PARAMETERS;





typedef struct _TAPE_GET_MEDIA_PARAMETERS {
    LARGE_INTEGER Capacity;
    LARGE_INTEGER Remaining;
    DWORD BlockSize;
    DWORD PartitionCount;
    BOOLEAN WriteProtected;
} TAPE_GET_MEDIA_PARAMETERS, *PTAPE_GET_MEDIA_PARAMETERS;





typedef struct _TAPE_SET_MEDIA_PARAMETERS {
    DWORD BlockSize;
} TAPE_SET_MEDIA_PARAMETERS, *PTAPE_SET_MEDIA_PARAMETERS;









typedef struct _TAPE_CREATE_PARTITION {
    DWORD Method;
    DWORD Count;
    DWORD Size;
} TAPE_CREATE_PARTITION, *PTAPE_CREATE_PARTITION;











typedef struct _TAPE_WMI_OPERATIONS {
   DWORD Method;
   DWORD DataBufferSize;
   PVOID DataBuffer;
} TAPE_WMI_OPERATIONS, *PTAPE_WMI_OPERATIONS;




typedef enum _TAPE_DRIVE_PROBLEM_TYPE {
   TapeDriveProblemNone, TapeDriveReadWriteWarning,
   TapeDriveReadWriteError, TapeDriveReadWarning,
   TapeDriveWriteWarning, TapeDriveReadError,
   TapeDriveWriteError, TapeDriveHardwareError,
   TapeDriveUnsupportedMedia, TapeDriveScsiConnectionError,
   TapeDriveTimetoClean, TapeDriveCleanDriveNow,
   TapeDriveMediaLifeExpired, TapeDriveSnappedTape
} TAPE_DRIVE_PROBLEM_TYPE;













































__inline struct _TEB * NtCurrentTeb( void ) { return (struct _TEB *) (ULONG_PTR) __readfsdword (0x18); }


































}











typedef UINT_PTR            WPARAM;
typedef LONG_PTR            LPARAM;
typedef LONG_PTR            LRESULT;






















struct HWND__ { int unused; }; typedef struct HWND__ *HWND;
struct HHOOK__ { int unused; }; typedef struct HHOOK__ *HHOOK;





typedef WORD                ATOM;

typedef HANDLE          *SPHANDLE;
typedef HANDLE           *LPHANDLE;
typedef HANDLE              HGLOBAL;
typedef HANDLE              HLOCAL;
typedef HANDLE              GLOBALHANDLE;
typedef HANDLE              LOCALHANDLE;






typedef int ( __stdcall *FARPROC)();
typedef int ( __stdcall *NEARPROC)();
typedef int (__stdcall *PROC)();









typedef void * HGDIOBJ;





struct HKEY__ { int unused; }; typedef struct HKEY__ *HKEY;
typedef HKEY *PHKEY;


struct HACCEL__ { int unused; }; typedef struct HACCEL__ *HACCEL;


struct HBITMAP__ { int unused; }; typedef struct HBITMAP__ *HBITMAP;
struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;


struct HCOLORSPACE__ { int unused; }; typedef struct HCOLORSPACE__ *HCOLORSPACE;


struct HDC__ { int unused; }; typedef struct HDC__ *HDC;

struct HGLRC__ { int unused; }; typedef struct HGLRC__ *HGLRC;          
struct HDESK__ { int unused; }; typedef struct HDESK__ *HDESK;
struct HENHMETAFILE__ { int unused; }; typedef struct HENHMETAFILE__ *HENHMETAFILE;

struct HFONT__ { int unused; }; typedef struct HFONT__ *HFONT;

struct HICON__ { int unused; }; typedef struct HICON__ *HICON;

struct HMENU__ { int unused; }; typedef struct HMENU__ *HMENU;

struct HMETAFILE__ { int unused; }; typedef struct HMETAFILE__ *HMETAFILE;
struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;
typedef HINSTANCE HMODULE;      

struct HPALETTE__ { int unused; }; typedef struct HPALETTE__ *HPALETTE;
struct HPEN__ { int unused; }; typedef struct HPEN__ *HPEN;

struct HRGN__ { int unused; }; typedef struct HRGN__ *HRGN;
struct HRSRC__ { int unused; }; typedef struct HRSRC__ *HRSRC;
struct HSTR__ { int unused; }; typedef struct HSTR__ *HSTR;
struct HTASK__ { int unused; }; typedef struct HTASK__ *HTASK;
struct HWINSTA__ { int unused; }; typedef struct HWINSTA__ *HWINSTA;
struct HKL__ { int unused; }; typedef struct HKL__ *HKL;



struct HMONITOR__ { int unused; }; typedef struct HMONITOR__ *HMONITOR;
struct HWINEVENTHOOK__ { int unused; }; typedef struct HWINEVENTHOOK__ *HWINEVENTHOOK;

struct HUMPD__ { int unused; }; typedef struct HUMPD__ *HUMPD;



typedef int HFILE;
typedef HICON HCURSOR;      





typedef DWORD   COLORREF;
typedef DWORD   *LPCOLORREF;



typedef struct tagRECT
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECT, *PRECT,  *NPRECT,  *LPRECT;

typedef const RECT * LPCRECT;

typedef struct _RECTL       
{
    LONG    left;
    LONG    top;
    LONG    right;
    LONG    bottom;
} RECTL, *PRECTL, *LPRECTL;

typedef const RECTL * LPCRECTL;

typedef struct tagPOINT
{
    LONG  x;
    LONG  y;
} POINT, *PPOINT,  *NPPOINT,  *LPPOINT;

typedef struct _POINTL      
{
    LONG  x;
    LONG  y;
} POINTL, *PPOINTL;

typedef struct tagSIZE
{
    LONG        cx;
    LONG        cy;
} SIZE, *PSIZE, *LPSIZE;

typedef SIZE               SIZEL;
typedef SIZE               *PSIZEL, *LPSIZEL;

typedef struct tagPOINTS
{

    SHORT   x;
    SHORT   y;




} POINTS, *PPOINTS, *LPPOINTS;





typedef struct _FILETIME {
    DWORD dwLowDateTime;
    DWORD dwHighDateTime;
} FILETIME, *PFILETIME, *LPFILETIME;



































}


















#pragma once





























extern "C" {





















































































































































































typedef struct _OVERLAPPED {
    ULONG_PTR Internal;
    ULONG_PTR InternalHigh;
    union {
        struct {
            DWORD Offset;
            DWORD OffsetHigh;
        };

        PVOID Pointer;
    };

    HANDLE  hEvent;
} OVERLAPPED, *LPOVERLAPPED;

typedef struct _SECURITY_ATTRIBUTES {
    DWORD nLength;
    LPVOID lpSecurityDescriptor;
    BOOL bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

typedef struct _PROCESS_INFORMATION {
    HANDLE hProcess;
    HANDLE hThread;
    DWORD dwProcessId;
    DWORD dwThreadId;
} PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;



















typedef struct _SYSTEMTIME {
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
} SYSTEMTIME, *PSYSTEMTIME, *LPSYSTEMTIME;


typedef DWORD (__stdcall *PTHREAD_START_ROUTINE)(
    LPVOID lpThreadParameter
    );
typedef PTHREAD_START_ROUTINE LPTHREAD_START_ROUTINE;








typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION PCRITICAL_SECTION;
typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;

typedef RTL_CRITICAL_SECTION_DEBUG CRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG PCRITICAL_SECTION_DEBUG;
typedef PRTL_CRITICAL_SECTION_DEBUG LPCRITICAL_SECTION_DEBUG;

__declspec(dllimport)
      
PVOID
__stdcall
EncodePointer (
           PVOID Ptr
    );

__declspec(dllimport)
      
PVOID
__stdcall
DecodePointer (
           PVOID Ptr
    );

__declspec(dllimport)
      
PVOID
__stdcall
EncodeSystemPointer (
           PVOID Ptr
    );

__declspec(dllimport)
      
PVOID
__stdcall
DecodeSystemPointer (
           PVOID Ptr
    );


typedef PLDT_ENTRY LPLDT_ENTRY;












































































































typedef struct _COMMPROP {
    WORD wPacketLength;
    WORD wPacketVersion;
    DWORD dwServiceMask;
    DWORD dwReserved1;
    DWORD dwMaxTxQueue;
    DWORD dwMaxRxQueue;
    DWORD dwMaxBaud;
    DWORD dwProvSubType;
    DWORD dwProvCapabilities;
    DWORD dwSettableParams;
    DWORD dwSettableBaud;
    WORD wSettableData;
    WORD wSettableStopParity;
    DWORD dwCurrentTxQueue;
    DWORD dwCurrentRxQueue;
    DWORD dwProvSpec1;
    DWORD dwProvSpec2;
    WCHAR wcProvChar[1];
} COMMPROP,*LPCOMMPROP;







typedef struct _COMSTAT {
    DWORD fCtsHold : 1;
    DWORD fDsrHold : 1;
    DWORD fRlsdHold : 1;
    DWORD fXoffHold : 1;
    DWORD fXoffSent : 1;
    DWORD fEof : 1;
    DWORD fTxim : 1;
    DWORD fReserved : 25;
    DWORD cbInQue;
    DWORD cbOutQue;
} COMSTAT, *LPCOMSTAT;
















typedef struct _DCB {
    DWORD DCBlength;      
    DWORD BaudRate;       
    DWORD fBinary: 1;     
    DWORD fParity: 1;     
    DWORD fOutxCtsFlow:1; 
    DWORD fOutxDsrFlow:1; 
    DWORD fDtrControl:2;  
    DWORD fDsrSensitivity:1; 
    DWORD fTXContinueOnXoff: 1; 
    DWORD fOutX: 1;       
    DWORD fInX: 1;        
    DWORD fErrorChar: 1;  
    DWORD fNull: 1;       
    DWORD fRtsControl:2;  
    DWORD fAbortOnError:1; 
    DWORD fDummy2:17;     
    WORD wReserved;       
    WORD XonLim;          
    WORD XoffLim;         
    BYTE ByteSize;        
    BYTE Parity;          
    BYTE StopBits;        
    char XonChar;         
    char XoffChar;        
    char ErrorChar;       
    char EofChar;         
    char EvtChar;         
    WORD wReserved1;      
} DCB, *LPDCB;

typedef struct _COMMTIMEOUTS {
    DWORD ReadIntervalTimeout;          
    DWORD ReadTotalTimeoutMultiplier;   
    DWORD ReadTotalTimeoutConstant;     
    DWORD WriteTotalTimeoutMultiplier;  
    DWORD WriteTotalTimeoutConstant;    
} COMMTIMEOUTS,*LPCOMMTIMEOUTS;

typedef struct _COMMCONFIG {
    DWORD dwSize;               
    WORD wVersion;              
    WORD wReserved;             
    DCB dcb;                    
    DWORD dwProviderSubType;    

    DWORD dwProviderOffset;     

    DWORD dwProviderSize;       
    WCHAR wcProviderData[1];    
} COMMCONFIG,*LPCOMMCONFIG;

typedef struct _SYSTEM_INFO {
    union {
        DWORD dwOemId;          
        struct {
            WORD wProcessorArchitecture;
            WORD wReserved;
        };
    };
    DWORD dwPageSize;
    LPVOID lpMinimumApplicationAddress;
    LPVOID lpMaximumApplicationAddress;
    DWORD_PTR dwActiveProcessorMask;
    DWORD dwNumberOfProcessors;
    DWORD dwProcessorType;
    DWORD dwAllocationGranularity;
    WORD wProcessorLevel;
    WORD wProcessorRevision;
} SYSTEM_INFO, *LPSYSTEM_INFO;




































typedef struct _MEMORYSTATUS {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    SIZE_T dwTotalPhys;
    SIZE_T dwAvailPhys;
    SIZE_T dwTotalPageFile;
    SIZE_T dwAvailPageFile;
    SIZE_T dwTotalVirtual;
    SIZE_T dwAvailVirtual;
} MEMORYSTATUS, *LPMEMORYSTATUS;
























































































typedef struct _EXCEPTION_DEBUG_INFO {
    EXCEPTION_RECORD ExceptionRecord;
    DWORD dwFirstChance;
} EXCEPTION_DEBUG_INFO, *LPEXCEPTION_DEBUG_INFO;

typedef struct _CREATE_THREAD_DEBUG_INFO {
    HANDLE hThread;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
} CREATE_THREAD_DEBUG_INFO, *LPCREATE_THREAD_DEBUG_INFO;

typedef struct _CREATE_PROCESS_DEBUG_INFO {
    HANDLE hFile;
    HANDLE hProcess;
    HANDLE hThread;
    LPVOID lpBaseOfImage;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
    LPVOID lpImageName;
    WORD fUnicode;
} CREATE_PROCESS_DEBUG_INFO, *LPCREATE_PROCESS_DEBUG_INFO;

typedef struct _EXIT_THREAD_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_THREAD_DEBUG_INFO, *LPEXIT_THREAD_DEBUG_INFO;

typedef struct _EXIT_PROCESS_DEBUG_INFO {
    DWORD dwExitCode;
} EXIT_PROCESS_DEBUG_INFO, *LPEXIT_PROCESS_DEBUG_INFO;

typedef struct _LOAD_DLL_DEBUG_INFO {
    HANDLE hFile;
    LPVOID lpBaseOfDll;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpImageName;
    WORD fUnicode;
} LOAD_DLL_DEBUG_INFO, *LPLOAD_DLL_DEBUG_INFO;

typedef struct _UNLOAD_DLL_DEBUG_INFO {
    LPVOID lpBaseOfDll;
} UNLOAD_DLL_DEBUG_INFO, *LPUNLOAD_DLL_DEBUG_INFO;

typedef struct _OUTPUT_DEBUG_STRING_INFO {
    LPSTR lpDebugStringData;
    WORD fUnicode;
    WORD nDebugStringLength;
} OUTPUT_DEBUG_STRING_INFO, *LPOUTPUT_DEBUG_STRING_INFO;

typedef struct _RIP_INFO {
    DWORD dwError;
    DWORD dwType;
} RIP_INFO, *LPRIP_INFO;


typedef struct _DEBUG_EVENT {
    DWORD dwDebugEventCode;
    DWORD dwProcessId;
    DWORD dwThreadId;
    union {
        EXCEPTION_DEBUG_INFO Exception;
        CREATE_THREAD_DEBUG_INFO CreateThread;
        CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;
        EXIT_THREAD_DEBUG_INFO ExitThread;
        EXIT_PROCESS_DEBUG_INFO ExitProcess;
        LOAD_DLL_DEBUG_INFO LoadDll;
        UNLOAD_DLL_DEBUG_INFO UnloadDll;
        OUTPUT_DEBUG_STRING_INFO DebugString;
        RIP_INFO RipInfo;
    } u;
} DEBUG_EVENT, *LPDEBUG_EVENT;


typedef PCONTEXT LPCONTEXT;
typedef PEXCEPTION_RECORD LPEXCEPTION_RECORD;
typedef PEXCEPTION_POINTERS LPEXCEPTION_POINTERS;



























































































































































































































typedef struct _OFSTRUCT {
    BYTE cBytes;
    BYTE fFixedDisk;
    WORD nErrCode;
    WORD Reserved1;
    WORD Reserved2;
    CHAR szPathName[128];
} OFSTRUCT, *LPOFSTRUCT, *POFSTRUCT;


















































































































































































































































































































































































































































































































































































__declspec(dllimport)
LONG
__stdcall
InterlockedIncrement (
         LONG volatile *lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedDecrement (
         LONG volatile *lpAddend
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedExchange (
         LONG volatile *Target,
            LONG Value
    );




__declspec(dllimport)
LONG
__stdcall
InterlockedExchangeAdd (
         LONG volatile *Addend,
            LONG Value
    );

__declspec(dllimport)
LONG
__stdcall
InterlockedCompareExchange (
         LONG volatile *Destination,
            LONG Exchange,
            LONG Comperand
    );
























































































































































__forceinline
PVOID

__cdecl

__InlineInterlockedCompareExchangePointer (
          PVOID volatile *Destination,
           PVOID ExChange,
           PVOID Comperand
    )
{
    return((PVOID)(LONG_PTR)InterlockedCompareExchange((LONG volatile *)Destination, (LONG)(LONG_PTR)ExChange, (LONG)(LONG_PTR)Comperand));
}



























__declspec(dllimport)
void
__stdcall
InitializeSListHead (
         PSLIST_HEADER ListHead
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
InterlockedPopEntrySList (
         PSLIST_HEADER ListHead
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
InterlockedPushEntrySList (
         PSLIST_HEADER ListHead,
         PSINGLE_LIST_ENTRY ListEntry
    );

__declspec(dllimport)
PSINGLE_LIST_ENTRY
__stdcall
InterlockedFlushSList (
         PSLIST_HEADER ListHead
    );

__declspec(dllimport)
USHORT
__stdcall
QueryDepthSList (
         PSLIST_HEADER ListHead
    );







__declspec(dllimport)
BOOL
__stdcall
FreeResource(
         HGLOBAL hResData
    );

__declspec(dllimport)
LPVOID
__stdcall
LockResource(
         HGLOBAL hResData
    );






int




__stdcall




WinMain (
         HINSTANCE hInstance,
           HINSTANCE hPrevInstance,
           LPSTR lpCmdLine,
         int nShowCmd
    );

__declspec(dllimport)
BOOL
__stdcall
FreeLibrary (
         HMODULE hLibModule
    );


__declspec(dllimport)
__declspec(noreturn)
void
__stdcall
FreeLibraryAndExitThread (
         HMODULE hLibModule,
         DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
DisableThreadLibraryCalls (
         HMODULE hLibModule
    );

__declspec(dllimport)
FARPROC
__stdcall
GetProcAddress (
         HMODULE hModule,
         LPCSTR lpProcName
    );

__declspec(dllimport)
DWORD
__stdcall
GetVersion (
    void
    );

__declspec(dllimport)
    
HGLOBAL
__stdcall
GlobalAlloc (
         UINT uFlags,
         SIZE_T dwBytes
    );

__declspec(dllimport)
    
HGLOBAL
__stdcall
GlobalReAlloc (
         HGLOBAL hMem,
         SIZE_T dwBytes,
         UINT uFlags
    );

__declspec(dllimport)
SIZE_T
__stdcall
GlobalSize (
         HGLOBAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
GlobalFlags (
         HGLOBAL hMem
    );

__declspec(dllimport)
    
LPVOID
__stdcall
GlobalLock ( 
         HGLOBAL hMem
    );

__declspec(dllimport)
    
HGLOBAL
__stdcall
GlobalHandle (
         LPCVOID pMem
    );

__declspec(dllimport)
BOOL
__stdcall
GlobalUnlock(
         HGLOBAL hMem
    );

__declspec(dllimport)
    
HGLOBAL
__stdcall
GlobalFree(
     HGLOBAL hMem
    );

__declspec(dllimport)
SIZE_T
__stdcall
GlobalCompact(
         DWORD dwMinFree
    );

__declspec(dllimport)
void
__stdcall
GlobalFix(
         HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalUnfix(
         HGLOBAL hMem
    );

__declspec(dllimport)
    
LPVOID
__stdcall
GlobalWire(
         HGLOBAL hMem
    );

__declspec(dllimport)
BOOL
__stdcall
GlobalUnWire(
         HGLOBAL hMem
    );

__declspec(dllimport)
void
__stdcall
GlobalMemoryStatus(
         LPMEMORYSTATUS lpBuffer
    );

typedef struct _MEMORYSTATUSEX {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    DWORDLONG ullTotalPhys;
    DWORDLONG ullAvailPhys;
    DWORDLONG ullTotalPageFile;
    DWORDLONG ullAvailPageFile;
    DWORDLONG ullTotalVirtual;
    DWORDLONG ullAvailVirtual;
    DWORDLONG ullAvailExtendedVirtual;
} MEMORYSTATUSEX, *LPMEMORYSTATUSEX;

__declspec(dllimport)
BOOL
__stdcall
GlobalMemoryStatusEx(
         LPMEMORYSTATUSEX lpBuffer
    );

__declspec(dllimport)
    
HLOCAL
__stdcall
LocalAlloc(
         UINT uFlags,
         SIZE_T uBytes
    );

__declspec(dllimport)
    
HLOCAL
__stdcall
LocalReAlloc(
         HLOCAL hMem,
         SIZE_T uBytes,
         UINT uFlags
    );

__declspec(dllimport)
    
LPVOID
__stdcall
LocalLock(
         HLOCAL hMem
    );

__declspec(dllimport)
    
HLOCAL
__stdcall
LocalHandle(
         LPCVOID pMem
    );

__declspec(dllimport)
BOOL
__stdcall
LocalUnlock(
         HLOCAL hMem
    );

__declspec(dllimport)
SIZE_T
__stdcall
LocalSize(
         HLOCAL hMem
    );

__declspec(dllimport)
UINT
__stdcall
LocalFlags(
         HLOCAL hMem
    );

__declspec(dllimport)
HLOCAL
__stdcall
LocalFree(
     HLOCAL hMem
    );

__declspec(dllimport)
SIZE_T
__stdcall
LocalShrink(
         HLOCAL hMem,
         UINT cbNewSize
    );

__declspec(dllimport)
SIZE_T
__stdcall
LocalCompact(
         UINT uMinFree
    );

__declspec(dllimport)
BOOL
__stdcall
FlushInstructionCache(
         HANDLE hProcess,
             LPCVOID lpBaseAddress,
         SIZE_T dwSize
    );

__declspec(dllimport)
 
LPVOID
__stdcall
VirtualAlloc(
           LPVOID lpAddress,
             SIZE_T dwSize,
             DWORD flAllocationType,
             DWORD flProtect
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFree(
         LPVOID lpAddress,
         SIZE_T dwSize,
         DWORD dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtect(
          LPVOID lpAddress,
          SIZE_T dwSize,
          DWORD flNewProtect,
         PDWORD lpflOldProtect
    );

__declspec(dllimport)
SIZE_T
__stdcall
VirtualQuery(
           LPCVOID lpAddress,
           PMEMORY_BASIC_INFORMATION lpBuffer,
             SIZE_T dwLength
    );

__declspec(dllimport)
 
LPVOID
__stdcall
VirtualAllocEx(
             HANDLE hProcess,
           LPVOID lpAddress,
             SIZE_T dwSize,
             DWORD flAllocationType,
             DWORD flProtect
    );

__declspec(dllimport)
UINT
__stdcall
GetWriteWatch(
         DWORD dwFlags,
         PVOID lpBaseAddress,
         SIZE_T dwRegionSize,
           PVOID *lpAddresses,
         ULONG_PTR *lpdwCount,
         PULONG lpdwGranularity
    );

__declspec(dllimport)
UINT
__stdcall
ResetWriteWatch(
         LPVOID lpBaseAddress,
         SIZE_T dwRegionSize
    );

__declspec(dllimport)
SIZE_T
__stdcall
GetLargePageMinimum(
    void
    );

__declspec(dllimport)
UINT
__stdcall
EnumSystemFirmwareTables(
         DWORD FirmwareTableProviderSignature,
             PVOID pFirmwareTableEnumBuffer,
         DWORD BufferSize
    );
    
__declspec(dllimport)
UINT
__stdcall
GetSystemFirmwareTable(
         DWORD FirmwareTableProviderSignature,
         DWORD FirmwareTableID,
             PVOID pFirmwareTableBuffer,
         DWORD BufferSize
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualFreeEx(
         HANDLE hProcess,
         LPVOID lpAddress,
         SIZE_T dwSize,
         DWORD  dwFreeType
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualProtectEx(
          HANDLE hProcess,
          LPVOID lpAddress,
          SIZE_T dwSize,
          DWORD flNewProtect,
         PDWORD lpflOldProtect
    );

__declspec(dllimport)
SIZE_T
__stdcall
VirtualQueryEx(
             HANDLE hProcess,
           LPCVOID lpAddress,
           PMEMORY_BASIC_INFORMATION lpBuffer,
             SIZE_T dwLength
    );

__declspec(dllimport)
    
HANDLE
__stdcall
HeapCreate(
         DWORD flOptions,
         SIZE_T dwInitialSize,
         SIZE_T dwMaximumSize
    );

__declspec(dllimport)
BOOL
__stdcall
HeapDestroy(
         HANDLE hHeap
    );


__declspec(dllimport)
 
LPVOID
__stdcall
HeapAlloc(
         HANDLE hHeap,
         DWORD dwFlags,
         SIZE_T dwBytes
    );

__declspec(dllimport)
 
LPVOID
__stdcall
HeapReAlloc(
         HANDLE hHeap,
            DWORD dwFlags,
     LPVOID lpMem,
            SIZE_T dwBytes
    );

__declspec(dllimport)
BOOL
__stdcall
HeapFree(
         HANDLE hHeap,
            DWORD dwFlags,
     LPVOID lpMem
    );

__declspec(dllimport)
SIZE_T
__stdcall
HeapSize(
         HANDLE hHeap,
         DWORD dwFlags,
         LPCVOID lpMem
    );

__declspec(dllimport)
BOOL
__stdcall
HeapValidate(
             HANDLE hHeap,
             DWORD dwFlags,
           LPCVOID lpMem
    );

__declspec(dllimport)
SIZE_T
__stdcall
HeapCompact(
         HANDLE hHeap,
         DWORD dwFlags
    );

__declspec(dllimport)
    
HANDLE
__stdcall
GetProcessHeap( void );

__declspec(dllimport)
DWORD
__stdcall
GetProcessHeaps(
         DWORD NumberOfHeaps,
           PHANDLE ProcessHeaps
    );

typedef struct _PROCESS_HEAP_ENTRY {
    PVOID lpData;
    DWORD cbData;
    BYTE cbOverhead;
    BYTE iRegionIndex;
    WORD wFlags;
    union {
        struct {
            HANDLE hMem;
            DWORD dwReserved[ 3 ];
        } Block;
        struct {
            DWORD dwCommittedSize;
            DWORD dwUnCommittedSize;
            LPVOID lpFirstBlock;
            LPVOID lpLastBlock;
        } Region;
    };
} PROCESS_HEAP_ENTRY, *LPPROCESS_HEAP_ENTRY, *PPROCESS_HEAP_ENTRY;







__declspec(dllimport)
BOOL
__stdcall
HeapLock(
         HANDLE hHeap
    );

__declspec(dllimport)
BOOL
__stdcall
HeapUnlock(
         HANDLE hHeap
    );


__declspec(dllimport)
BOOL
__stdcall
HeapWalk(
            HANDLE hHeap,
         LPPROCESS_HEAP_ENTRY lpEntry
    );

__declspec(dllimport)
BOOL
__stdcall
HeapSetInformation (
         HANDLE HeapHandle, 
         HEAP_INFORMATION_CLASS HeapInformationClass,
             PVOID HeapInformation,
         SIZE_T HeapInformationLength
    );

__declspec(dllimport)
BOOL
__stdcall
HeapQueryInformation (
              HANDLE HeapHandle, 
              HEAP_INFORMATION_CLASS HeapInformationClass,
             PVOID HeapInformation,
              SIZE_T HeapInformationLength,
           PSIZE_T ReturnLength
    );

















__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeA(
          LPCSTR lpApplicationName,
         LPDWORD  lpBinaryType
    );
__declspec(dllimport)
BOOL
__stdcall
GetBinaryTypeW(
          LPCWSTR lpApplicationName,
         LPDWORD  lpBinaryType
    );






__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameA(
         LPCSTR lpszLongPath,
           LPSTR  lpszShortPath,
         DWORD cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetShortPathNameW(
         LPCWSTR lpszLongPath,
           LPWSTR  lpszShortPath,
         DWORD cchBuffer
    );






__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameA(
         LPCSTR lpszShortPath,
           LPSTR  lpszLongPath,
         DWORD cchBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLongPathNameW(
         LPCWSTR lpszShortPath,
           LPWSTR  lpszLongPath,
         DWORD cchBuffer
    );






__declspec(dllimport)
BOOL
__stdcall
GetProcessAffinityMask(
          HANDLE hProcess,
         PDWORD_PTR lpProcessAffinityMask,
         PDWORD_PTR lpSystemAffinityMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessAffinityMask(
         HANDLE hProcess,
         DWORD_PTR dwProcessAffinityMask
    );













__declspec(dllimport)
BOOL
__stdcall
GetProcessTimes(
          HANDLE hProcess,
         LPFILETIME lpCreationTime,
         LPFILETIME lpExitTime,
         LPFILETIME lpKernelTime,
         LPFILETIME lpUserTime
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessIoCounters(
          HANDLE hProcess,
         PIO_COUNTERS lpIoCounters
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessWorkingSetSize(
          HANDLE hProcess,
         PSIZE_T lpMinimumWorkingSetSize,
         PSIZE_T lpMaximumWorkingSetSize
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessWorkingSetSizeEx(
          HANDLE hProcess,
         PSIZE_T lpMinimumWorkingSetSize,
         PSIZE_T lpMaximumWorkingSetSize,
         PDWORD Flags
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessWorkingSetSize(
         HANDLE hProcess,
         SIZE_T dwMinimumWorkingSetSize,
         SIZE_T dwMaximumWorkingSetSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetProcessWorkingSetSizeEx(
         HANDLE hProcess,
         SIZE_T dwMinimumWorkingSetSize,
         SIZE_T dwMaximumWorkingSetSize,
         DWORD Flags
    );

__declspec(dllimport)
    
HANDLE
__stdcall
OpenProcess(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         DWORD dwProcessId
    );

__declspec(dllimport)
    
HANDLE
__stdcall
GetCurrentProcess(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentProcessId(
    void
    );

__declspec(dllimport)
__declspec(noreturn)
void
__stdcall
ExitProcess(
         UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateProcess(
         HANDLE hProcess,
         UINT uExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeProcess(
          HANDLE hProcess,
         LPDWORD lpExitCode
    );

__declspec(dllimport)
void
__stdcall
FatalExit(
         int ExitCode
    );

__declspec(dllimport)
    

LPCH
__stdcall
GetEnvironmentStrings(
    void
    );

__declspec(dllimport)
    

LPWCH
__stdcall
GetEnvironmentStringsW(
    void
    );







__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentStringsA(
          LPCH NewEnvironment
    );
__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentStringsW(
          LPWCH NewEnvironment
    );






__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsA(
          LPCH
    );
__declspec(dllimport)
BOOL
__stdcall
FreeEnvironmentStringsW(
          LPWCH
    );






__declspec(dllimport)
void
__stdcall
RaiseException(
         DWORD dwExceptionCode,
         DWORD dwExceptionFlags,
         DWORD nNumberOfArguments,
             const ULONG_PTR *lpArguments
    );


__declspec(dllimport)
LONG
__stdcall
UnhandledExceptionFilter(
         struct _EXCEPTION_POINTERS *ExceptionInfo
    );

typedef LONG (__stdcall *PTOP_LEVEL_EXCEPTION_FILTER)(
         struct _EXCEPTION_POINTERS *ExceptionInfo
    );
typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;

__declspec(dllimport)
LPTOP_LEVEL_EXCEPTION_FILTER
__stdcall
SetUnhandledExceptionFilter(
         LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter
    );














































































__declspec(dllimport)
    
HANDLE
__stdcall
CreateThread(
            LPSECURITY_ATTRIBUTES lpThreadAttributes,
              SIZE_T dwStackSize,
              LPTHREAD_START_ROUTINE lpStartAddress,
            LPVOID lpParameter,
              DWORD dwCreationFlags,
           LPDWORD lpThreadId
    );

__declspec(dllimport)
    
HANDLE
__stdcall
CreateRemoteThread(
              HANDLE hProcess,
            LPSECURITY_ATTRIBUTES lpThreadAttributes,
              SIZE_T dwStackSize,
              LPTHREAD_START_ROUTINE lpStartAddress,
            LPVOID lpParameter,
              DWORD dwCreationFlags,
           LPDWORD lpThreadId
    );

__declspec(dllimport)
    
HANDLE
__stdcall
GetCurrentThread(
    void
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentThreadId(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadStackGuarantee (
         PULONG StackSizeInBytes
    );

__declspec(dllimport)
DWORD
__stdcall
GetProcessIdOfThread(
         HANDLE Thread
    );

__declspec(dllimport)
DWORD
__stdcall
GetThreadId(
         HANDLE Thread
    );

__declspec(dllimport)
DWORD
__stdcall
GetProcessId(
         HANDLE Process
    );

__declspec(dllimport)
DWORD
__stdcall
GetCurrentProcessorNumber(
    void
    );

__declspec(dllimport)
DWORD_PTR
__stdcall
SetThreadAffinityMask(
         HANDLE hThread,
         DWORD_PTR dwThreadAffinityMask
    );











__declspec(dllimport)
BOOL
__stdcall
SetProcessPriorityBoost(
         HANDLE hProcess,
         BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessPriorityBoost(
          HANDLE hProcess,
         PBOOL  pDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
RequestWakeupLatency(
         LATENCY_TIME latency
    );

__declspec(dllimport)
BOOL
__stdcall
IsSystemResumeAutomatic(
    void
    );

__declspec(dllimport)
    
HANDLE
__stdcall
OpenThread(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         DWORD dwThreadId
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriority(
         HANDLE hThread,
         int nPriority
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadPriorityBoost(
         HANDLE hThread,
         BOOL bDisablePriorityBoost
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadPriorityBoost(
          HANDLE hThread,
         PBOOL pDisablePriorityBoost
    );

__declspec(dllimport)
int
__stdcall
GetThreadPriority(
         HANDLE hThread
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadTimes(
          HANDLE hThread,
         LPFILETIME lpCreationTime,
         LPFILETIME lpExitTime,
         LPFILETIME lpKernelTime,
         LPFILETIME lpUserTime
    );













__declspec(dllimport)
__declspec(noreturn)
void
__stdcall
ExitThread(
         DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
TerminateThread(
         HANDLE hThread,
         DWORD dwExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetExitCodeThread(
          HANDLE hThread,
         LPDWORD lpExitCode
    );

__declspec(dllimport)
BOOL
__stdcall
GetThreadSelectorEntry(
          HANDLE hThread,
          DWORD dwSelector,
         LPLDT_ENTRY lpSelectorEntry
    );

__declspec(dllimport)
EXECUTION_STATE
__stdcall
SetThreadExecutionState(
         EXECUTION_STATE esFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetLastError(
    void
    );

__declspec(dllimport)
void
__stdcall
SetLastError(
         DWORD dwErrCode
    );






















__declspec(dllimport)
BOOL
__stdcall
GetOverlappedResult(
          HANDLE hFile,
          LPOVERLAPPED lpOverlapped,
         LPDWORD lpNumberOfBytesTransferred,
          BOOL bWait
    );

__declspec(dllimport)
    
HANDLE
__stdcall
CreateIoCompletionPort(
             HANDLE FileHandle,
           HANDLE ExistingCompletionPort,
             ULONG_PTR CompletionKey,
             DWORD NumberOfConcurrentThreads
    );

__declspec(dllimport)
BOOL
__stdcall
GetQueuedCompletionStatus(
          HANDLE CompletionPort,
         LPDWORD lpNumberOfBytesTransferred,
         PULONG_PTR lpCompletionKey,
         LPOVERLAPPED *lpOverlapped,
          DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
PostQueuedCompletionStatus(
             HANDLE CompletionPort,
             DWORD dwNumberOfBytesTransferred,
             ULONG_PTR dwCompletionKey,
           LPOVERLAPPED lpOverlapped
    );






__declspec(dllimport)
UINT
__stdcall
SetErrorMode(
         UINT uMode
    );

__declspec(dllimport)
BOOL
__stdcall
ReadProcessMemory(
              HANDLE hProcess,
              LPCVOID lpBaseAddress,
           LPVOID lpBuffer,
              SIZE_T nSize,
           SIZE_T * lpNumberOfBytesRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteProcessMemory(
              HANDLE hProcess,
              LPVOID lpBaseAddress,
           LPCVOID lpBuffer,
              SIZE_T nSize,
           SIZE_T * lpNumberOfBytesWritten
    );


__declspec(dllimport)
BOOL
__stdcall
GetThreadContext(
            HANDLE hThread,
         LPCONTEXT lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadContext(
         HANDLE hThread,
         const CONTEXT *lpContext
    );


__declspec(dllimport)
DWORD
__stdcall
SuspendThread(
         HANDLE hThread
    );

__declspec(dllimport)
DWORD
__stdcall
ResumeThread(
         HANDLE hThread
    );










































__declspec(dllimport)
void
__stdcall
DebugBreak(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
WaitForDebugEvent(
         LPDEBUG_EVENT lpDebugEvent,
         DWORD dwMilliseconds
    );

__declspec(dllimport)
BOOL
__stdcall
ContinueDebugEvent(
         DWORD dwProcessId,
         DWORD dwThreadId,
         DWORD dwContinueStatus
    );

__declspec(dllimport)
BOOL
__stdcall
DebugActiveProcess(
         DWORD dwProcessId
    );

__declspec(dllimport)
BOOL
__stdcall
DebugActiveProcessStop(
         DWORD dwProcessId
    );

__declspec(dllimport)
BOOL
__stdcall
DebugSetProcessKillOnExit(
         BOOL KillOnExit
    );

__declspec(dllimport)
BOOL
__stdcall
DebugBreakProcess (
         HANDLE Process
    );

__declspec(dllimport)
void
__stdcall
InitializeCriticalSection(
         LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
EnterCriticalSection(
         LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
void
__stdcall
LeaveCriticalSection(
         LPCRITICAL_SECTION lpCriticalSection
    );




























__declspec(dllimport)
void
__stdcall
DeleteCriticalSection(
         LPCRITICAL_SECTION lpCriticalSection
    );

__declspec(dllimport)
BOOL
__stdcall
SetEvent(
         HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ResetEvent(
         HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
PulseEvent(
         HANDLE hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseSemaphore(
              HANDLE hSemaphore,
              LONG lReleaseCount,
           LPLONG lpPreviousCount
    );

__declspec(dllimport)
BOOL
__stdcall
ReleaseMutex(
         HANDLE hMutex
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObject(
         HANDLE hHandle,
         DWORD dwMilliseconds
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjects(
         DWORD nCount,
           const HANDLE *lpHandles,
         BOOL bWaitAll,
         DWORD dwMilliseconds
    );

__declspec(dllimport)
void
__stdcall
Sleep(
         DWORD dwMilliseconds
    );

__declspec(dllimport)
    
HGLOBAL
__stdcall
LoadResource(
           HMODULE hModule,
         HRSRC hResInfo
    );

__declspec(dllimport)
DWORD
__stdcall
SizeofResource(
           HMODULE hModule,
         HRSRC hResInfo
    );


__declspec(dllimport)
    
ATOM
__stdcall
GlobalDeleteAtom(
         ATOM nAtom
    );

__declspec(dllimport)
BOOL
__stdcall
InitAtomTable(
         DWORD nSize
    );

__declspec(dllimport)
    
ATOM
__stdcall
DeleteAtom(
         ATOM nAtom
    );

__declspec(dllimport)
UINT
__stdcall
SetHandleCount(
         UINT uNumber
    );

__declspec(dllimport)
DWORD
__stdcall
GetLogicalDrives(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
LockFile(
         HANDLE hFile,
         DWORD dwFileOffsetLow,
         DWORD dwFileOffsetHigh,
         DWORD nNumberOfBytesToLockLow,
         DWORD nNumberOfBytesToLockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
UnlockFile(
         HANDLE hFile,
         DWORD dwFileOffsetLow,
         DWORD dwFileOffsetHigh,
         DWORD nNumberOfBytesToUnlockLow,
         DWORD nNumberOfBytesToUnlockHigh
    );

__declspec(dllimport)
BOOL
__stdcall
LockFileEx(
               HANDLE hFile,
               DWORD dwFlags,
      DWORD dwReserved,
               DWORD nNumberOfBytesToLockLow,
               DWORD nNumberOfBytesToLockHigh,
            LPOVERLAPPED lpOverlapped
    );




__declspec(dllimport)
BOOL
__stdcall
UnlockFileEx(
               HANDLE hFile,
      DWORD dwReserved,
               DWORD nNumberOfBytesToUnlockLow,
               DWORD nNumberOfBytesToUnlockHigh,
            LPOVERLAPPED lpOverlapped
    );

typedef struct _BY_HANDLE_FILE_INFORMATION {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD dwVolumeSerialNumber;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD nNumberOfLinks;
    DWORD nFileIndexHigh;
    DWORD nFileIndexLow;
} BY_HANDLE_FILE_INFORMATION, *PBY_HANDLE_FILE_INFORMATION, *LPBY_HANDLE_FILE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
GetFileInformationByHandle(
          HANDLE hFile,
         LPBY_HANDLE_FILE_INFORMATION lpFileInformation
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileType(
         HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
GetFileSize(
              HANDLE hFile,
           LPDWORD lpFileSizeHigh
    );

__declspec(dllimport)
BOOL
__stdcall
GetFileSizeEx(
          HANDLE hFile,
         PLARGE_INTEGER lpFileSize
    );


__declspec(dllimport)
    
HANDLE
__stdcall
GetStdHandle(
         DWORD nStdHandle
    );

__declspec(dllimport)
BOOL
__stdcall
SetStdHandle(
         DWORD nStdHandle,
         HANDLE hHandle
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFile(
                HANDLE hFile,
           LPCVOID lpBuffer,
                DWORD nNumberOfBytesToWrite,
             LPDWORD lpNumberOfBytesWritten,
           LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
ReadFile(
                HANDLE hFile,
           LPVOID lpBuffer,
                DWORD nNumberOfBytesToRead,
             LPDWORD lpNumberOfBytesRead,
           LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
FlushFileBuffers(
         HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
DeviceIoControl(
                HANDLE hDevice,
                DWORD dwIoControlCode,
             LPVOID lpInBuffer,
                DWORD nInBufferSize,
             LPVOID lpOutBuffer,
                DWORD nOutBufferSize,
             LPDWORD lpBytesReturned,
           LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
RequestDeviceWakeup(
         HANDLE hDevice
    );

__declspec(dllimport)
BOOL
__stdcall
CancelDeviceWakeupRequest(
         HANDLE hDevice
    );

__declspec(dllimport)
BOOL
__stdcall
GetDevicePowerState(
          HANDLE hDevice,
         BOOL *pfOn
    );

__declspec(dllimport)
BOOL
__stdcall
SetMessageWaitingIndicator(
         HANDLE hMsgIndicator,
         ULONG ulMsgCount
    );

__declspec(dllimport)
BOOL
__stdcall
SetEndOfFile(
         HANDLE hFile
    );

__declspec(dllimport)
DWORD
__stdcall
SetFilePointer(
             HANDLE hFile,
             LONG lDistanceToMove,
           PLONG lpDistanceToMoveHigh,
             DWORD dwMoveMethod
    );

__declspec(dllimport)
BOOL
__stdcall
SetFilePointerEx(
              HANDLE hFile,
              LARGE_INTEGER liDistanceToMove,
           PLARGE_INTEGER lpNewFilePointer,
              DWORD dwMoveMethod
    );

__declspec(dllimport)
BOOL
__stdcall
FindClose(
         HANDLE hFindFile
    );

__declspec(dllimport)
BOOL
__stdcall
GetFileTime(
              HANDLE hFile,
           LPFILETIME lpCreationTime,
           LPFILETIME lpLastAccessTime,
           LPFILETIME lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileTime(
             HANDLE hFile,
           const FILETIME *lpCreationTime,
           const FILETIME *lpLastAccessTime,
           const FILETIME *lpLastWriteTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileValidData(
         HANDLE hFile,
         LONGLONG ValidDataLength
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileShortNameA(
         HANDLE hFile,
         LPCSTR lpShortName
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileShortNameW(
         HANDLE hFile,
         LPCWSTR lpShortName
    );






__declspec(dllimport)
BOOL
__stdcall
CloseHandle(
         HANDLE hObject
    );

__declspec(dllimport)
BOOL
__stdcall
DuplicateHandle(
                HANDLE hSourceProcessHandle,
                HANDLE hSourceHandle,
                HANDLE hTargetProcessHandle,
                  LPHANDLE lpTargetHandle,
                DWORD dwDesiredAccess,
                BOOL bInheritHandle,
                DWORD dwOptions
    );

__declspec(dllimport)
BOOL
__stdcall
GetHandleInformation(
          HANDLE hObject,
         LPDWORD lpdwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetHandleInformation(
         HANDLE hObject,
         DWORD dwMask,
         DWORD dwFlags
    );






__declspec(dllimport)
DWORD
__stdcall
LoadModule(
         LPCSTR lpModuleName,
         LPVOID lpParameterBlock
    );

__declspec(dllimport)
UINT
__stdcall
WinExec(
         LPCSTR lpCmdLine,
         UINT uCmdShow
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommBreak(
         HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
ClearCommError(
              HANDLE hFile,
           LPDWORD lpErrors,
           LPCOMSTAT lpStat
    );

__declspec(dllimport)
BOOL
__stdcall
SetupComm(
         HANDLE hFile,
         DWORD dwInQueue,
         DWORD dwOutQueue
    );

__declspec(dllimport)
BOOL
__stdcall
EscapeCommFunction(
         HANDLE hFile,
         DWORD dwFunc
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommConfig(
              HANDLE hCommDev,
           LPCOMMCONFIG lpCC,
           LPDWORD lpdwSize
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommMask(
          HANDLE hFile,
         LPDWORD lpEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommProperties(
          HANDLE hFile,
         LPCOMMPROP lpCommProp
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommModemStatus(
          HANDLE hFile,
         LPDWORD lpModemStat
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommState(
          HANDLE hFile,
         LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
GetCommTimeouts(
          HANDLE hFile,
         LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
PurgeComm(
         HANDLE hFile,
         DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommBreak(
         HANDLE hFile
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommConfig(
         HANDLE hCommDev,
           LPCOMMCONFIG lpCC,
         DWORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommMask(
         HANDLE hFile,
         DWORD dwEvtMask
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommState(
         HANDLE hFile,
         LPDCB lpDCB
    );

__declspec(dllimport)
BOOL
__stdcall
SetCommTimeouts(
         HANDLE hFile,
         LPCOMMTIMEOUTS lpCommTimeouts
    );

__declspec(dllimport)
BOOL
__stdcall
TransmitCommChar(
         HANDLE hFile,
         char cChar
    );

__declspec(dllimport)
BOOL
__stdcall
WaitCommEvent(
                HANDLE hFile,
             LPDWORD lpEvtMask,
           LPOVERLAPPED lpOverlapped
    );


__declspec(dllimport)
DWORD
__stdcall
SetTapePosition(
         HANDLE hDevice,
         DWORD dwPositionMethod,
         DWORD dwPartition,
         DWORD dwOffsetLow,
         DWORD dwOffsetHigh,
         BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapePosition(
          HANDLE hDevice,
          DWORD dwPositionType,
         LPDWORD lpdwPartition,
         LPDWORD lpdwOffsetLow,
         LPDWORD lpdwOffsetHigh
    );

__declspec(dllimport)
DWORD
__stdcall
PrepareTape(
         HANDLE hDevice,
         DWORD dwOperation,
         BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
EraseTape(
         HANDLE hDevice,
         DWORD dwEraseType,
         BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
CreateTapePartition(
         HANDLE hDevice,
         DWORD dwPartitionMethod,
         DWORD dwCount,
         DWORD dwSize
    );

__declspec(dllimport)
DWORD
__stdcall
WriteTapemark(
         HANDLE hDevice,
         DWORD dwTapemarkType,
         DWORD dwTapemarkCount,
         BOOL bImmediate
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeStatus(
         HANDLE hDevice
    );

__declspec(dllimport)
DWORD
__stdcall
GetTapeParameters(
            HANDLE hDevice,
            DWORD dwOperation,
         LPDWORD lpdwSize,
         LPVOID lpTapeInformation
    );




__declspec(dllimport)
DWORD
__stdcall
SetTapeParameters(
         HANDLE hDevice,
         DWORD dwOperation,
         LPVOID lpTapeInformation
    );




__declspec(dllimport)
BOOL
__stdcall
Beep(
         DWORD dwFreq,
         DWORD dwDuration
    );

__declspec(dllimport)
int
__stdcall
MulDiv(
         int nNumber,
         int nNumerator,
         int nDenominator
    );

__declspec(dllimport)
void
__stdcall
GetSystemTime(
         LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemTimeAsFileTime(
         LPFILETIME lpSystemTimeAsFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTime(
         const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetLocalTime(
         LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
BOOL
__stdcall
SetLocalTime(
         const SYSTEMTIME *lpSystemTime
    );

__declspec(dllimport)
void
__stdcall
GetSystemInfo(
         LPSYSTEM_INFO lpSystemInfo
    );




















































__declspec(dllimport)
BOOL
__stdcall
IsProcessorFeaturePresent(
         DWORD ProcessorFeature
    );

typedef struct _TIME_ZONE_INFORMATION {
    LONG Bias;
    WCHAR StandardName[ 32 ];
    SYSTEMTIME StandardDate;
    LONG StandardBias;
    WCHAR DaylightName[ 32 ];
    SYSTEMTIME DaylightDate;
    LONG DaylightBias;
} TIME_ZONE_INFORMATION, *PTIME_ZONE_INFORMATION, *LPTIME_ZONE_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
SystemTimeToTzSpecificLocalTime(
           LPTIME_ZONE_INFORMATION lpTimeZoneInformation,
             LPSYSTEMTIME lpUniversalTime,
            LPSYSTEMTIME lpLocalTime
    );

__declspec(dllimport)
BOOL
__stdcall
TzSpecificLocalTimeToSystemTime(
           LPTIME_ZONE_INFORMATION lpTimeZoneInformation,
             LPSYSTEMTIME lpLocalTime,
            LPSYSTEMTIME lpUniversalTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTimeZoneInformation(
         LPTIME_ZONE_INFORMATION lpTimeZoneInformation
    );

__declspec(dllimport)
BOOL
__stdcall
SetTimeZoneInformation(
         const TIME_ZONE_INFORMATION *lpTimeZoneInformation
    );






__declspec(dllimport)
BOOL
__stdcall
SystemTimeToFileTime(
          const SYSTEMTIME *lpSystemTime,
         LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToLocalFileTime(
          const FILETIME *lpFileTime,
         LPFILETIME lpLocalFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
LocalFileTimeToFileTime(
          const FILETIME *lpLocalFileTime,
         LPFILETIME lpFileTime
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToSystemTime(
          const FILETIME *lpFileTime,
         LPSYSTEMTIME lpSystemTime
    );

__declspec(dllimport)
LONG
__stdcall
CompareFileTime(
         const FILETIME *lpFileTime1,
         const FILETIME *lpFileTime2
    );

__declspec(dllimport)
BOOL
__stdcall
FileTimeToDosDateTime(
          const FILETIME *lpFileTime,
         LPWORD lpFatDate,
         LPWORD lpFatTime
    );

__declspec(dllimport)
BOOL
__stdcall
DosDateTimeToFileTime(
          WORD wFatDate,
          WORD wFatTime,
         LPFILETIME lpFileTime
    );

__declspec(dllimport)
DWORD
__stdcall
GetTickCount(
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetSystemTimeAdjustment(
         DWORD dwTimeAdjustment,
         BOOL  bTimeAdjustmentDisabled
    );

__declspec(dllimport)
BOOL
__stdcall
GetSystemTimeAdjustment(
         PDWORD lpTimeAdjustment,
         PDWORD lpTimeIncrement,
         PBOOL  lpTimeAdjustmentDisabled
    );


__declspec(dllimport)
DWORD
__stdcall
FormatMessageA(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );
__declspec(dllimport)
DWORD
__stdcall
FormatMessageW(
    DWORD dwFlags,
    LPCVOID lpSource,
    DWORD dwMessageId,
    DWORD dwLanguageId,
    LPWSTR lpBuffer,
    DWORD nSize,
    va_list *Arguments
    );





    








































__declspec(dllimport)
BOOL
__stdcall
CreatePipe(
           PHANDLE hReadPipe,
           PHANDLE hWritePipe,
           LPSECURITY_ATTRIBUTES lpPipeAttributes,
             DWORD nSize
    );

__declspec(dllimport)
BOOL
__stdcall
ConnectNamedPipe(
                HANDLE hNamedPipe,
           LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
DisconnectNamedPipe(
         HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
SetNamedPipeHandleState(
             HANDLE hNamedPipe,
           LPDWORD lpMode,
           LPDWORD lpMaxCollectionCount,
           LPDWORD lpCollectDataTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeInfo(
              HANDLE hNamedPipe,
           LPDWORD lpFlags,
           LPDWORD lpOutBufferSize,
           LPDWORD lpInBufferSize,
           LPDWORD lpMaxInstances
    );

__declspec(dllimport)
BOOL
__stdcall
PeekNamedPipe(
              HANDLE hNamedPipe,
             LPVOID lpBuffer,
              DWORD nBufferSize,
           LPDWORD lpBytesRead,
           LPDWORD lpTotalBytesAvail,
           LPDWORD lpBytesLeftThisMessage
    );

__declspec(dllimport)
BOOL
__stdcall
TransactNamedPipe(
                HANDLE hNamedPipe,
             LPVOID lpInBuffer,
                DWORD nInBufferSize,
             LPVOID lpOutBuffer,
                DWORD nOutBufferSize,
               LPDWORD lpBytesRead,
           LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
    
HANDLE
__stdcall
CreateMailslotA(
             LPCSTR lpName,
             DWORD nMaxMessageSize,
             DWORD lReadTimeout,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateMailslotW(
             LPCWSTR lpName,
             DWORD nMaxMessageSize,
             DWORD lReadTimeout,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );






__declspec(dllimport)
BOOL
__stdcall
GetMailslotInfo(
              HANDLE hMailslot,
           LPDWORD lpMaxMessageSize,
           LPDWORD lpNextSize,
           LPDWORD lpMessageCount,
           LPDWORD lpReadTimeout
    );

__declspec(dllimport)
BOOL
__stdcall
SetMailslotInfo(
         HANDLE hMailslot,
         DWORD lReadTimeout
    );

__declspec(dllimport)
    
LPVOID
__stdcall
MapViewOfFile(
         HANDLE hFileMappingObject,
         DWORD dwDesiredAccess,
         DWORD dwFileOffsetHigh,
         DWORD dwFileOffsetLow,
         SIZE_T dwNumberOfBytesToMap
    );

__declspec(dllimport)
BOOL
__stdcall
FlushViewOfFile(
         LPCVOID lpBaseAddress,
         SIZE_T dwNumberOfBytesToFlush
    );

__declspec(dllimport)
BOOL
__stdcall
UnmapViewOfFile(
         LPCVOID lpBaseAddress
    );





__declspec(dllimport)
BOOL
__stdcall
EncryptFileA(
         LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
EncryptFileW(
         LPCWSTR lpFileName
    );






__declspec(dllimport)
BOOL
__stdcall
DecryptFileA(
               LPCSTR lpFileName,
      DWORD dwReserved
    );
__declspec(dllimport)
BOOL
__stdcall
DecryptFileW(
               LPCWSTR lpFileName,
      DWORD dwReserved
    );





















__declspec(dllimport)
BOOL
__stdcall
FileEncryptionStatusA(
          LPCSTR lpFileName,
         LPDWORD  lpStatus
    );
__declspec(dllimport)
BOOL
__stdcall
FileEncryptionStatusW(
          LPCWSTR lpFileName,
         LPDWORD  lpStatus
    );












typedef
DWORD
(__stdcall *PFE_EXPORT_FUNC)(
           PBYTE pbData,
           PVOID pvCallbackContext,
             ULONG ulLength
    );

typedef
DWORD
(__stdcall *PFE_IMPORT_FUNC)(
           PBYTE pbData,
           PVOID pvCallbackContext,
          PULONG ulLength
    );











__declspec(dllimport)
DWORD
__stdcall
OpenEncryptedFileRawA(
                LPCSTR lpFileName,
                ULONG    ulFlags,
                  PVOID   *pvContext
    );
__declspec(dllimport)
DWORD
__stdcall
OpenEncryptedFileRawW(
                LPCWSTR lpFileName,
                ULONG    ulFlags,
                  PVOID   *pvContext
    );






__declspec(dllimport)
DWORD
__stdcall
ReadEncryptedFileRaw(
             PFE_EXPORT_FUNC pfExportCallback,
           PVOID           pvCallbackContext,
             PVOID           pvContext
    );

__declspec(dllimport)
DWORD
__stdcall
WriteEncryptedFileRaw(
             PFE_IMPORT_FUNC pfImportCallback,
           PVOID           pvCallbackContext,
             PVOID           pvContext
    );

__declspec(dllimport)
void
__stdcall
CloseEncryptedFileRaw(
         PVOID           pvContext
    );





__declspec(dllimport)
int
__stdcall
lstrcmpA(
         LPCSTR lpString1,
         LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpW(
         LPCWSTR lpString1,
         LPCWSTR lpString2
    );






__declspec(dllimport)
int
__stdcall
lstrcmpiA(
         LPCSTR lpString1,
         LPCSTR lpString2
    );
__declspec(dllimport)
int
__stdcall
lstrcmpiW(
         LPCWSTR lpString1,
         LPCWSTR lpString2
    );






__declspec(dllimport)
    
LPSTR
__stdcall
lstrcpynA(
         LPSTR lpString1,
         LPCSTR lpString2,
         int iMaxLength
    );
__declspec(dllimport)
    
LPWSTR
__stdcall
lstrcpynW(
         LPWSTR lpString1,
         LPCWSTR lpString2,
         int iMaxLength
    );






__declspec(dllimport)
    
LPSTR
__stdcall
lstrcpyA(
         LPSTR lpString1,
          LPCSTR lpString2
    );
__declspec(dllimport)
    
LPWSTR
__stdcall
lstrcpyW(
         LPWSTR lpString1,
          LPCWSTR lpString2
    );






__declspec(dllimport)
    
LPSTR
__stdcall
lstrcatA(
         LPSTR lpString1,
            LPCSTR lpString2
    );
__declspec(dllimport)
    
LPWSTR
__stdcall
lstrcatW(
         LPWSTR lpString1,
            LPCWSTR lpString2
    );






__declspec(dllimport)
int
__stdcall
lstrlenA(
         LPCSTR lpString
    );
__declspec(dllimport)
int
__stdcall
lstrlenW(
         LPCWSTR lpString
    );






__declspec(dllimport)
    
HFILE
__stdcall
OpenFile(
            LPCSTR lpFileName,
         LPOFSTRUCT lpReOpenBuff,
            UINT uStyle
    );

__declspec(dllimport)
    
HFILE
__stdcall
_lopen(
         LPCSTR lpPathName,
         int iReadWrite
    );

__declspec(dllimport)
    
HFILE
__stdcall
_lcreat(
         LPCSTR lpPathName,
         int  iAttribute
    );

__declspec(dllimport)
UINT
__stdcall
_lread(
         HFILE hFile,
           LPVOID lpBuffer,
         UINT uBytes
    );

__declspec(dllimport)
UINT
__stdcall
_lwrite(
         HFILE hFile,
           LPCCH lpBuffer,
         UINT uBytes
    );

__declspec(dllimport)
long
__stdcall
_hread(
         HFILE hFile,
           LPVOID lpBuffer,
         long lBytes
    );

__declspec(dllimport)
long
__stdcall
_hwrite(
         HFILE hFile,
           LPCCH lpBuffer,
         long lBytes
    );

__declspec(dllimport)
HFILE
__stdcall
_lclose(
         HFILE hFile
    );

__declspec(dllimport)
LONG
__stdcall
_llseek(
         HFILE hFile,
         LONG lOffset,
         int iOrigin
    );

__declspec(dllimport)
BOOL
__stdcall
IsTextUnicode(
           const void* lpv,
                int iSize,
           LPINT lpiResult
    );



__declspec(dllimport)
DWORD
__stdcall
FlsAlloc(
           PFLS_CALLBACK_FUNCTION lpCallback
    );

__declspec(dllimport)
PVOID
__stdcall
FlsGetValue(
         DWORD dwFlsIndex
    );

__declspec(dllimport)
BOOL
__stdcall
FlsSetValue(
             DWORD dwFlsIndex,
           PVOID lpFlsData
    );

__declspec(dllimport)
BOOL
__stdcall
FlsFree(
         DWORD dwFlsIndex
    );



__declspec(dllimport)
DWORD
__stdcall
TlsAlloc(
    void
    );

__declspec(dllimport)
LPVOID
__stdcall
TlsGetValue(
         DWORD dwTlsIndex
    );

__declspec(dllimport)
BOOL
__stdcall
TlsSetValue(
             DWORD dwTlsIndex,
           LPVOID lpTlsValue
    );

__declspec(dllimport)
BOOL
__stdcall
TlsFree(
         DWORD dwTlsIndex
    );

typedef
void
(__stdcall *LPOVERLAPPED_COMPLETION_ROUTINE)(
            DWORD dwErrorCode,
            DWORD dwNumberOfBytesTransfered,
         LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
DWORD
__stdcall
SleepEx(
         DWORD dwMilliseconds,
         BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForSingleObjectEx(
         HANDLE hHandle,
         DWORD dwMilliseconds,
         BOOL bAlertable
    );

__declspec(dllimport)
DWORD
__stdcall
WaitForMultipleObjectsEx(
         DWORD nCount,
           const HANDLE *lpHandles,
         BOOL bWaitAll,
         DWORD dwMilliseconds,
         BOOL bAlertable
    );













__declspec(dllimport)
BOOL
__stdcall
ReadFileEx(
             HANDLE hFile,
         LPVOID lpBuffer,
             DWORD nNumberOfBytesToRead,
          LPOVERLAPPED lpOverlapped,
           LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileEx(
             HANDLE hFile,
           LPCVOID lpBuffer,
             DWORD nNumberOfBytesToWrite,
          LPOVERLAPPED lpOverlapped,
           LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    );

__declspec(dllimport)
BOOL
__stdcall
BackupRead(
            HANDLE hFile,
           LPBYTE lpBuffer,
            DWORD nNumberOfBytesToRead,
           LPDWORD lpNumberOfBytesRead,
            BOOL bAbort,
            BOOL bProcessSecurity,
         LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupSeek(
            HANDLE hFile,
            DWORD  dwLowBytesToSeek,
            DWORD  dwHighBytesToSeek,
           LPDWORD lpdwLowByteSeeked,
           LPDWORD lpdwHighByteSeeked,
         LPVOID *lpContext
    );

__declspec(dllimport)
BOOL
__stdcall
BackupWrite(
            HANDLE hFile,
           LPBYTE lpBuffer,
            DWORD nNumberOfBytesToWrite,
           LPDWORD lpNumberOfBytesWritten,
            BOOL bAbort,
            BOOL bProcessSecurity,
         LPVOID *lpContext
    );




typedef struct _WIN32_STREAM_ID {
        DWORD          dwStreamId ;
        DWORD          dwStreamAttributes ;
        LARGE_INTEGER  Size ;
        DWORD          dwStreamNameSize ;
        WCHAR          cStreamName[ 1 ] ;
} WIN32_STREAM_ID, *LPWIN32_STREAM_ID ;



























__declspec(dllimport)
BOOL
__stdcall
ReadFileScatter(
               HANDLE hFile,
               FILE_SEGMENT_ELEMENT aSegmentArray[],
               DWORD nNumberOfBytesToRead,
      LPDWORD lpReserved,
            LPOVERLAPPED lpOverlapped
    );

__declspec(dllimport)
BOOL
__stdcall
WriteFileGather(
               HANDLE hFile,
               FILE_SEGMENT_ELEMENT aSegmentArray[],
               DWORD nNumberOfBytesToWrite,
      LPDWORD lpReserved,
            LPOVERLAPPED lpOverlapped
    );




















typedef struct _STARTUPINFOA {
    DWORD   cb;
    LPSTR   lpReserved;
    LPSTR   lpDesktop;
    LPSTR   lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOA, *LPSTARTUPINFOA;
typedef struct _STARTUPINFOW {
    DWORD   cb;
    LPWSTR  lpReserved;
    LPWSTR  lpDesktop;
    LPWSTR  lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOW, *LPSTARTUPINFOW;




typedef STARTUPINFOA STARTUPINFO;
typedef LPSTARTUPINFOA LPSTARTUPINFO;




typedef struct _WIN32_FIND_DATAA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    CHAR   cFileName[ 260 ];
    CHAR   cAlternateFileName[ 14 ];





} WIN32_FIND_DATAA, *PWIN32_FIND_DATAA, *LPWIN32_FIND_DATAA;
typedef struct _WIN32_FIND_DATAW {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    WCHAR  cFileName[ 260 ];
    WCHAR  cAlternateFileName[ 14 ];





} WIN32_FIND_DATAW, *PWIN32_FIND_DATAW, *LPWIN32_FIND_DATAW;





typedef WIN32_FIND_DATAA WIN32_FIND_DATA;
typedef PWIN32_FIND_DATAA PWIN32_FIND_DATA;
typedef LPWIN32_FIND_DATAA LPWIN32_FIND_DATA;


typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
} WIN32_FILE_ATTRIBUTE_DATA, *LPWIN32_FILE_ATTRIBUTE_DATA;

__declspec(dllimport)
    
HANDLE
__stdcall
CreateMutexA(
           LPSECURITY_ATTRIBUTES lpMutexAttributes,
             BOOL bInitialOwner,
           LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateMutexW(
           LPSECURITY_ATTRIBUTES lpMutexAttributes,
             BOOL bInitialOwner,
           LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
OpenMutexA(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenMutexW(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
CreateEventA(
           LPSECURITY_ATTRIBUTES lpEventAttributes,
             BOOL bManualReset,
             BOOL bInitialState,
           LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateEventW(
           LPSECURITY_ATTRIBUTES lpEventAttributes,
             BOOL bManualReset,
             BOOL bInitialState,
           LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
OpenEventA(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenEventW(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
CreateSemaphoreA(
           LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
             LONG lInitialCount,
             LONG lMaximumCount,
           LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateSemaphoreW(
           LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,
             LONG lInitialCount,
             LONG lMaximumCount,
           LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
OpenSemaphoreA(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenSemaphoreW(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCWSTR lpName
    );



















































































__declspec(dllimport)
    
HANDLE
__stdcall
CreateFileMappingA(
             HANDLE hFile,
           LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
             DWORD flProtect,
             DWORD dwMaximumSizeHigh,
             DWORD dwMaximumSizeLow,
           LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateFileMappingW(
             HANDLE hFile,
           LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
             DWORD flProtect,
             DWORD dwMaximumSizeHigh,
             DWORD dwMaximumSizeLow,
           LPCWSTR lpName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
OpenFileMappingA(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCSTR lpName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenFileMappingW(
         DWORD dwDesiredAccess,
         BOOL bInheritHandle,
         LPCWSTR lpName
    );






__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsA(
         DWORD nBufferLength,
             LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetLogicalDriveStringsW(
         DWORD nBufferLength,
             LPWSTR lpBuffer
    );
































__declspec(dllimport)
    
HMODULE
__stdcall
LoadLibraryA(
         LPCSTR lpLibFileName
    );
__declspec(dllimport)
    
HMODULE
__stdcall
LoadLibraryW(
         LPCWSTR lpLibFileName
    );






__declspec(dllimport)
    
HMODULE
__stdcall
LoadLibraryExA(
               LPCSTR lpLibFileName,
      HANDLE hFile,
               DWORD dwFlags
    );
__declspec(dllimport)
    
HMODULE
__stdcall
LoadLibraryExW(
               LPCWSTR lpLibFileName,
      HANDLE hFile,
               DWORD dwFlags
    );












__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameA(
           HMODULE hModule,
           LPCH lpFilename,
             DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetModuleFileNameW(
           HMODULE hModule,
           LPWCH lpFilename,
             DWORD nSize
    );






__declspec(dllimport)
    
HMODULE
__stdcall
GetModuleHandleA(
           LPCSTR lpModuleName
    );
__declspec(dllimport)
    
HMODULE
__stdcall
GetModuleHandleW(
           LPCWSTR lpModuleName
    );


















































































__declspec(dllimport)
BOOL
__stdcall
CreateProcessA(
              LPCSTR lpApplicationName,
           LPSTR lpCommandLine,
              LPSECURITY_ATTRIBUTES lpProcessAttributes,
              LPSECURITY_ATTRIBUTES lpThreadAttributes,
                BOOL bInheritHandles,
                DWORD dwCreationFlags,
              LPVOID lpEnvironment,
              LPCSTR lpCurrentDirectory,
                LPSTARTUPINFOA lpStartupInfo,
               LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessW(
              LPCWSTR lpApplicationName,
           LPWSTR lpCommandLine,
              LPSECURITY_ATTRIBUTES lpProcessAttributes,
              LPSECURITY_ATTRIBUTES lpThreadAttributes,
                BOOL bInheritHandles,
                DWORD dwCreationFlags,
              LPVOID lpEnvironment,
              LPCWSTR lpCurrentDirectory,
                LPSTARTUPINFOW lpStartupInfo,
               LPPROCESS_INFORMATION lpProcessInformation
    );








__declspec(dllimport)
BOOL
__stdcall
SetProcessShutdownParameters(
         DWORD dwLevel,
         DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
GetProcessShutdownParameters(
         LPDWORD lpdwLevel,
         LPDWORD lpdwFlags
    );

__declspec(dllimport)
DWORD
__stdcall
GetProcessVersion(
         DWORD ProcessId
    );

__declspec(dllimport)
void
__stdcall
FatalAppExitA(
         UINT uAction,
         LPCSTR lpMessageText
    );
__declspec(dllimport)
void
__stdcall
FatalAppExitW(
         UINT uAction,
         LPCWSTR lpMessageText
    );






__declspec(dllimport)
void
__stdcall
GetStartupInfoA(
         LPSTARTUPINFOA lpStartupInfo
    );
__declspec(dllimport)
void
__stdcall
GetStartupInfoW(
         LPSTARTUPINFOW lpStartupInfo
    );






__declspec(dllimport)
    
LPSTR
__stdcall
GetCommandLineA(
    void
    );
__declspec(dllimport)
    
LPWSTR
__stdcall
GetCommandLineW(
    void
    );






__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableA(
         LPCSTR lpName,
             LPSTR lpBuffer,
         DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetEnvironmentVariableW(
         LPCWSTR lpName,
             LPWSTR lpBuffer,
         DWORD nSize
    );






__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableA(
             LPCSTR lpName,
           LPCSTR lpValue
    );
__declspec(dllimport)
BOOL
__stdcall
SetEnvironmentVariableW(
             LPCWSTR lpName,
           LPCWSTR lpValue
    );





    




















__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsA(
         LPCSTR lpSrc,
             LPSTR lpDst,
         DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
ExpandEnvironmentStringsW(
         LPCWSTR lpSrc,
             LPWSTR lpDst,
         DWORD nSize
    );






__declspec(dllimport)
DWORD
__stdcall
GetFirmwareEnvironmentVariableA(
         LPCSTR lpName,
         LPCSTR lpGuid,
             PVOID pBuffer,
         DWORD    nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetFirmwareEnvironmentVariableW(
         LPCWSTR lpName,
         LPCWSTR lpGuid,
             PVOID pBuffer,
         DWORD    nSize
    );






__declspec(dllimport)
BOOL
__stdcall
SetFirmwareEnvironmentVariableA(
         LPCSTR lpName,
         LPCSTR lpGuid,
             PVOID pValue,
         DWORD    nSize
    );
__declspec(dllimport)
BOOL
__stdcall
SetFirmwareEnvironmentVariableW(
         LPCWSTR lpName,
         LPCWSTR lpGuid,
             PVOID pValue,
         DWORD    nSize
    );







__declspec(dllimport)
void
__stdcall
OutputDebugStringA(
         LPCSTR lpOutputString
    );
__declspec(dllimport)
void
__stdcall
OutputDebugStringW(
         LPCWSTR lpOutputString
    );






__declspec(dllimport)
    
HRSRC
__stdcall
FindResourceA(
           HMODULE hModule,
             LPCSTR lpName,
             LPCSTR lpType
    );
__declspec(dllimport)
    
HRSRC
__stdcall
FindResourceW(
           HMODULE hModule,
             LPCWSTR lpName,
             LPCWSTR lpType
    );






__declspec(dllimport)
    
HRSRC
__stdcall
FindResourceExA(
           HMODULE hModule,
             LPCSTR lpType,
             LPCSTR lpName,
             WORD    wLanguage
    );
__declspec(dllimport)
    
HRSRC
__stdcall
FindResourceExW(
           HMODULE hModule,
             LPCWSTR lpType,
             LPCWSTR lpName,
             WORD    wLanguage
    );







typedef BOOL (__stdcall* ENUMRESTYPEPROCA)(       HMODULE hModule,      LPSTR lpType,
     LONG_PTR lParam);
typedef BOOL (__stdcall* ENUMRESTYPEPROCW)(       HMODULE hModule,      LPWSTR lpType,
     LONG_PTR lParam);





typedef BOOL (__stdcall* ENUMRESNAMEPROCA)(       HMODULE hModule,      LPCSTR lpType,
     LPSTR lpName,      LONG_PTR lParam);
typedef BOOL (__stdcall* ENUMRESNAMEPROCW)(       HMODULE hModule,      LPCWSTR lpType,
     LPWSTR lpName,      LONG_PTR lParam);





typedef BOOL (__stdcall* ENUMRESLANGPROCA)(       HMODULE hModule,      LPCSTR lpType,
     LPCSTR lpName,      WORD  wLanguage,      LONG_PTR lParam);
typedef BOOL (__stdcall* ENUMRESLANGPROCW)(       HMODULE hModule,      LPCWSTR lpType,
     LPCWSTR lpName,      WORD  wLanguage,      LONG_PTR lParam);





























__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesA(
           HMODULE hModule,
             ENUMRESTYPEPROCA lpEnumFunc,
             LONG_PTR lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceTypesW(
           HMODULE hModule,
             ENUMRESTYPEPROCW lpEnumFunc,
             LONG_PTR lParam
    );






__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesA(
           HMODULE hModule,
             LPCSTR lpType,
             ENUMRESNAMEPROCA lpEnumFunc,
             LONG_PTR lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceNamesW(
           HMODULE hModule,
             LPCWSTR lpType,
             ENUMRESNAMEPROCW lpEnumFunc,
             LONG_PTR lParam
    );






__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesA(
           HMODULE hModule,
             LPCSTR lpType,
             LPCSTR lpName,
             ENUMRESLANGPROCA lpEnumFunc,
             LONG_PTR lParam
    );
__declspec(dllimport)
BOOL
__stdcall
EnumResourceLanguagesW(
           HMODULE hModule,
             LPCWSTR lpType,
             LPCWSTR lpName,
             ENUMRESLANGPROCW lpEnumFunc,
             LONG_PTR lParam
    );






__declspec(dllimport)
    
HANDLE
__stdcall
BeginUpdateResourceA(
         LPCSTR pFileName,
         BOOL bDeleteExistingResources
    );
__declspec(dllimport)
    
HANDLE
__stdcall
BeginUpdateResourceW(
         LPCWSTR pFileName,
         BOOL bDeleteExistingResources
    );






__declspec(dllimport)
BOOL
__stdcall
UpdateResourceA(
         HANDLE hUpdate,
         LPCSTR lpType,
         LPCSTR lpName,
         WORD wLanguage,
             LPVOID lpData,
         DWORD cb
    );
__declspec(dllimport)
BOOL
__stdcall
UpdateResourceW(
         HANDLE hUpdate,
         LPCWSTR lpType,
         LPCWSTR lpName,
         WORD wLanguage,
             LPVOID lpData,
         DWORD cb
    );






__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceA(
         HANDLE hUpdate,
         BOOL   fDiscard
    );
__declspec(dllimport)
BOOL
__stdcall
EndUpdateResourceW(
         HANDLE hUpdate,
         BOOL   fDiscard
    );






__declspec(dllimport)
    
ATOM
__stdcall
GlobalAddAtomA(
           LPCSTR lpString
    );
__declspec(dllimport)
    
ATOM
__stdcall
GlobalAddAtomW(
           LPCWSTR lpString
    );






__declspec(dllimport)
    
ATOM
__stdcall
GlobalFindAtomA(
           LPCSTR lpString
    );
__declspec(dllimport)
    
ATOM
__stdcall
GlobalFindAtomW(
           LPCWSTR lpString
    );






__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameA(
         ATOM nAtom,
           LPSTR lpBuffer,
         int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GlobalGetAtomNameW(
         ATOM nAtom,
           LPWSTR lpBuffer,
         int nSize
    );






__declspec(dllimport)
    
ATOM
__stdcall
AddAtomA(
           LPCSTR lpString
    );
__declspec(dllimport)
    
ATOM
__stdcall
AddAtomW(
           LPCWSTR lpString
    );






__declspec(dllimport)
    
ATOM
__stdcall
FindAtomA(
           LPCSTR lpString
    );
__declspec(dllimport)
    
ATOM
__stdcall
FindAtomW(
           LPCWSTR lpString
    );






__declspec(dllimport)
UINT
__stdcall
GetAtomNameA(
         ATOM nAtom,
           LPSTR lpBuffer,
         int nSize
    );
__declspec(dllimport)
UINT
__stdcall
GetAtomNameW(
         ATOM nAtom,
           LPWSTR lpBuffer,
         int nSize
    );






__declspec(dllimport)
UINT
__stdcall
GetProfileIntA(
         LPCSTR lpAppName,
         LPCSTR lpKeyName,
         INT nDefault
    );
__declspec(dllimport)
UINT
__stdcall
GetProfileIntW(
         LPCWSTR lpAppName,
         LPCWSTR lpKeyName,
         INT nDefault
    );






__declspec(dllimport)
DWORD
__stdcall
GetProfileStringA(
           LPCSTR lpAppName,
           LPCSTR lpKeyName,
           LPCSTR lpDefault,
             LPSTR lpReturnedString,
             DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileStringW(
           LPCWSTR lpAppName,
           LPCWSTR lpKeyName,
           LPCWSTR lpDefault,
             LPWSTR lpReturnedString,
             DWORD nSize
    );






__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringA(
           LPCSTR lpAppName,
           LPCSTR lpKeyName,
           LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileStringW(
           LPCWSTR lpAppName,
           LPCWSTR lpKeyName,
           LPCWSTR lpString
    );






__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionA(
         LPCSTR lpAppName,
             LPSTR lpReturnedString,
         DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetProfileSectionW(
         LPCWSTR lpAppName,
             LPWSTR lpReturnedString,
         DWORD nSize
    );






__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionA(
         LPCSTR lpAppName,
         LPCSTR lpString
    );
__declspec(dllimport)
BOOL
__stdcall
WriteProfileSectionW(
         LPCWSTR lpAppName,
         LPCWSTR lpString
    );






__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntA(
             LPCSTR lpAppName,
             LPCSTR lpKeyName,
             INT nDefault,
           LPCSTR lpFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetPrivateProfileIntW(
             LPCWSTR lpAppName,
             LPCWSTR lpKeyName,
             INT nDefault,
           LPCWSTR lpFileName
    );






__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringA(
           LPCSTR lpAppName,
           LPCSTR lpKeyName,
           LPCSTR lpDefault,
             LPSTR lpReturnedString,
             DWORD nSize,
           LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileStringW(
           LPCWSTR lpAppName,
           LPCWSTR lpKeyName,
           LPCWSTR lpDefault,
             LPWSTR lpReturnedString,
             DWORD nSize,
           LPCWSTR lpFileName
    );






__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringA(
           LPCSTR lpAppName,
           LPCSTR lpKeyName,
           LPCSTR lpString,
           LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStringW(
           LPCWSTR lpAppName,
           LPCWSTR lpKeyName,
           LPCWSTR lpString,
           LPCWSTR lpFileName
    );






__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionA(
             LPCSTR lpAppName,
             LPSTR lpReturnedString,
             DWORD nSize,
           LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionW(
             LPCWSTR lpAppName,
             LPWSTR lpReturnedString,
             DWORD nSize,
           LPCWSTR lpFileName
    );






__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionA(
             LPCSTR lpAppName,
             LPCSTR lpString,
           LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileSectionW(
             LPCWSTR lpAppName,
             LPCWSTR lpString,
           LPCWSTR lpFileName
    );







__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesA(
             LPSTR lpszReturnBuffer,
             DWORD nSize,
           LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetPrivateProfileSectionNamesW(
             LPWSTR lpszReturnBuffer,
             DWORD nSize,
           LPCWSTR lpFileName
    );






__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructA(
             LPCSTR lpszSection,
             LPCSTR lpszKey,
           LPVOID   lpStruct,
             UINT     uSizeStruct,
           LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
GetPrivateProfileStructW(
             LPCWSTR lpszSection,
             LPCWSTR lpszKey,
           LPVOID   lpStruct,
             UINT     uSizeStruct,
           LPCWSTR szFile
    );






__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructA(
             LPCSTR lpszSection,
             LPCSTR lpszKey,
             LPVOID lpStruct,
             UINT     uSizeStruct,
           LPCSTR szFile
    );
__declspec(dllimport)
BOOL
__stdcall
WritePrivateProfileStructW(
             LPCWSTR lpszSection,
             LPCWSTR lpszKey,
             LPVOID lpStruct,
             UINT     uSizeStruct,
           LPCWSTR szFile
    );







__declspec(dllimport)
UINT
__stdcall
GetDriveTypeA(
           LPCSTR lpRootPathName
    );
__declspec(dllimport)
UINT
__stdcall
GetDriveTypeW(
           LPCWSTR lpRootPathName
    );






__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryA(
             LPSTR lpBuffer,
         UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetSystemDirectoryW(
             LPWSTR lpBuffer,
         UINT uSize
    );






__declspec(dllimport)
DWORD
__stdcall
GetTempPathA(
         DWORD nBufferLength,
           LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetTempPathW(
         DWORD nBufferLength,
           LPWSTR lpBuffer
    );






__declspec(dllimport)
UINT
__stdcall
GetTempFileNameA(
         LPCSTR lpPathName,
         LPCSTR lpPrefixString,
         UINT uUnique,
         LPSTR lpTempFileName
    );
__declspec(dllimport)
UINT
__stdcall
GetTempFileNameW(
         LPCWSTR lpPathName,
         LPCWSTR lpPrefixString,
         UINT uUnique,
         LPWSTR lpTempFileName
    );





    
























__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryA(
             LPSTR lpBuffer,
         UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetWindowsDirectoryW(
             LPWSTR lpBuffer,
         UINT uSize
    );






__declspec(dllimport)
UINT
__stdcall
GetSystemWindowsDirectoryA(
             LPSTR lpBuffer,
         UINT uSize
    );
__declspec(dllimport)
UINT
__stdcall
GetSystemWindowsDirectoryW(
             LPWSTR lpBuffer,
         UINT uSize
    );


















































































__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryA(
         LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
SetCurrentDirectoryW(
         LPCWSTR lpPathName
    );





    


















__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryA(
         DWORD nBufferLength,
             LPSTR lpBuffer
    );
__declspec(dllimport)
DWORD
__stdcall
GetCurrentDirectoryW(
         DWORD nBufferLength,
             LPWSTR lpBuffer
    );
















































__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceA(
            LPCSTR lpRootPathName,
           LPDWORD lpSectorsPerCluster,
           LPDWORD lpBytesPerSector,
           LPDWORD lpNumberOfFreeClusters,
           LPDWORD lpTotalNumberOfClusters
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceW(
            LPCWSTR lpRootPathName,
           LPDWORD lpSectorsPerCluster,
           LPDWORD lpBytesPerSector,
           LPDWORD lpNumberOfFreeClusters,
           LPDWORD lpTotalNumberOfClusters
    );






__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExA(
            LPCSTR lpDirectoryName,
           PULARGE_INTEGER lpFreeBytesAvailableToCaller,
           PULARGE_INTEGER lpTotalNumberOfBytes,
           PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );
__declspec(dllimport)
BOOL
__stdcall
GetDiskFreeSpaceExW(
            LPCWSTR lpDirectoryName,
           PULARGE_INTEGER lpFreeBytesAvailableToCaller,
           PULARGE_INTEGER lpTotalNumberOfBytes,
           PULARGE_INTEGER lpTotalNumberOfFreeBytes
    );






__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryA(
             LPCSTR lpPathName,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryW(
             LPCWSTR lpPathName,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );


























__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExA(
             LPCSTR lpTemplateDirectory,
             LPCSTR lpNewDirectory,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
CreateDirectoryExW(
             LPCWSTR lpTemplateDirectory,
             LPCWSTR lpNewDirectory,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );






__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryA(
         LPCSTR lpPathName
    );
__declspec(dllimport)
BOOL
__stdcall
RemoveDirectoryW(
         LPCWSTR lpPathName
    );






__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameA(
                    LPCSTR lpFileName,
                    DWORD nBufferLength,
             LPSTR lpBuffer,
                    LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
GetFullPathNameW(
                    LPCWSTR lpFileName,
                    DWORD nBufferLength,
             LPWSTR lpBuffer,
                    LPWSTR *lpFilePart
    );












__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceA(
             DWORD dwFlags,
             LPCSTR lpDeviceName,
           LPCSTR lpTargetPath
    );
__declspec(dllimport)
BOOL
__stdcall
DefineDosDeviceW(
             DWORD dwFlags,
             LPCWSTR lpDeviceName,
           LPCWSTR lpTargetPath
    );






__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceA(
           LPCSTR lpDeviceName,
             LPSTR lpTargetPath,
             DWORD ucchMax
    );
__declspec(dllimport)
DWORD
__stdcall
QueryDosDeviceW(
           LPCWSTR lpDeviceName,
             LPWSTR lpTargetPath,
             DWORD ucchMax
    );








__declspec(dllimport)
    
HANDLE
__stdcall
CreateFileA(
             LPCSTR lpFileName,
             DWORD dwDesiredAccess,
             DWORD dwShareMode,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
             DWORD dwCreationDisposition,
             DWORD dwFlagsAndAttributes,
           HANDLE hTemplateFile
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateFileW(
             LPCWSTR lpFileName,
             DWORD dwDesiredAccess,
             DWORD dwShareMode,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
             DWORD dwCreationDisposition,
             DWORD dwFlagsAndAttributes,
           HANDLE hTemplateFile
    );





















__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesA(
         LPCSTR lpFileName,
         DWORD dwFileAttributes
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileAttributesW(
         LPCWSTR lpFileName,
         DWORD dwFileAttributes
    );






__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesA(
         LPCSTR lpFileName
    );
__declspec(dllimport)
DWORD
__stdcall
GetFileAttributesW(
         LPCWSTR lpFileName
    );






typedef enum _GET_FILEEX_INFO_LEVELS {
    GetFileExInfoStandard,
    GetFileExMaxInfoLevel
} GET_FILEEX_INFO_LEVELS;

__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExA(
          LPCSTR lpFileName,
          GET_FILEEX_INFO_LEVELS fInfoLevelId,
         LPVOID lpFileInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileAttributesExW(
          LPCWSTR lpFileName,
          GET_FILEEX_INFO_LEVELS fInfoLevelId,
         LPVOID lpFileInformation
    );






__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeA(
          LPCSTR lpFileName,
         LPDWORD  lpFileSizeHigh
    );
__declspec(dllimport)
DWORD
__stdcall
GetCompressedFileSizeW(
          LPCWSTR lpFileName,
         LPDWORD  lpFileSizeHigh
    );






__declspec(dllimport)
BOOL
__stdcall
DeleteFileA(
         LPCSTR lpFileName
    );
__declspec(dllimport)
BOOL
__stdcall
DeleteFileW(
         LPCWSTR lpFileName
    );





































































































__declspec(dllimport)
    
HANDLE
__stdcall
FindFirstFileA(
          LPCSTR lpFileName,
         LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
    
HANDLE
__stdcall
FindFirstFileW(
          LPCWSTR lpFileName,
         LPWIN32_FIND_DATAW lpFindFileData
    );






__declspec(dllimport)
BOOL
__stdcall
FindNextFileA(
          HANDLE hFindFile,
         LPWIN32_FIND_DATAA lpFindFileData
    );
__declspec(dllimport)
BOOL
__stdcall
FindNextFileW(
          HANDLE hFindFile,
         LPWIN32_FIND_DATAW lpFindFileData
    );







__declspec(dllimport)
DWORD
__stdcall
SearchPathA(
            LPCSTR lpPath,
              LPCSTR lpFileName,
            LPCSTR lpExtension,
              DWORD nBufferLength,
             LPSTR lpBuffer,
           LPSTR *lpFilePart
    );
__declspec(dllimport)
DWORD
__stdcall
SearchPathW(
            LPCWSTR lpPath,
              LPCWSTR lpFileName,
            LPCWSTR lpExtension,
              DWORD nBufferLength,
             LPWSTR lpBuffer,
           LPWSTR *lpFilePart
    );






__declspec(dllimport)
BOOL
__stdcall
CopyFileA(
         LPCSTR lpExistingFileName,
         LPCSTR lpNewFileName,
         BOOL bFailIfExists
    );
__declspec(dllimport)
BOOL
__stdcall
CopyFileW(
         LPCWSTR lpExistingFileName,
         LPCWSTR lpNewFileName,
         BOOL bFailIfExists
    );





    


































































__declspec(dllimport)
BOOL
__stdcall
MoveFileA(
         LPCSTR lpExistingFileName,
         LPCSTR lpNewFileName
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileW(
         LPCWSTR lpExistingFileName,
         LPCWSTR lpNewFileName
    );


























__declspec(dllimport)
BOOL
__stdcall
MoveFileExA(
         LPCSTR lpExistingFileName,
         LPCSTR lpNewFileName,
         DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
MoveFileExW(
         LPCWSTR lpExistingFileName,
         LPCWSTR lpNewFileName,
         DWORD dwFlags
    );



















































































































































__declspec(dllimport)
    
HANDLE
__stdcall
CreateNamedPipeA(
             LPCSTR lpName,
             DWORD dwOpenMode,
             DWORD dwPipeMode,
             DWORD nMaxInstances,
             DWORD nOutBufferSize,
             DWORD nInBufferSize,
             DWORD nDefaultTimeOut,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
    
HANDLE
__stdcall
CreateNamedPipeW(
             LPCWSTR lpName,
             DWORD dwOpenMode,
             DWORD dwPipeMode,
             DWORD nMaxInstances,
             DWORD nOutBufferSize,
             DWORD nInBufferSize,
             DWORD nDefaultTimeOut,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );






__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateA(
              HANDLE hNamedPipe,
           LPDWORD lpState,
           LPDWORD lpCurInstances,
           LPDWORD lpMaxCollectionCount,
           LPDWORD lpCollectDataTimeout,
           LPSTR lpUserName,
              DWORD nMaxUserNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetNamedPipeHandleStateW(
              HANDLE hNamedPipe,
           LPDWORD lpState,
           LPDWORD lpCurInstances,
           LPDWORD lpMaxCollectionCount,
           LPDWORD lpCollectDataTimeout,
           LPWSTR lpUserName,
              DWORD nMaxUserNameSize
    );






__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeA(
          LPCSTR lpNamedPipeName,
             LPVOID lpInBuffer,
          DWORD nInBufferSize,
             LPVOID lpOutBuffer,
          DWORD nOutBufferSize,
         LPDWORD lpBytesRead,
          DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
CallNamedPipeW(
          LPCWSTR lpNamedPipeName,
             LPVOID lpInBuffer,
          DWORD nInBufferSize,
             LPVOID lpOutBuffer,
          DWORD nOutBufferSize,
         LPDWORD lpBytesRead,
          DWORD nTimeOut
    );






__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeA(
         LPCSTR lpNamedPipeName,
         DWORD nTimeOut
    );
__declspec(dllimport)
BOOL
__stdcall
WaitNamedPipeW(
         LPCWSTR lpNamedPipeName,
         DWORD nTimeOut
    );






__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelA(
           LPCSTR lpRootPathName,
           LPCSTR lpVolumeName
    );
__declspec(dllimport)
BOOL
__stdcall
SetVolumeLabelW(
           LPCWSTR lpRootPathName,
           LPCWSTR lpVolumeName
    );






__declspec(dllimport)
void
__stdcall
SetFileApisToOEM( void );

__declspec(dllimport)
void
__stdcall
SetFileApisToANSI( void );

__declspec(dllimport)
BOOL
__stdcall
AreFileApisANSI( void );

__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationA(
            LPCSTR lpRootPathName,
           LPSTR lpVolumeNameBuffer,
              DWORD nVolumeNameSize,
           LPDWORD lpVolumeSerialNumber,
           LPDWORD lpMaximumComponentLength,
           LPDWORD lpFileSystemFlags,
           LPSTR lpFileSystemNameBuffer,
              DWORD nFileSystemNameSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetVolumeInformationW(
            LPCWSTR lpRootPathName,
           LPWSTR lpVolumeNameBuffer,
              DWORD nVolumeNameSize,
           LPDWORD lpVolumeSerialNumber,
           LPDWORD lpMaximumComponentLength,
           LPDWORD lpFileSystemFlags,
           LPWSTR lpFileSystemNameBuffer,
              DWORD nFileSystemNameSize
    );






__declspec(dllimport)
BOOL
__stdcall
CancelIo(
         HANDLE hFile
    );





__declspec(dllimport)
BOOL
__stdcall
ClearEventLogA (
             HANDLE hEventLog,
           LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
ClearEventLogW (
             HANDLE hEventLog,
           LPCWSTR lpBackupFileName
    );






__declspec(dllimport)
BOOL
__stdcall
BackupEventLogA (
         HANDLE hEventLog,
         LPCSTR lpBackupFileName
    );
__declspec(dllimport)
BOOL
__stdcall
BackupEventLogW (
         HANDLE hEventLog,
         LPCWSTR lpBackupFileName
    );






__declspec(dllimport)
BOOL
__stdcall
CloseEventLog (
         HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
DeregisterEventSource (
         HANDLE hEventLog
    );

__declspec(dllimport)
BOOL
__stdcall
NotifyChangeEventLog(
         HANDLE  hEventLog,
         HANDLE  hEvent
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfEventLogRecords (
          HANDLE hEventLog,
         PDWORD NumberOfRecords
    );

__declspec(dllimport)
BOOL
__stdcall
GetOldestEventLogRecord (
          HANDLE hEventLog,
         PDWORD OldestRecord
    );

__declspec(dllimport)
    
HANDLE
__stdcall
OpenEventLogA (
           LPCSTR lpUNCServerName,
             LPCSTR lpSourceName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenEventLogW (
           LPCWSTR lpUNCServerName,
             LPCWSTR lpSourceName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
RegisterEventSourceA (
           LPCSTR lpUNCServerName,
             LPCSTR lpSourceName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
RegisterEventSourceW (
           LPCWSTR lpUNCServerName,
             LPCWSTR lpSourceName
    );






__declspec(dllimport)
    
HANDLE
__stdcall
OpenBackupEventLogA (
           LPCSTR lpUNCServerName,
             LPCSTR lpFileName
    );
__declspec(dllimport)
    
HANDLE
__stdcall
OpenBackupEventLogW (
           LPCWSTR lpUNCServerName,
             LPCWSTR lpFileName
    );






__declspec(dllimport)
BOOL
__stdcall
ReadEventLogA (
          HANDLE     hEventLog,
          DWORD      dwReadFlags,
          DWORD      dwRecordOffset,
           LPVOID     lpBuffer,
          DWORD      nNumberOfBytesToRead,
         DWORD      *pnBytesRead,
         DWORD      *pnMinNumberOfBytesNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
ReadEventLogW (
          HANDLE     hEventLog,
          DWORD      dwReadFlags,
          DWORD      dwRecordOffset,
           LPVOID     lpBuffer,
          DWORD      nNumberOfBytesToRead,
         DWORD      *pnBytesRead,
         DWORD      *pnMinNumberOfBytesNeeded
    );






__declspec(dllimport)
BOOL
__stdcall
ReportEventA (
             HANDLE     hEventLog,
             WORD       wType,
             WORD       wCategory,
             DWORD      dwEventID,
           PSID       lpUserSid,
             WORD       wNumStrings,
             DWORD      dwDataSize,
           LPCSTR   *lpStrings,
             LPVOID lpRawData
    );
__declspec(dllimport)
BOOL
__stdcall
ReportEventW (
             HANDLE     hEventLog,
             WORD       wType,
             WORD       wCategory,
             DWORD      dwEventID,
           PSID       lpUserSid,
             WORD       wNumStrings,
             DWORD      dwDataSize,
           LPCWSTR   *lpStrings,
             LPVOID lpRawData
    );









typedef struct _EVENTLOG_FULL_INFORMATION
{
    DWORD    dwFull;
}
EVENTLOG_FULL_INFORMATION, *LPEVENTLOG_FULL_INFORMATION;

__declspec(dllimport)
BOOL
__stdcall
GetEventLogInformation (
          HANDLE     hEventLog,
          DWORD      dwInfoLevel,
           LPVOID lpBuffer,
          DWORD      cbBufSize,
         LPDWORD    pcbBytesNeeded
    );







__declspec(dllimport)
BOOL
__stdcall
DuplicateToken(
                HANDLE ExistingTokenHandle,
                SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
                  PHANDLE DuplicateTokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
GetKernelObjectSecurity (
          HANDLE Handle,
          SECURITY_INFORMATION RequestedInformation,
         PSECURITY_DESCRIPTOR pSecurityDescriptor,
          DWORD nLength,
         LPDWORD lpnLengthNeeded
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateNamedPipeClient(
         HANDLE hNamedPipe
    );

__declspec(dllimport)
BOOL
__stdcall
ImpersonateSelf(
         SECURITY_IMPERSONATION_LEVEL ImpersonationLevel
    );


__declspec(dllimport)
BOOL
__stdcall
RevertToSelf (
    void
    );

__declspec(dllimport)
BOOL
__stdcall
SetThreadToken (
           PHANDLE Thread,
           HANDLE Token
    );

__declspec(dllimport)
BOOL
__stdcall
AccessCheck (
            PSECURITY_DESCRIPTOR pSecurityDescriptor,
            HANDLE ClientToken,
            DWORD DesiredAccess,
            PGENERIC_MAPPING GenericMapping,
           PPRIVILEGE_SET PrivilegeSet,
         LPDWORD PrivilegeSetLength,
           LPDWORD GrantedAccess,
           LPBOOL AccessStatus
    );






































__declspec(dllimport)
BOOL
__stdcall
OpenProcessToken (
                HANDLE ProcessHandle,
                DWORD DesiredAccess,
                  PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
OpenThreadToken (
                HANDLE ThreadHandle,
                DWORD DesiredAccess,
                BOOL OpenAsSelf,
                  PHANDLE TokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
GetTokenInformation (
              HANDLE TokenHandle,
              TOKEN_INFORMATION_CLASS TokenInformationClass,
             LPVOID TokenInformation,
              DWORD TokenInformationLength,
           PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
SetTokenInformation (
         HANDLE TokenHandle,
         TOKEN_INFORMATION_CLASS TokenInformationClass,
           LPVOID TokenInformation,
         DWORD TokenInformationLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenPrivileges (
              HANDLE TokenHandle,
              BOOL DisableAllPrivileges,
            PTOKEN_PRIVILEGES NewState,
              DWORD BufferLength,
             PTOKEN_PRIVILEGES PreviousState,
           PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
AdjustTokenGroups (
              HANDLE TokenHandle,
              BOOL ResetToDefault,
            PTOKEN_GROUPS NewState,
              DWORD BufferLength,
             PTOKEN_GROUPS PreviousState,
           PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
PrivilegeCheck (
            HANDLE ClientToken,
         PPRIVILEGE_SET RequiredPrivileges,
           LPBOOL pfResult
    );


__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmA (
             LPCSTR SubsystemName,
             LPVOID HandleId,
             LPSTR ObjectTypeName,
           LPSTR ObjectName,
             PSECURITY_DESCRIPTOR SecurityDescriptor,
             DWORD DesiredAccess,
             PGENERIC_MAPPING GenericMapping,
             BOOL ObjectCreation,
            LPDWORD GrantedAccess,
            LPBOOL AccessStatus,
            LPBOOL pfGenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
AccessCheckAndAuditAlarmW (
             LPCWSTR SubsystemName,
             LPVOID HandleId,
             LPWSTR ObjectTypeName,
           LPWSTR ObjectName,
             PSECURITY_DESCRIPTOR SecurityDescriptor,
             DWORD DesiredAccess,
             PGENERIC_MAPPING GenericMapping,
             BOOL ObjectCreation,
            LPDWORD GrantedAccess,
            LPBOOL AccessStatus,
            LPBOOL pfGenerateOnClose
    );




























































































































































__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmA (
             LPCSTR SubsystemName,
             LPVOID HandleId,
             LPSTR ObjectTypeName,
           LPSTR ObjectName,
             PSECURITY_DESCRIPTOR pSecurityDescriptor,
             HANDLE ClientToken,
             DWORD DesiredAccess,
             DWORD GrantedAccess,
           PPRIVILEGE_SET Privileges,
             BOOL ObjectCreation,
             BOOL AccessGranted,
            LPBOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectOpenAuditAlarmW (
             LPCWSTR SubsystemName,
             LPVOID HandleId,
             LPWSTR ObjectTypeName,
           LPWSTR ObjectName,
             PSECURITY_DESCRIPTOR pSecurityDescriptor,
             HANDLE ClientToken,
             DWORD DesiredAccess,
             DWORD GrantedAccess,
           PPRIVILEGE_SET Privileges,
             BOOL ObjectCreation,
             BOOL AccessGranted,
            LPBOOL GenerateOnClose
    );







__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmA (
         LPCSTR SubsystemName,
         LPVOID HandleId,
         HANDLE ClientToken,
         DWORD DesiredAccess,
         PPRIVILEGE_SET Privileges,
         BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectPrivilegeAuditAlarmW (
         LPCWSTR SubsystemName,
         LPVOID HandleId,
         HANDLE ClientToken,
         DWORD DesiredAccess,
         PPRIVILEGE_SET Privileges,
         BOOL AccessGranted
    );







__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmA (
         LPCSTR SubsystemName,
         LPVOID HandleId,
         BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectCloseAuditAlarmW (
         LPCWSTR SubsystemName,
         LPVOID HandleId,
         BOOL GenerateOnClose
    );







__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmA (
         LPCSTR SubsystemName,
         LPVOID HandleId,
         BOOL GenerateOnClose
    );
__declspec(dllimport)
BOOL
__stdcall
ObjectDeleteAuditAlarmW (
         LPCWSTR SubsystemName,
         LPVOID HandleId,
         BOOL GenerateOnClose
    );







__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmA (
         LPCSTR SubsystemName,
         LPCSTR ServiceName,
         HANDLE ClientToken,
         PPRIVILEGE_SET Privileges,
         BOOL AccessGranted
    );
__declspec(dllimport)
BOOL
__stdcall
PrivilegedServiceAuditAlarmW (
         LPCWSTR SubsystemName,
         LPCWSTR ServiceName,
         HANDLE ClientToken,
         PPRIVILEGE_SET Privileges,
         BOOL AccessGranted
    );

















































__declspec(dllimport)
BOOL
__stdcall
IsValidSid (
         PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
EqualSid (
         PSID pSid1,
         PSID pSid2
    );


__declspec(dllimport)
BOOL
__stdcall
EqualPrefixSid (
         PSID pSid1,
         PSID pSid2
    );


__declspec(dllimport)
DWORD
__stdcall
GetSidLengthRequired (
         UCHAR nSubAuthorityCount
    );


__declspec(dllimport)
BOOL
__stdcall
AllocateAndInitializeSid (
                PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
                BYTE nSubAuthorityCount,
                DWORD nSubAuthority0,
                DWORD nSubAuthority1,
                DWORD nSubAuthority2,
                DWORD nSubAuthority3,
                DWORD nSubAuthority4,
                DWORD nSubAuthority5,
                DWORD nSubAuthority6,
                DWORD nSubAuthority7,
                  PSID *pSid
    );

__declspec(dllimport)
PVOID
__stdcall
FreeSid(
         PSID pSid
    );

__declspec(dllimport)
BOOL
__stdcall
InitializeSid (
         PSID Sid,
          PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,
          BYTE nSubAuthorityCount
    );


__declspec(dllimport)
    
PSID_IDENTIFIER_AUTHORITY
__stdcall
GetSidIdentifierAuthority (
         PSID pSid
    );


__declspec(dllimport)
    
PDWORD
__stdcall
GetSidSubAuthority (
         PSID pSid,
         DWORD nSubAuthority
    );


__declspec(dllimport)
    
PUCHAR
__stdcall
GetSidSubAuthorityCount (
         PSID pSid
    );


__declspec(dllimport)
DWORD
__stdcall
GetLengthSid (
         PSID pSid
    );


__declspec(dllimport)
BOOL
__stdcall
CopySid (
         DWORD nDestinationSidLength,
         PSID pDestinationSid,
         PSID pSourceSid
    );


__declspec(dllimport)
BOOL
__stdcall
AreAllAccessesGranted (
         DWORD GrantedAccess,
         DWORD DesiredAccess
    );


__declspec(dllimport)
BOOL
__stdcall
AreAnyAccessesGranted (
         DWORD GrantedAccess,
         DWORD DesiredAccess
    );


__declspec(dllimport)
void
__stdcall
MapGenericMask (
         PDWORD AccessMask,
            PGENERIC_MAPPING GenericMapping
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidAcl (
         PACL pAcl
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeAcl (
         PACL pAcl,
         DWORD nAclLength,
         DWORD dwAclRevision
    );


__declspec(dllimport)
BOOL
__stdcall
GetAclInformation (
         PACL pAcl,
         LPVOID pAclInformation,
         DWORD nAclInformationLength,
         ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
SetAclInformation (
         PACL pAcl,
           LPVOID pAclInformation,
            DWORD nAclInformationLength,
            ACL_INFORMATION_CLASS dwAclInformationClass
    );


__declspec(dllimport)
BOOL
__stdcall
AddAce (
         PACL pAcl,
            DWORD dwAceRevision,
            DWORD dwStartingAceIndex,
           LPVOID pAceList,
            DWORD nAceListLength
    );


__declspec(dllimport)
BOOL
__stdcall
DeleteAce (
         PACL pAcl,
            DWORD dwAceIndex
    );


__declspec(dllimport)
BOOL
__stdcall
GetAce (
                PACL pAcl,
                DWORD dwAceIndex,
                  LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
AddAccessAllowedAce (
         PACL pAcl,
            DWORD dwAceRevision,
            DWORD AccessMask,
            PSID pSid
    );















__declspec(dllimport)
BOOL
__stdcall
AddAccessDeniedAce (
         PACL pAcl,
            DWORD dwAceRevision,
            DWORD AccessMask,
            PSID pSid
    );














__declspec(dllimport)
BOOL
__stdcall
AddAuditAccessAce(
         PACL pAcl,
            DWORD dwAceRevision,
            DWORD dwAccessMask,
            PSID pSid,
            BOOL bAuditSuccess,
            BOOL bAuditFailure
    );

























































__declspec(dllimport)
BOOL
__stdcall
FindFirstFreeAce (
                PACL pAcl,
                  LPVOID *pAce
    );


__declspec(dllimport)
BOOL
__stdcall
InitializeSecurityDescriptor (
         PSECURITY_DESCRIPTOR pSecurityDescriptor,
          DWORD dwRevision
    );


__declspec(dllimport)
BOOL
__stdcall
IsValidSecurityDescriptor (
         PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
DWORD
__stdcall
GetSecurityDescriptorLength (
         PSECURITY_DESCRIPTOR pSecurityDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorControl (
          PSECURITY_DESCRIPTOR pSecurityDescriptor,
         PSECURITY_DESCRIPTOR_CONTROL pControl,
         LPDWORD lpdwRevision
    );












__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorDacl (
          PSECURITY_DESCRIPTOR pSecurityDescriptor,
             BOOL bDaclPresent,
           PACL pDacl,
             BOOL bDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorDacl (
                PSECURITY_DESCRIPTOR pSecurityDescriptor,
               LPBOOL lpbDaclPresent,
                  PACL *pDacl,
               LPBOOL lpbDaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorSacl (
          PSECURITY_DESCRIPTOR pSecurityDescriptor,
             BOOL bSaclPresent,
           PACL pSacl,
             BOOL bSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorSacl (
                PSECURITY_DESCRIPTOR pSecurityDescriptor,
               LPBOOL lpbSaclPresent,
                  PACL *pSacl,
               LPBOOL lpbSaclDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorOwner (
          PSECURITY_DESCRIPTOR pSecurityDescriptor,
           PSID pOwner,
             BOOL bOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorOwner (
                PSECURITY_DESCRIPTOR pSecurityDescriptor,
                  PSID *pOwner,
               LPBOOL lpbOwnerDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
SetSecurityDescriptorGroup (
          PSECURITY_DESCRIPTOR pSecurityDescriptor,
           PSID pGroup,
             BOOL bGroupDefaulted
    );


__declspec(dllimport)
BOOL
__stdcall
GetSecurityDescriptorGroup (
                PSECURITY_DESCRIPTOR pSecurityDescriptor,
                  PSID *pGroup,
               LPBOOL lpbGroupDefaulted
    );


__declspec(dllimport)
DWORD
__stdcall
SetSecurityDescriptorRMControl(
          PSECURITY_DESCRIPTOR SecurityDescriptor,
           PUCHAR RMControl
    );

__declspec(dllimport)
DWORD
__stdcall
GetSecurityDescriptorRMControl(
          PSECURITY_DESCRIPTOR SecurityDescriptor,
         PUCHAR RMControl
    );

__declspec(dllimport)
BOOL
__stdcall
CreatePrivateObjectSecurity (
              PSECURITY_DESCRIPTOR ParentDescriptor,
              PSECURITY_DESCRIPTOR CreatorDescriptor,
                  PSECURITY_DESCRIPTOR * NewDescriptor,
                BOOL IsDirectoryObject,
              HANDLE Token,
                PGENERIC_MAPPING GenericMapping
    );












































__declspec(dllimport)
BOOL
__stdcall
SetPrivateObjectSecurity (
                  SECURITY_INFORMATION SecurityInformation,
                  PSECURITY_DESCRIPTOR ModificationDescriptor,
             PSECURITY_DESCRIPTOR *ObjectsSecurityDescriptor,
                  PGENERIC_MAPPING GenericMapping,
                HANDLE Token
    );















__declspec(dllimport)
BOOL
__stdcall
GetPrivateObjectSecurity (
          PSECURITY_DESCRIPTOR ObjectDescriptor,
          SECURITY_INFORMATION SecurityInformation,
             PSECURITY_DESCRIPTOR ResultantDescriptor,
          DWORD DescriptorLength,
         PDWORD ReturnLength
    );


__declspec(dllimport)
BOOL
__stdcall
DestroyPrivateObjectSecurity (
     PSECURITY_DESCRIPTOR * ObjectDescriptor
    );


__declspec(dllimport)
BOOL
__stdcall
MakeSelfRelativeSD (
            PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
             PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
         LPDWORD lpdwBufferLength
    );


__declspec(dllimport)
BOOL
__stdcall
MakeAbsoluteSD (
            PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
             PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,
         LPDWORD lpdwAbsoluteSecurityDescriptorSize,
             PACL pDacl,
         LPDWORD lpdwDaclSize,
             PACL pSacl,
         LPDWORD lpdwSaclSize,
             PSID pOwner,
         LPDWORD lpdwOwnerSize,
             PSID pPrimaryGroup,
         LPDWORD lpdwPrimaryGroupSize
    );


__declspec(dllimport)
BOOL
__stdcall
MakeAbsoluteSD2 (
               PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,
         LPDWORD lpdwBufferSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityA (
         LPCSTR lpFileName,
         SECURITY_INFORMATION SecurityInformation,
         PSECURITY_DESCRIPTOR pSecurityDescriptor
    );
__declspec(dllimport)
BOOL
__stdcall
SetFileSecurityW (
         LPCWSTR lpFileName,
         SECURITY_INFORMATION SecurityInformation,
         PSECURITY_DESCRIPTOR pSecurityDescriptor
    );







__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityA (
          LPCSTR lpFileName,
          SECURITY_INFORMATION RequestedInformation,
             PSECURITY_DESCRIPTOR pSecurityDescriptor,
          DWORD nLength,
         LPDWORD lpnLengthNeeded
    );
__declspec(dllimport)
BOOL
__stdcall
GetFileSecurityW (
          LPCWSTR lpFileName,
          SECURITY_INFORMATION RequestedInformation,
             PSECURITY_DESCRIPTOR pSecurityDescriptor,
          DWORD nLength,
         LPDWORD lpnLengthNeeded
    );







__declspec(dllimport)
BOOL
__stdcall
SetKernelObjectSecurity (
         HANDLE Handle,
         SECURITY_INFORMATION SecurityInformation,
         PSECURITY_DESCRIPTOR SecurityDescriptor
    );

__declspec(dllimport)
    
HANDLE
__stdcall
FindFirstChangeNotificationA(
         LPCSTR lpPathName,
         BOOL bWatchSubtree,
         DWORD dwNotifyFilter
    );
__declspec(dllimport)
    
HANDLE
__stdcall
FindFirstChangeNotificationW(
         LPCWSTR lpPathName,
         BOOL bWatchSubtree,
         DWORD dwNotifyFilter
    );






__declspec(dllimport)
BOOL
__stdcall
FindNextChangeNotification(
         HANDLE hChangeHandle
    );

__declspec(dllimport)
BOOL
__stdcall
FindCloseChangeNotification(
         HANDLE hChangeHandle
    );

















__declspec(dllimport)
BOOL
__stdcall
VirtualLock(
         LPVOID lpAddress,
         SIZE_T dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
VirtualUnlock(
         LPVOID lpAddress,
         SIZE_T dwSize
    );

__declspec(dllimport)
    
LPVOID
__stdcall
MapViewOfFileEx(
             HANDLE hFileMappingObject,
             DWORD dwDesiredAccess,
             DWORD dwFileOffsetHigh,
             DWORD dwFileOffsetLow,
             SIZE_T dwNumberOfBytesToMap,
           LPVOID lpBaseAddress
    );

__declspec(dllimport)
BOOL
__stdcall
SetPriorityClass(
         HANDLE hProcess,
         DWORD dwPriorityClass
    );

__declspec(dllimport)
DWORD
__stdcall
GetPriorityClass(
         HANDLE hProcess
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadReadPtr(
           const void *lp,
             UINT_PTR ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadWritePtr(
           LPVOID lp,
             UINT_PTR ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeReadPtr(
           const void *lp,
             UINT_PTR ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadHugeWritePtr(
           LPVOID lp,
             UINT_PTR ucb
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadCodePtr(
           FARPROC lpfn
    );

__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrA(
           LPCSTR lpsz,
             UINT_PTR ucchMax
    );
__declspec(dllimport)
BOOL
__stdcall
IsBadStringPtrW(
           LPCWSTR lpsz,
             UINT_PTR ucchMax
    );






__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidA(
           LPCSTR lpSystemName,
         PSID Sid,
             LPSTR Name,
          LPDWORD cchName,
             LPSTR ReferencedDomainName,
         LPDWORD cchReferencedDomainName,
         PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountSidW(
           LPCWSTR lpSystemName,
         PSID Sid,
             LPWSTR Name,
          LPDWORD cchName,
             LPWSTR ReferencedDomainName,
         LPDWORD cchReferencedDomainName,
         PSID_NAME_USE peUse
    );






__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameA(
           LPCSTR lpSystemName,
             LPCSTR lpAccountName,
             PSID Sid,
          LPDWORD cbSid,
             LPSTR ReferencedDomainName,
          LPDWORD cchReferencedDomainName,
            PSID_NAME_USE peUse
    );
__declspec(dllimport)
BOOL
__stdcall
LookupAccountNameW(
           LPCWSTR lpSystemName,
             LPCWSTR lpAccountName,
             PSID Sid,
          LPDWORD cbSid,
             LPWSTR ReferencedDomainName,
          LPDWORD cchReferencedDomainName,
            PSID_NAME_USE peUse
    );






__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueA(
           LPCSTR lpSystemName,
             LPCSTR lpName,
            PLUID   lpLuid
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeValueW(
           LPCWSTR lpSystemName,
             LPCWSTR lpName,
            PLUID   lpLuid
    );






__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameA(
           LPCSTR lpSystemName,
             PLUID   lpLuid,
             LPSTR lpName,
          LPDWORD cchName
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeNameW(
           LPCWSTR lpSystemName,
             PLUID   lpLuid,
             LPWSTR lpName,
          LPDWORD cchName
    );






__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameA(
           LPCSTR lpSystemName,
             LPCSTR lpName,
             LPSTR lpDisplayName,
          LPDWORD cchDisplayName,
            LPDWORD lpLanguageId
    );
__declspec(dllimport)
BOOL
__stdcall
LookupPrivilegeDisplayNameW(
           LPCWSTR lpSystemName,
             LPCWSTR lpName,
             LPWSTR lpDisplayName,
          LPDWORD cchDisplayName,
            LPDWORD lpLanguageId
    );






__declspec(dllimport)
BOOL
__stdcall
AllocateLocallyUniqueId(
         PLUID Luid
    );

__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBA(
          LPCSTR lpDef,
         LPDCB lpDCB
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBW(
          LPCWSTR lpDef,
         LPDCB lpDCB
    );






__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsA(
          LPCSTR lpDef,
         LPDCB lpDCB,
         LPCOMMTIMEOUTS lpCommTimeouts
    );
__declspec(dllimport)
BOOL
__stdcall
BuildCommDCBAndTimeoutsW(
          LPCWSTR lpDef,
         LPDCB lpDCB,
         LPCOMMTIMEOUTS lpCommTimeouts
    );






__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogA(
             LPCSTR lpszName,
           HWND hWnd,
          LPCOMMCONFIG lpCC
    );
__declspec(dllimport)
BOOL
__stdcall
CommConfigDialogW(
             LPCWSTR lpszName,
           HWND hWnd,
          LPCOMMCONFIG lpCC
    );






__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigA(
            LPCSTR lpszName,
           LPCOMMCONFIG lpCC,
         LPDWORD lpdwSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetDefaultCommConfigW(
            LPCWSTR lpszName,
           LPCOMMCONFIG lpCC,
         LPDWORD lpdwSize
    );






__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigA(
         LPCSTR lpszName,
           LPCOMMCONFIG lpCC,
         DWORD dwSize
    );
__declspec(dllimport)
BOOL
__stdcall
SetDefaultCommConfigW(
         LPCWSTR lpszName,
           LPCOMMCONFIG lpCC,
         DWORD dwSize
    );












__declspec(dllimport)
BOOL
__stdcall
GetComputerNameA (
           LPSTR lpBuffer,
         LPDWORD nSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetComputerNameW (
           LPWSTR lpBuffer,
         LPDWORD nSize
    );






__declspec(dllimport)
BOOL
__stdcall
SetComputerNameA (
         LPCSTR lpComputerName
    );
__declspec(dllimport)
BOOL
__stdcall
SetComputerNameW (
         LPCWSTR lpComputerName
    );
























































































__declspec(dllimport)
BOOL
__stdcall
GetUserNameA (
           LPSTR lpBuffer,
         LPDWORD pcbBuffer
    );
__declspec(dllimport)
BOOL
__stdcall
GetUserNameW (
           LPWSTR lpBuffer,
         LPDWORD pcbBuffer
    );































__declspec(dllimport)
BOOL
__stdcall
LogonUserA (
                LPCSTR lpszUsername,
              LPCSTR lpszDomain,
                LPCSTR lpszPassword,
                DWORD dwLogonType,
                DWORD dwLogonProvider,
                  PHANDLE phToken
    );
__declspec(dllimport)
BOOL
__stdcall
LogonUserW (
                LPCWSTR lpszUsername,
              LPCWSTR lpszDomain,
                LPCWSTR lpszPassword,
                DWORD dwLogonType,
                DWORD dwLogonProvider,
                  PHANDLE phToken
    );






__declspec(dllimport)
BOOL
__stdcall
LogonUserExA (
                    LPCSTR lpszUsername,
                  LPCSTR lpszDomain,
                    LPCSTR lpszPassword,
                    DWORD dwLogonType,
                    DWORD dwLogonProvider,
                    PHANDLE phToken,
                    PSID  *ppLogonSid,
                       PVOID *ppProfileBuffer,
                 LPDWORD pdwProfileLength,
                 PQUOTA_LIMITS pQuotaLimits
    );
__declspec(dllimport)
BOOL
__stdcall
LogonUserExW (
                    LPCWSTR lpszUsername,
                  LPCWSTR lpszDomain,
                    LPCWSTR lpszPassword,
                    DWORD dwLogonType,
                    DWORD dwLogonProvider,
                    PHANDLE phToken,
                    PSID  *ppLogonSid,
                       PVOID *ppProfileBuffer,
                 LPDWORD pdwProfileLength,
                 PQUOTA_LIMITS pQuotaLimits
    );






__declspec(dllimport)
BOOL
__stdcall
ImpersonateLoggedOnUser(
         HANDLE  hToken
    );

__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserA (
              HANDLE hToken,
              LPCSTR lpApplicationName,
           LPSTR lpCommandLine,
              LPSECURITY_ATTRIBUTES lpProcessAttributes,
              LPSECURITY_ATTRIBUTES lpThreadAttributes,
                BOOL bInheritHandles,
                DWORD dwCreationFlags,
              LPVOID lpEnvironment,
              LPCSTR lpCurrentDirectory,
                LPSTARTUPINFOA lpStartupInfo,
               LPPROCESS_INFORMATION lpProcessInformation
    );
__declspec(dllimport)
BOOL
__stdcall
CreateProcessAsUserW (
              HANDLE hToken,
              LPCWSTR lpApplicationName,
           LPWSTR lpCommandLine,
              LPSECURITY_ATTRIBUTES lpProcessAttributes,
              LPSECURITY_ATTRIBUTES lpThreadAttributes,
                BOOL bInheritHandles,
                DWORD dwCreationFlags,
              LPVOID lpEnvironment,
              LPCWSTR lpCurrentDirectory,
                LPSTARTUPINFOW lpStartupInfo,
               LPPROCESS_INFORMATION lpProcessInformation
    );


















































__declspec(dllimport)
BOOL
__stdcall
ImpersonateAnonymousToken(
         HANDLE ThreadHandle
    );

__declspec(dllimport)
BOOL
__stdcall
DuplicateTokenEx(
                HANDLE hExistingToken,
                DWORD dwDesiredAccess,
              LPSECURITY_ATTRIBUTES lpTokenAttributes,
                SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,
                TOKEN_TYPE TokenType,
                  PHANDLE phNewToken);

__declspec(dllimport)
BOOL
__stdcall
CreateRestrictedToken(
                HANDLE ExistingTokenHandle,
                DWORD Flags,
                DWORD DisableSidCount,
             PSID_AND_ATTRIBUTES SidsToDisable,
                DWORD DeletePrivilegeCount,
             PLUID_AND_ATTRIBUTES PrivilegesToDelete,
                DWORD RestrictedSidCount,
             PSID_AND_ATTRIBUTES SidsToRestrict,
                  PHANDLE NewTokenHandle
    );


__declspec(dllimport)
BOOL
__stdcall
IsTokenRestricted(
         HANDLE TokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
IsTokenUntrusted(
         HANDLE TokenHandle
    );

__declspec(dllimport)
BOOL
__stdcall
CheckTokenMembership(
           HANDLE TokenHandle,
             PSID SidToCheck,
            PBOOL IsMember
    );
















































































































































































































__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceCounter(
         LARGE_INTEGER *lpPerformanceCount
    );

__declspec(dllimport)
BOOL
__stdcall
QueryPerformanceFrequency(
         LARGE_INTEGER *lpFrequency
    );



__declspec(dllimport)
BOOL
__stdcall
GetVersionExA(
         LPOSVERSIONINFOA lpVersionInformation
    );
__declspec(dllimport)
BOOL
__stdcall
GetVersionExW(
         LPOSVERSIONINFOW lpVersionInformation
    );








__declspec(dllimport)
BOOL
__stdcall
VerifyVersionInfoA(
         LPOSVERSIONINFOEXA lpVersionInformation,
            DWORD dwTypeMask,
            DWORDLONG dwlConditionMask
    );
__declspec(dllimport)
BOOL
__stdcall
VerifyVersionInfoW(
         LPOSVERSIONINFOEXW lpVersionInformation,
            DWORD dwTypeMask,
            DWORDLONG dwlConditionMask
    );























#pragma once



































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































 
 
 
 
 






























































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































typedef struct _SYSTEM_POWER_STATUS {
    BYTE ACLineStatus;
    BYTE BatteryFlag;
    BYTE BatteryLifePercent;
    BYTE Reserved1;
    DWORD BatteryLifeTime;
    DWORD BatteryFullLifeTime;
}   SYSTEM_POWER_STATUS, *LPSYSTEM_POWER_STATUS;

BOOL
__stdcall
GetSystemPowerStatus(
         LPSYSTEM_POWER_STATUS lpSystemPowerStatus
    );

BOOL
__stdcall
SetSystemPowerState(
         BOOL fSuspend,
         BOOL fForce
    );














































































































































































































































































































































































































































































































































































































































































































__declspec(dllimport)
BOOL
__stdcall
ProcessIdToSessionId(
          DWORD dwProcessId,
         DWORD *pSessionId
    );


















__declspec(dllimport)
BOOL
__stdcall
GetLogicalProcessorInformation(
           PSYSTEM_LOGICAL_PROCESSOR_INFORMATION Buffer,
         PDWORD ReturnedLength
    );





__declspec(dllimport)
BOOL
__stdcall
GetNumaHighestNodeNumber(
         PULONG HighestNodeNumber
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumaProcessorNode(
          UCHAR Processor,
         PUCHAR NodeNumber
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumaNodeProcessorMask(
          UCHAR Node,
         PULONGLONG ProcessorMask
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumaAvailableMemoryNode(
          UCHAR Node,
         PULONGLONG AvailableBytes
    );










}













































extern "C" {





































































































































































































































typedef struct _DRAWPATRECT {
        POINT ptPosition;
        POINT ptSize;
        WORD wStyle;
        WORD wPattern;
} DRAWPATRECT, *PDRAWPATRECT;










































































































typedef struct _PSINJECTDATA {

    DWORD   DataBytes;      
    WORD    InjectionPoint; 
    WORD    PageNumber;     

    

} PSINJECTDATA, *PPSINJECTDATA;

































































typedef struct _PSFEATURE_OUTPUT {

    BOOL bPageIndependent;
    BOOL bSetPageDevice;

} PSFEATURE_OUTPUT, *PPSFEATURE_OUTPUT;





typedef struct _PSFEATURE_CUSTPAPER {

    LONG lOrientation;
    LONG lWidth;
    LONG lHeight;
    LONG lWidthOffset;
    LONG lHeightOffset;

} PSFEATURE_CUSTPAPER, *PPSFEATURE_CUSTPAPER;
















































typedef struct  tagXFORM
  {
    FLOAT   eM11;
    FLOAT   eM12;
    FLOAT   eM21;
    FLOAT   eM22;
    FLOAT   eDx;
    FLOAT   eDy;
  } XFORM, *PXFORM,  *LPXFORM;


typedef struct tagBITMAP
  {
    LONG        bmType;
    LONG        bmWidth;
    LONG        bmHeight;
    LONG        bmWidthBytes;
    WORD        bmPlanes;
    WORD        bmBitsPixel;
    LPVOID      bmBits;
  } BITMAP, *PBITMAP,  *NPBITMAP,  *LPBITMAP;

























#pragma warning(disable:4103)

#pragma pack(push,1)








typedef struct tagRGBTRIPLE {
        BYTE    rgbtBlue;
        BYTE    rgbtGreen;
        BYTE    rgbtRed;
} RGBTRIPLE;



























#pragma warning(disable:4103)

#pragma pack(pop)









typedef struct tagRGBQUAD {
        BYTE    rgbBlue;
        BYTE    rgbGreen;
        BYTE    rgbRed;
        BYTE    rgbReserved;
} RGBQUAD;
typedef RGBQUAD * LPRGBQUAD;


















typedef LONG   LCSCSTYPE;


typedef LONG    LCSGAMUTMATCH;


























typedef long            FXPT16DOT16,  *LPFXPT16DOT16;
typedef long            FXPT2DOT30,  *LPFXPT2DOT30;




typedef struct tagCIEXYZ
{
        FXPT2DOT30 ciexyzX;
        FXPT2DOT30 ciexyzY;
        FXPT2DOT30 ciexyzZ;
} CIEXYZ;
typedef CIEXYZ   *LPCIEXYZ;

typedef struct tagICEXYZTRIPLE
{
        CIEXYZ  ciexyzRed;
        CIEXYZ  ciexyzGreen;
        CIEXYZ  ciexyzBlue;
} CIEXYZTRIPLE;
typedef CIEXYZTRIPLE     *LPCIEXYZTRIPLE;






typedef struct tagLOGCOLORSPACEA {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    CHAR   lcsFilename[260];
} LOGCOLORSPACEA, *LPLOGCOLORSPACEA;
typedef struct tagLOGCOLORSPACEW {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    WCHAR  lcsFilename[260];
} LOGCOLORSPACEW, *LPLOGCOLORSPACEW;




typedef LOGCOLORSPACEA LOGCOLORSPACE;
typedef LPLOGCOLORSPACEA LPLOGCOLORSPACE;





typedef struct tagBITMAPCOREHEADER {
        DWORD   bcSize;                 
        WORD    bcWidth;
        WORD    bcHeight;
        WORD    bcPlanes;
        WORD    bcBitCount;
} BITMAPCOREHEADER,  *LPBITMAPCOREHEADER, *PBITMAPCOREHEADER;

typedef struct tagBITMAPINFOHEADER{
        DWORD      biSize;
        LONG       biWidth;
        LONG       biHeight;
        WORD       biPlanes;
        WORD       biBitCount;
        DWORD      biCompression;
        DWORD      biSizeImage;
        LONG       biXPelsPerMeter;
        LONG       biYPelsPerMeter;
        DWORD      biClrUsed;
        DWORD      biClrImportant;
} BITMAPINFOHEADER,  *LPBITMAPINFOHEADER, *PBITMAPINFOHEADER;


typedef struct {
        DWORD        bV4Size;
        LONG         bV4Width;
        LONG         bV4Height;
        WORD         bV4Planes;
        WORD         bV4BitCount;
        DWORD        bV4V4Compression;
        DWORD        bV4SizeImage;
        LONG         bV4XPelsPerMeter;
        LONG         bV4YPelsPerMeter;
        DWORD        bV4ClrUsed;
        DWORD        bV4ClrImportant;
        DWORD        bV4RedMask;
        DWORD        bV4GreenMask;
        DWORD        bV4BlueMask;
        DWORD        bV4AlphaMask;
        DWORD        bV4CSType;
        CIEXYZTRIPLE bV4Endpoints;
        DWORD        bV4GammaRed;
        DWORD        bV4GammaGreen;
        DWORD        bV4GammaBlue;
} BITMAPV4HEADER,  *LPBITMAPV4HEADER, *PBITMAPV4HEADER;



typedef struct {
        DWORD        bV5Size;
        LONG         bV5Width;
        LONG         bV5Height;
        WORD         bV5Planes;
        WORD         bV5BitCount;
        DWORD        bV5Compression;
        DWORD        bV5SizeImage;
        LONG         bV5XPelsPerMeter;
        LONG         bV5YPelsPerMeter;
        DWORD        bV5ClrUsed;
        DWORD        bV5ClrImportant;
        DWORD        bV5RedMask;
        DWORD        bV5GreenMask;
        DWORD        bV5BlueMask;
        DWORD        bV5AlphaMask;
        DWORD        bV5CSType;
        CIEXYZTRIPLE bV5Endpoints;
        DWORD        bV5GammaRed;
        DWORD        bV5GammaGreen;
        DWORD        bV5GammaBlue;
        DWORD        bV5Intent;
        DWORD        bV5ProfileData;
        DWORD        bV5ProfileSize;
        DWORD        bV5Reserved;
} BITMAPV5HEADER,  *LPBITMAPV5HEADER, *PBITMAPV5HEADER;
















typedef struct tagBITMAPINFO {
    BITMAPINFOHEADER    bmiHeader;
    RGBQUAD             bmiColors[1];
} BITMAPINFO,  *LPBITMAPINFO, *PBITMAPINFO;

typedef struct tagBITMAPCOREINFO {
    BITMAPCOREHEADER    bmciHeader;
    RGBTRIPLE           bmciColors[1];
} BITMAPCOREINFO,  *LPBITMAPCOREINFO, *PBITMAPCOREINFO;

























#pragma warning(disable:4103)

#pragma pack(push,2)








typedef struct tagBITMAPFILEHEADER {
        WORD    bfType;
        DWORD   bfSize;
        WORD    bfReserved1;
        WORD    bfReserved2;
        DWORD   bfOffBits;
} BITMAPFILEHEADER,  *LPBITMAPFILEHEADER, *PBITMAPFILEHEADER;



























#pragma warning(disable:4103)

#pragma pack(pop)













typedef struct tagFONTSIGNATURE
{
    DWORD fsUsb[4];
    DWORD fsCsb[2];
} FONTSIGNATURE, *PFONTSIGNATURE, *LPFONTSIGNATURE;

typedef struct tagCHARSETINFO
{
    UINT ciCharset;
    UINT ciACP;
    FONTSIGNATURE fs;
} CHARSETINFO, *PCHARSETINFO,  *NPCHARSETINFO,  *LPCHARSETINFO;






typedef struct tagLOCALESIGNATURE
{
    DWORD lsUsb[4];
    DWORD lsCsbDefault[2];
    DWORD lsCsbSupported[2];
} LOCALESIGNATURE, *PLOCALESIGNATURE, *LPLOCALESIGNATURE;








typedef struct tagHANDLETABLE
  {
    HGDIOBJ     objectHandle[1];
  } HANDLETABLE, *PHANDLETABLE,  *LPHANDLETABLE;

typedef struct tagMETARECORD
  {
    DWORD       rdSize;
    WORD        rdFunction;
    WORD        rdParm[1];
  } METARECORD;
typedef struct tagMETARECORD  *PMETARECORD;
typedef struct tagMETARECORD   *LPMETARECORD;

typedef struct tagMETAFILEPICT
  {
    LONG        mm;
    LONG        xExt;
    LONG        yExt;
    HMETAFILE   hMF;
  } METAFILEPICT,  *LPMETAFILEPICT;

























#pragma warning(disable:4103)

#pragma pack(push,2)








typedef struct tagMETAHEADER
{
    WORD        mtType;
    WORD        mtHeaderSize;
    WORD        mtVersion;
    DWORD       mtSize;
    WORD        mtNoObjects;
    DWORD       mtMaxRecord;
    WORD        mtNoParameters;
} METAHEADER;
typedef struct tagMETAHEADER  *PMETAHEADER;
typedef struct tagMETAHEADER   *LPMETAHEADER;




























#pragma warning(disable:4103)

#pragma pack(pop)










typedef struct tagENHMETARECORD
{
    DWORD   iType;              
    DWORD   nSize;              
    DWORD   dParm[1];           
} ENHMETARECORD, *PENHMETARECORD, *LPENHMETARECORD;

typedef struct tagENHMETAHEADER
{
    DWORD   iType;              
    DWORD   nSize;              
                                
    RECTL   rclBounds;          
    RECTL   rclFrame;           
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   nBytes;             
    DWORD   nRecords;           
    WORD    nHandles;           
                                
    WORD    sReserved;          
    DWORD   nDescription;       
                                
    DWORD   offDescription;     
                                
    DWORD   nPalEntries;        
    SIZEL   szlDevice;          
    SIZEL   szlMillimeters;     

    DWORD   cbPixelFormat;      
                                
    DWORD   offPixelFormat;     
                                
    DWORD   bOpenGL;            
                                


    SIZEL   szlMicrometers;     


} ENHMETAHEADER, *PENHMETAHEADER, *LPENHMETAHEADER;

















    typedef BYTE BCHAR;




typedef struct tagTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICA, *PTEXTMETRICA,  *NPTEXTMETRICA,  *LPTEXTMETRICA;
typedef struct tagTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
} TEXTMETRICW, *PTEXTMETRICW,  *NPTEXTMETRICW,  *LPTEXTMETRICW;






typedef TEXTMETRICA TEXTMETRIC;
typedef PTEXTMETRICA PTEXTMETRIC;
typedef NPTEXTMETRICA NPTEXTMETRIC;
typedef LPTEXTMETRICA LPTEXTMETRIC;









































#pragma warning(disable:4103)

#pragma pack(push,4)








typedef struct tagNEWTEXTMETRICA
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    BYTE        tmFirstChar;
    BYTE        tmLastChar;
    BYTE        tmDefaultChar;
    BYTE        tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICA, *PNEWTEXTMETRICA,  *NPNEWTEXTMETRICA,  *LPNEWTEXTMETRICA;
typedef struct tagNEWTEXTMETRICW
{
    LONG        tmHeight;
    LONG        tmAscent;
    LONG        tmDescent;
    LONG        tmInternalLeading;
    LONG        tmExternalLeading;
    LONG        tmAveCharWidth;
    LONG        tmMaxCharWidth;
    LONG        tmWeight;
    LONG        tmOverhang;
    LONG        tmDigitizedAspectX;
    LONG        tmDigitizedAspectY;
    WCHAR       tmFirstChar;
    WCHAR       tmLastChar;
    WCHAR       tmDefaultChar;
    WCHAR       tmBreakChar;
    BYTE        tmItalic;
    BYTE        tmUnderlined;
    BYTE        tmStruckOut;
    BYTE        tmPitchAndFamily;
    BYTE        tmCharSet;
    DWORD   ntmFlags;
    UINT    ntmSizeEM;
    UINT    ntmCellHeight;
    UINT    ntmAvgWidth;
} NEWTEXTMETRICW, *PNEWTEXTMETRICW,  *NPNEWTEXTMETRICW,  *LPNEWTEXTMETRICW;






typedef NEWTEXTMETRICA NEWTEXTMETRIC;
typedef PNEWTEXTMETRICA PNEWTEXTMETRIC;
typedef NPNEWTEXTMETRICA NPNEWTEXTMETRIC;
typedef LPNEWTEXTMETRICA LPNEWTEXTMETRIC;




























#pragma warning(disable:4103)

#pragma pack(pop)










typedef struct tagNEWTEXTMETRICEXA
{
    NEWTEXTMETRICA  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXA;
typedef struct tagNEWTEXTMETRICEXW
{
    NEWTEXTMETRICW  ntmTm;
    FONTSIGNATURE   ntmFontSig;
}NEWTEXTMETRICEXW;



typedef NEWTEXTMETRICEXA NEWTEXTMETRICEX;







typedef struct tagPELARRAY
  {
    LONG        paXCount;
    LONG        paYCount;
    LONG        paXExt;
    LONG        paYExt;
    BYTE        paRGBs;
  } PELARRAY, *PPELARRAY,  *NPPELARRAY,  *LPPELARRAY;


typedef struct tagLOGBRUSH
  {
    UINT        lbStyle;
    COLORREF    lbColor;
    ULONG_PTR    lbHatch;    
  } LOGBRUSH, *PLOGBRUSH,  *NPLOGBRUSH,  *LPLOGBRUSH;

typedef struct tagLOGBRUSH32
  {
    UINT        lbStyle;
    COLORREF    lbColor;
    ULONG       lbHatch;
  } LOGBRUSH32, *PLOGBRUSH32,  *NPLOGBRUSH32,  *LPLOGBRUSH32;

typedef LOGBRUSH            PATTERN;
typedef PATTERN             *PPATTERN;
typedef PATTERN         *NPPATTERN;
typedef PATTERN          *LPPATTERN;


typedef struct tagLOGPEN
  {
    UINT        lopnStyle;
    POINT       lopnWidth;
    COLORREF    lopnColor;
  } LOGPEN, *PLOGPEN,  *NPLOGPEN,  *LPLOGPEN;

typedef struct tagEXTLOGPEN {
    DWORD       elpPenStyle;
    DWORD       elpWidth;
    UINT        elpBrushStyle;
    COLORREF    elpColor;
    ULONG_PTR    elpHatch;     
    DWORD       elpNumEntries;
    DWORD       elpStyleEntry[1];
} EXTLOGPEN, *PEXTLOGPEN,  *NPEXTLOGPEN,  *LPEXTLOGPEN;



typedef struct tagPALETTEENTRY {
    BYTE        peRed;
    BYTE        peGreen;
    BYTE        peBlue;
    BYTE        peFlags;
} PALETTEENTRY, *PPALETTEENTRY,  *LPPALETTEENTRY;





typedef struct tagLOGPALETTE {
    WORD        palVersion;
    WORD        palNumEntries;
    PALETTEENTRY        palPalEntry[1];
} LOGPALETTE, *PLOGPALETTE,  *NPLOGPALETTE,  *LPLOGPALETTE;






typedef struct tagLOGFONTA
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    CHAR      lfFaceName[32];
} LOGFONTA, *PLOGFONTA,  *NPLOGFONTA,  *LPLOGFONTA;
typedef struct tagLOGFONTW
{
    LONG      lfHeight;
    LONG      lfWidth;
    LONG      lfEscapement;
    LONG      lfOrientation;
    LONG      lfWeight;
    BYTE      lfItalic;
    BYTE      lfUnderline;
    BYTE      lfStrikeOut;
    BYTE      lfCharSet;
    BYTE      lfOutPrecision;
    BYTE      lfClipPrecision;
    BYTE      lfQuality;
    BYTE      lfPitchAndFamily;
    WCHAR     lfFaceName[32];
} LOGFONTW, *PLOGFONTW,  *NPLOGFONTW,  *LPLOGFONTW;






typedef LOGFONTA LOGFONT;
typedef PLOGFONTA PLOGFONT;
typedef NPLOGFONTA NPLOGFONT;
typedef LPLOGFONTA LPLOGFONT;





typedef struct tagENUMLOGFONTA
{
    LOGFONTA elfLogFont;
    BYTE     elfFullName[64];
    BYTE     elfStyle[32];
} ENUMLOGFONTA, * LPENUMLOGFONTA;

typedef struct tagENUMLOGFONTW
{
    LOGFONTW elfLogFont;
    WCHAR    elfFullName[64];
    WCHAR    elfStyle[32];
} ENUMLOGFONTW, * LPENUMLOGFONTW;




typedef ENUMLOGFONTA ENUMLOGFONT;
typedef LPENUMLOGFONTA LPENUMLOGFONT;



typedef struct tagENUMLOGFONTEXA
{
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    BYTE        elfScript[32];
} ENUMLOGFONTEXA,  *LPENUMLOGFONTEXA;
typedef struct tagENUMLOGFONTEXW
{
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    WCHAR       elfScript[32];
} ENUMLOGFONTEXW,  *LPENUMLOGFONTEXW;




typedef ENUMLOGFONTEXA ENUMLOGFONTEX;
typedef LPENUMLOGFONTEXA LPENUMLOGFONTEX;



























































































                                    

                                    

                                    



































typedef struct tagPANOSE
{
    BYTE    bFamilyType;
    BYTE    bSerifStyle;
    BYTE    bWeight;
    BYTE    bProportion;
    BYTE    bContrast;
    BYTE    bStrokeVariation;
    BYTE    bArmStyle;
    BYTE    bLetterform;
    BYTE    bMidline;
    BYTE    bXHeight;
} PANOSE, * LPPANOSE;

















































































































typedef struct tagEXTLOGFONTA {
    LOGFONTA    elfLogFont;
    BYTE        elfFullName[64];
    BYTE        elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTA, *PEXTLOGFONTA,  *NPEXTLOGFONTA,  *LPEXTLOGFONTA;
typedef struct tagEXTLOGFONTW {
    LOGFONTW    elfLogFont;
    WCHAR       elfFullName[64];
    WCHAR       elfStyle[32];
    DWORD       elfVersion;     
    DWORD       elfStyleSize;
    DWORD       elfMatch;
    DWORD       elfReserved;
    BYTE        elfVendorId[4];
    DWORD       elfCulture;     
    PANOSE      elfPanose;
} EXTLOGFONTW, *PEXTLOGFONTW,  *NPEXTLOGFONTW,  *LPEXTLOGFONTW;






typedef EXTLOGFONTA EXTLOGFONT;
typedef PEXTLOGFONTA PEXTLOGFONT;
typedef NPEXTLOGFONTA NPEXTLOGFONT;
typedef LPEXTLOGFONTA LPEXTLOGFONT;
































































































































































































                             

                             

                             


















































































































































typedef struct _devicemodeA {
    BYTE   dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
        short dmScale;
        short dmCopies;
        short dmDefaultSource;
        short dmPrintQuality;
      };
      
      struct {
        POINTL dmPosition;
        DWORD  dmDisplayOrientation;
        DWORD  dmDisplayFixedOutput; 
      };
    };
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    BYTE   dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    union {
        DWORD  dmDisplayFlags;
        DWORD  dmNup;
    };
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;

    DWORD  dmPanningWidth;
    DWORD  dmPanningHeight;


} DEVMODEA, *PDEVMODEA, *NPDEVMODEA, *LPDEVMODEA;
typedef struct _devicemodeW {
    WCHAR  dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
        short dmScale;
        short dmCopies;
        short dmDefaultSource;
        short dmPrintQuality;
      };
      
      struct {
        POINTL dmPosition;
        DWORD  dmDisplayOrientation;
        DWORD  dmDisplayFixedOutput; 
      };
    };
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    WCHAR  dmFormName[32];
    WORD   dmLogPixels;
    DWORD  dmBitsPerPel;
    DWORD  dmPelsWidth;
    DWORD  dmPelsHeight;
    union {
        DWORD  dmDisplayFlags;
        DWORD  dmNup;
    };
    DWORD  dmDisplayFrequency;

    DWORD  dmICMMethod;
    DWORD  dmICMIntent;
    DWORD  dmMediaType;
    DWORD  dmDitherType;
    DWORD  dmReserved1;
    DWORD  dmReserved2;

    DWORD  dmPanningWidth;
    DWORD  dmPanningHeight;


} DEVMODEW, *PDEVMODEW, *NPDEVMODEW, *LPDEVMODEW;






typedef DEVMODEA DEVMODE;
typedef PDEVMODEA PDEVMODE;
typedef NPDEVMODEA NPDEVMODE;
typedef LPDEVMODEA LPDEVMODE;













































































































































































































































































































typedef struct _DISPLAY_DEVICEA {
    DWORD  cb;
    CHAR   DeviceName[32];
    CHAR   DeviceString[128];
    DWORD  StateFlags;
    CHAR   DeviceID[128];
    CHAR   DeviceKey[128];
} DISPLAY_DEVICEA, *PDISPLAY_DEVICEA, *LPDISPLAY_DEVICEA;
typedef struct _DISPLAY_DEVICEW {
    DWORD  cb;
    WCHAR  DeviceName[32];
    WCHAR  DeviceString[128];
    DWORD  StateFlags;
    WCHAR  DeviceID[128];
    WCHAR  DeviceKey[128];
} DISPLAY_DEVICEW, *PDISPLAY_DEVICEW, *LPDISPLAY_DEVICEW;





typedef DISPLAY_DEVICEA DISPLAY_DEVICE;
typedef PDISPLAY_DEVICEA PDISPLAY_DEVICE;
typedef LPDISPLAY_DEVICEA LPDISPLAY_DEVICE;





















typedef struct _RGNDATAHEADER {
    DWORD   dwSize;
    DWORD   iType;
    DWORD   nCount;
    DWORD   nRgnSize;
    RECT    rcBound;
} RGNDATAHEADER, *PRGNDATAHEADER;

typedef struct _RGNDATA {
    RGNDATAHEADER   rdh;
    char            Buffer[1];
} RGNDATA, *PRGNDATA,  *NPRGNDATA,  *LPRGNDATA;





typedef struct _ABC {
    int     abcA;
    UINT    abcB;
    int     abcC;
} ABC, *PABC,  *NPABC,  *LPABC;

typedef struct _ABCFLOAT {
    FLOAT   abcfA;
    FLOAT   abcfB;
    FLOAT   abcfC;
} ABCFLOAT, *PABCFLOAT,  *NPABCFLOAT,  *LPABCFLOAT;






typedef struct _OUTLINETEXTMETRICA {
    UINT    otmSize;
    TEXTMETRICA otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICA, *POUTLINETEXTMETRICA,  *NPOUTLINETEXTMETRICA,  *LPOUTLINETEXTMETRICA;
typedef struct _OUTLINETEXTMETRICW {
    UINT    otmSize;
    TEXTMETRICW otmTextMetrics;
    BYTE    otmFiller;
    PANOSE  otmPanoseNumber;
    UINT    otmfsSelection;
    UINT    otmfsType;
     int    otmsCharSlopeRise;
     int    otmsCharSlopeRun;
     int    otmItalicAngle;
    UINT    otmEMSquare;
     int    otmAscent;
     int    otmDescent;
    UINT    otmLineGap;
    UINT    otmsCapEmHeight;
    UINT    otmsXHeight;
    RECT    otmrcFontBox;
     int    otmMacAscent;
     int    otmMacDescent;
    UINT    otmMacLineGap;
    UINT    otmusMinimumPPEM;
    POINT   otmptSubscriptSize;
    POINT   otmptSubscriptOffset;
    POINT   otmptSuperscriptSize;
    POINT   otmptSuperscriptOffset;
    UINT    otmsStrikeoutSize;
     int    otmsStrikeoutPosition;
     int    otmsUnderscoreSize;
     int    otmsUnderscorePosition;
    PSTR    otmpFamilyName;
    PSTR    otmpFaceName;
    PSTR    otmpStyleName;
    PSTR    otmpFullName;
} OUTLINETEXTMETRICW, *POUTLINETEXTMETRICW,  *NPOUTLINETEXTMETRICW,  *LPOUTLINETEXTMETRICW;






typedef OUTLINETEXTMETRICA OUTLINETEXTMETRIC;
typedef POUTLINETEXTMETRICA POUTLINETEXTMETRIC;
typedef NPOUTLINETEXTMETRICA NPOUTLINETEXTMETRIC;
typedef LPOUTLINETEXTMETRICA LPOUTLINETEXTMETRIC;









typedef struct tagPOLYTEXTA
{
    int       x;
    int       y;
    UINT      n;
    LPCSTR    lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTA, *PPOLYTEXTA,  *NPPOLYTEXTA,  *LPPOLYTEXTA;
typedef struct tagPOLYTEXTW
{
    int       x;
    int       y;
    UINT      n;
    LPCWSTR   lpstr;
    UINT      uiFlags;
    RECT      rcl;
    int      *pdx;
} POLYTEXTW, *PPOLYTEXTW,  *NPPOLYTEXTW,  *LPPOLYTEXTW;






typedef POLYTEXTA POLYTEXT;
typedef PPOLYTEXTA PPOLYTEXT;
typedef NPPOLYTEXTA NPPOLYTEXT;
typedef LPPOLYTEXTA LPPOLYTEXT;


typedef struct _FIXED {

    WORD    fract;
    short   value;




} FIXED;


typedef struct _MAT2 {
     FIXED  eM11;
     FIXED  eM12;
     FIXED  eM21;
     FIXED  eM22;
} MAT2,  *LPMAT2;



typedef struct _GLYPHMETRICS {
    UINT    gmBlackBoxX;
    UINT    gmBlackBoxY;
    POINT   gmptGlyphOrigin;
    short   gmCellIncX;
    short   gmCellIncY;
} GLYPHMETRICS,  *LPGLYPHMETRICS;

























typedef struct tagPOINTFX
{
    FIXED x;
    FIXED y;
} POINTFX, * LPPOINTFX;

typedef struct tagTTPOLYCURVE
{
    WORD    wType;
    WORD    cpfx;
    POINTFX apfx[1];
} TTPOLYCURVE, * LPTTPOLYCURVE;

typedef struct tagTTPOLYGONHEADER
{
    DWORD   cb;
    DWORD   dwType;
    POINTFX pfxStart;
} TTPOLYGONHEADER, * LPTTPOLYGONHEADER;













































typedef struct tagGCP_RESULTSA
    {
    DWORD   lStructSize;
    LPSTR     lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSA, * LPGCP_RESULTSA;
typedef struct tagGCP_RESULTSW
    {
    DWORD   lStructSize;
    LPWSTR    lpOutString;
    UINT  *lpOrder;
    int   *lpDx;
    int   *lpCaretPos;
    LPSTR   lpClass;
    LPWSTR  lpGlyphs;
    UINT    nGlyphs;
    int     nMaxFit;
    } GCP_RESULTSW, * LPGCP_RESULTSW;




typedef GCP_RESULTSA GCP_RESULTS;
typedef LPGCP_RESULTSA LPGCP_RESULTS;



typedef struct _RASTERIZER_STATUS {
    short   nSize;
    short   wFlags;
    short   nLanguageID;
} RASTERIZER_STATUS,  *LPRASTERIZER_STATUS;






typedef struct tagPIXELFORMATDESCRIPTOR
{
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerType;
    BYTE  bReserved;
    DWORD dwLayerMask;
    DWORD dwVisibleMask;
    DWORD dwDamageMask;
} PIXELFORMATDESCRIPTOR, *PPIXELFORMATDESCRIPTOR,  *LPPIXELFORMATDESCRIPTOR;

































typedef int (__stdcall* OLDFONTENUMPROCA)(const LOGFONTA *, const TEXTMETRICA *, DWORD, LPARAM);
typedef int (__stdcall* OLDFONTENUMPROCW)(const LOGFONTW *, const TEXTMETRICW *, DWORD, LPARAM);















typedef OLDFONTENUMPROCA    FONTENUMPROCA;
typedef OLDFONTENUMPROCW    FONTENUMPROCW;



typedef FONTENUMPROCA FONTENUMPROC;


typedef int (__stdcall* GOBJENUMPROC)(LPVOID, LPARAM);
typedef void (__stdcall* LINEDDAPROC)(int, int, LPARAM);















__declspec(dllimport) int __stdcall AddFontResourceA(     LPCSTR);
__declspec(dllimport) int __stdcall AddFontResourceW(     LPCWSTR);






__declspec(dllimport) BOOL	__stdcall AnimatePalette(      HPALETTE hPal,      UINT iStartIndex,     	UINT cEntries,        const PALETTEENTRY * ppe);
__declspec(dllimport) BOOL	__stdcall Arc(      HDC hdc,      int x1,      int y1,      int x2,      int y2,      int x3,      int y3,      int x4,      int y4);
__declspec(dllimport) BOOL	__stdcall BitBlt(      HDC hdc,      int x,      int y,      int cx,      int cy,        HDC hdcSrc,      int x1,      int y1,      DWORD rop);
__declspec(dllimport) BOOL  __stdcall CancelDC(      HDC hdc);
__declspec(dllimport) BOOL  __stdcall Chord(      HDC hdc,      int x1,      int y1,      int x2,      int y2,      int x3,      int y3,      int x4,      int y4);
__declspec(dllimport) int   __stdcall ChoosePixelFormat(      HDC hdc,      const PIXELFORMATDESCRIPTOR *ppfd);
__declspec(dllimport) HMETAFILE  __stdcall CloseMetaFile(      HDC hdc);
__declspec(dllimport) int     __stdcall CombineRgn(        HRGN hrgnDst,        HRGN hrgnSrc1,        HRGN hrgnSrc2,      int iMode);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileA(      HMETAFILE,        LPCSTR);
__declspec(dllimport) HMETAFILE __stdcall CopyMetaFileW(      HMETAFILE,        LPCWSTR);





__declspec(dllimport) HBITMAP __stdcall CreateBitmap(      int nWidth,      int nHeight,      UINT nPlanes,      UINT nBitCount,        const void *lpBits);
__declspec(dllimport) HBITMAP __stdcall CreateBitmapIndirect(      const BITMAP *pbm);
__declspec(dllimport) HBRUSH  __stdcall CreateBrushIndirect(      const LOGBRUSH *plbrush);
__declspec(dllimport) HBITMAP __stdcall CreateCompatibleBitmap(      HDC hdc,      int cx,      int cy);
__declspec(dllimport) HBITMAP __stdcall CreateDiscardableBitmap(      HDC hdc,      int cx,      int cy);
__declspec(dllimport) HDC     __stdcall CreateCompatibleDC(        HDC hdc);
__declspec(dllimport) HDC     __stdcall CreateDCA(        LPCSTR pwszDriver,        LPCSTR pwszDevice,        LPCSTR pszPort,        const DEVMODEA * pdm);
__declspec(dllimport) HDC     __stdcall CreateDCW(        LPCWSTR pwszDriver,        LPCWSTR pwszDevice,        LPCWSTR pszPort,        const DEVMODEW * pdm);





__declspec(dllimport) HBITMAP __stdcall CreateDIBitmap(      HDC hdc,        const BITMAPINFOHEADER *pbmih,      DWORD flInit,        const void *pjBits,        const BITMAPINFO *pbmi,      UINT iUsage);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrush(      HGLOBAL h,      UINT iUsage);
__declspec(dllimport) HBRUSH  __stdcall CreateDIBPatternBrushPt(      const void *lpPackedDIB,      UINT iUsage);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgn(      int x1,      int y1,      int x2,      int y2);
__declspec(dllimport) HRGN    __stdcall CreateEllipticRgnIndirect(      const RECT *lprect);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectA(      const LOGFONTA *lplf);
__declspec(dllimport) HFONT   __stdcall CreateFontIndirectW(      const LOGFONTW *lplf);





__declspec(dllimport) HFONT   __stdcall CreateFontA(      int cHeight,      int cWidth,      int cEscapement,      int cOrientation,      int cWeight,      DWORD bItalic,
                                  DWORD bUnderline,      DWORD bStrikeOut,      DWORD iCharSet,      DWORD iOutPrecision,      DWORD iClipPrecision,
                                  DWORD iQuality,      DWORD iPitchAndFamily,        LPCSTR pszFaceName);
__declspec(dllimport) HFONT   __stdcall CreateFontW(      int cHeight,      int cWidth,      int cEscapement,      int cOrientation,      int cWeight,      DWORD bItalic,
                                  DWORD bUnderline,      DWORD bStrikeOut,      DWORD iCharSet,      DWORD iOutPrecision,      DWORD iClipPrecision,
                                  DWORD iQuality,      DWORD iPitchAndFamily,        LPCWSTR pszFaceName);






__declspec(dllimport) HBRUSH  __stdcall CreateHatchBrush(      int iHatch,      COLORREF color);
__declspec(dllimport) HDC     __stdcall CreateICA(        LPCSTR pszDriver,        LPCSTR pszDevice,        LPCSTR pszPort,        const DEVMODEA * pdm);
__declspec(dllimport) HDC     __stdcall CreateICW(        LPCWSTR pszDriver,        LPCWSTR pszDevice,        LPCWSTR pszPort,        const DEVMODEW * pdm);





__declspec(dllimport) HDC     __stdcall CreateMetaFileA(        LPCSTR pszFile);
__declspec(dllimport) HDC     __stdcall CreateMetaFileW(        LPCWSTR pszFile);





__declspec(dllimport) HPALETTE __stdcall CreatePalette(      const LOGPALETTE * plpal);
__declspec(dllimport) HPEN    __stdcall CreatePen(      int iStyle,      int cWidth,      COLORREF color);
__declspec(dllimport) HPEN    __stdcall CreatePenIndirect(      const LOGPEN *plpen);
__declspec(dllimport) HRGN    __stdcall CreatePolyPolygonRgn(       const POINT *pptl,
                                                     const INT  *pc,
                                                     int cPoly,
                                                     int iMode);
__declspec(dllimport) HBRUSH  __stdcall CreatePatternBrush(      HBITMAP hbm);
__declspec(dllimport) HRGN    __stdcall CreateRectRgn(      int x1,      int y1,      int x2,      int y2);
__declspec(dllimport) HRGN    __stdcall CreateRectRgnIndirect(      const RECT *lprect);
__declspec(dllimport) HRGN    __stdcall CreateRoundRectRgn(      int x1,      int y1,      int x2,      int y2,      int w,      int h);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceA(      DWORD fdwHidden,      LPCSTR lpszFont,      LPCSTR lpszFile,        LPCSTR lpszPath);
__declspec(dllimport) BOOL    __stdcall CreateScalableFontResourceW(      DWORD fdwHidden,      LPCWSTR lpszFont,      LPCWSTR lpszFile,        LPCWSTR lpszPath);





__declspec(dllimport) HBRUSH  __stdcall CreateSolidBrush(      COLORREF color);

__declspec(dllimport) BOOL __stdcall DeleteDC(      HDC hdc);
__declspec(dllimport) BOOL __stdcall DeleteMetaFile(      HMETAFILE hmf);
__declspec(dllimport) BOOL __stdcall DeleteObject(      HGDIOBJ ho);
__declspec(dllimport) int  __stdcall DescribePixelFormat(       HDC hdc, 
                                                 int iPixelFormat, 
                                                 UINT nBytes,
                                                   LPPIXELFORMATDESCRIPTOR ppfd);





typedef UINT   (__stdcall* LPFNDEVMODE)(HWND, HMODULE, LPDEVMODE, LPSTR, LPSTR, LPDEVMODE, LPSTR, UINT);

typedef DWORD  (__stdcall* LPFNDEVCAPS)(LPSTR, LPSTR, UINT, LPSTR, LPDEVMODE);












































































__declspec(dllimport)
int
__stdcall
DeviceCapabilitiesA(
         LPCSTR pDevice,
           LPCSTR pPort,
         WORD fwCapability,
           LPSTR pOutput,
           const DEVMODEA * pDevMode
    );
__declspec(dllimport)
int
__stdcall
DeviceCapabilitiesW(
         LPCWSTR pDevice,
           LPCWSTR pPort,
         WORD fwCapability,
           LPWSTR pOutput,
           const DEVMODEW * pDevMode
    );






__declspec(dllimport) int  __stdcall DrawEscape(        HDC    hdc,         
                                         int    iEscape,     
                                         int    cjIn,        
                                             LPCSTR lpIn);
__declspec(dllimport) BOOL __stdcall Ellipse(      HDC hdc,      int left,      int top,       int right,      int bottom);


__declspec(dllimport) int  __stdcall EnumFontFamiliesExA(      HDC hdc,      LPLOGFONTA lpLogfont,      FONTENUMPROCA lpProc,      LPARAM lParam,      DWORD dwFlags);
__declspec(dllimport) int  __stdcall EnumFontFamiliesExW(      HDC hdc,      LPLOGFONTW lpLogfont,      FONTENUMPROCW lpProc,      LPARAM lParam,      DWORD dwFlags);







__declspec(dllimport) int  __stdcall EnumFontFamiliesA(      HDC hdc,        LPCSTR lpLogfont,      FONTENUMPROCA lpProc,      LPARAM lParam);
__declspec(dllimport) int  __stdcall EnumFontFamiliesW(      HDC hdc,        LPCWSTR lpLogfont,      FONTENUMPROCW lpProc,      LPARAM lParam);





__declspec(dllimport) int  __stdcall EnumFontsA(      HDC hdc,        LPCSTR lpLogfont,       FONTENUMPROCA lpProc,      LPARAM lParam);
__declspec(dllimport) int  __stdcall EnumFontsW(      HDC hdc,        LPCWSTR lpLogfont,       FONTENUMPROCW lpProc,      LPARAM lParam);







__declspec(dllimport) int  __stdcall EnumObjects(      HDC hdc,      int nType,      GOBJENUMPROC lpFunc,      LPARAM lParam);





__declspec(dllimport) BOOL __stdcall EqualRgn(      HRGN hrgn1,      HRGN hrgn2);
__declspec(dllimport) int  __stdcall Escape(        HDC hdc,           
                                     int iEscape,       
                                     int cjIn,          
                                         LPCSTR pvIn,
                                       LPVOID pvOut);
__declspec(dllimport) int  __stdcall ExtEscape(         HDC hdc,         
                                         int iEscape,     
                                         int cjInput,     
                                             LPCSTR lpInData,  
                                         int cjOutput,   
                                           LPSTR lpOutData);
__declspec(dllimport) int  __stdcall ExcludeClipRect(      HDC hdc,      int left,      int top,      int right,      int bottom);
__declspec(dllimport) HRGN __stdcall ExtCreateRegion(        const XFORM * lpx,      DWORD nCount,        const RGNDATA * lpData);
__declspec(dllimport) BOOL __stdcall ExtFloodFill(      HDC hdc,      int x,      int y,      COLORREF color,      UINT type);
__declspec(dllimport) BOOL __stdcall FillRgn(      HDC hdc,      HRGN hrgn,      HBRUSH hbr);
__declspec(dllimport) BOOL __stdcall FloodFill(      HDC hdc,      int x,      int y,      COLORREF color);
__declspec(dllimport) BOOL __stdcall FrameRgn(      HDC hdc,      HRGN hrgn,      HBRUSH hbr,      int w,      int h);
__declspec(dllimport) int  __stdcall GetROP2(      HDC hdc);
__declspec(dllimport) BOOL __stdcall GetAspectRatioFilterEx(      HDC hdc,      LPSIZE lpsize);
__declspec(dllimport) COLORREF __stdcall GetBkColor(      HDC hdc);






__declspec(dllimport)
int
__stdcall
GetBkMode(
         HDC hdc
    );

__declspec(dllimport)
LONG
__stdcall
GetBitmapBits(
         HBITMAP hbit,
         LONG cb,
         LPVOID lpvBits
    );

__declspec(dllimport) BOOL  __stdcall GetBitmapDimensionEx(      HBITMAP hbit,      LPSIZE lpsize);
__declspec(dllimport) UINT  __stdcall GetBoundsRect(      HDC hdc,      LPRECT lprect,      UINT flags);

__declspec(dllimport) BOOL  __stdcall GetBrushOrgEx(      HDC hdc,      LPPOINT lppt);

__declspec(dllimport) BOOL  __stdcall GetCharWidthA(      HDC hdc,      UINT iFirst,      UINT iLast,      LPINT lpBuffer);
__declspec(dllimport) BOOL  __stdcall GetCharWidthW(      HDC hdc,      UINT iFirst,      UINT iLast,      LPINT lpBuffer);





__declspec(dllimport) BOOL  __stdcall GetCharWidth32A(      HDC hdc,      UINT iFirst,      UINT iLast,       LPINT lpBuffer);
__declspec(dllimport) BOOL  __stdcall GetCharWidth32W(      HDC hdc,      UINT iFirst,      UINT iLast,       LPINT lpBuffer);





__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatA(      HDC hdc,      UINT iFirst,      UINT iLast,      PFLOAT lpBuffer);
__declspec(dllimport) BOOL  __stdcall GetCharWidthFloatW(      HDC hdc,      UINT iFirst,      UINT iLast,      PFLOAT lpBuffer);






__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsA(      HDC hdc, 
                                                 UINT wFirst, 
                                                 UINT wLast, 
                                                 LPABC lpABC);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsW(      HDC hdc, 
                                                 UINT wFirst, 
                                                 UINT wLast, 
                                                 LPABC lpABC);






__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatA(      HDC hdc,      UINT iFirst,      UINT iLast,      LPABCFLOAT lpABC);
__declspec(dllimport) BOOL  __stdcall GetCharABCWidthsFloatW(      HDC hdc,      UINT iFirst,      UINT iLast,      LPABCFLOAT lpABC);





__declspec(dllimport) int   __stdcall GetClipBox(      HDC hdc,       LPRECT lprect);
__declspec(dllimport) int	__stdcall GetClipRgn(      HDC hdc,      HRGN hrgn);
__declspec(dllimport) int	__stdcall GetMetaRgn(      HDC hdc,      HRGN hrgn);
__declspec(dllimport) HGDIOBJ __stdcall GetCurrentObject(      HDC hdc,      UINT type);
__declspec(dllimport) BOOL  __stdcall GetCurrentPositionEx(      HDC hdc,       LPPOINT lppt);
__declspec(dllimport) int   __stdcall GetDeviceCaps(        HDC hdc,      int index);
__declspec(dllimport) int   __stdcall GetDIBits(      HDC hdc,      HBITMAP hbm,      UINT start,      UINT cLines,         LPVOID lpvBits,      LPBITMAPINFO lpbmi,      UINT usage);

__declspec(dllimport) DWORD __stdcall GetFontData (         HDC     hdc,
                                             DWORD   dwTable,
                                             DWORD   dwOffset,
                                                 PVOID pvBuffer,
                                             DWORD   cjBuffer
                                        );

__declspec(dllimport) DWORD __stdcall GetGlyphOutlineA(         HDC hdc,
                                                 UINT uChar,
                                                 UINT fuFormat,
                                                 LPGLYPHMETRICS lpgm,
                                                 DWORD cjBuffer,
                                                   LPVOID pvBuffer,
                                                 const MAT2 *lpmat2
                                        );
__declspec(dllimport) DWORD __stdcall GetGlyphOutlineW(         HDC hdc,
                                                 UINT uChar,
                                                 UINT fuFormat,
                                                 LPGLYPHMETRICS lpgm,
                                                 DWORD cjBuffer,
                                                   LPVOID pvBuffer,
                                                 const MAT2 *lpmat2
                                        );






__declspec(dllimport) int   __stdcall GetGraphicsMode(      HDC hdc);
__declspec(dllimport) int   __stdcall GetMapMode(      HDC hdc);
__declspec(dllimport) UINT  __stdcall GetMetaFileBitsEx(     HMETAFILE hMF,      UINT cbBuffer,        LPVOID lpData);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileA(      LPCSTR lpName);
__declspec(dllimport) HMETAFILE   __stdcall GetMetaFileW(      LPCWSTR lpName);





__declspec(dllimport) COLORREF __stdcall GetNearestColor(      HDC hdc,      COLORREF color);
__declspec(dllimport) UINT  __stdcall GetNearestPaletteIndex(      HPALETTE h,      COLORREF color);
__declspec(dllimport) DWORD __stdcall GetObjectType(      HGDIOBJ h);



__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsA(      HDC hdc, 
                                                     UINT cjCopy, 
                                                       LPOUTLINETEXTMETRICA potm);
__declspec(dllimport) UINT __stdcall GetOutlineTextMetricsW(      HDC hdc, 
                                                     UINT cjCopy, 
                                                       LPOUTLINETEXTMETRICW potm);








__declspec(dllimport) UINT	__stdcall GetPaletteEntries(        HPALETTE hpal,
                                                 UINT iStart,
                                                 UINT cEntries,
                                                 LPPALETTEENTRY pPalEntries);
__declspec(dllimport) COLORREF __stdcall GetPixel(      HDC hdc,      int x,      int y);
__declspec(dllimport) int   __stdcall GetPixelFormat(      HDC hdc);
__declspec(dllimport) int   __stdcall GetPolyFillMode(      HDC hdc);
__declspec(dllimport) BOOL  __stdcall GetRasterizerCaps(        LPRASTERIZER_STATUS lpraststat, 
                                                 UINT cjBytes);

__declspec(dllimport) int   __stdcall GetRandomRgn (     HDC hdc,      HRGN hrgn,      INT i);
__declspec(dllimport) DWORD __stdcall GetRegionData(        HRGN hrgn,
                                             DWORD nCount,
                                                 LPRGNDATA lpRgnData);
__declspec(dllimport) int   __stdcall GetRgnBox(      HRGN hrgn,       LPRECT lprc);
__declspec(dllimport) HGDIOBJ __stdcall GetStockObject(      int i);
__declspec(dllimport) int   __stdcall GetStretchBltMode(     HDC hdc);
__declspec(dllimport)
UINT
__stdcall
GetSystemPaletteEntries(
         HDC  hdc,
         UINT iStart,
         UINT cEntries,
           LPPALETTEENTRY pPalEntries
    );

__declspec(dllimport) UINT  __stdcall GetSystemPaletteUse(     HDC hdc);
__declspec(dllimport) int   __stdcall GetTextCharacterExtra(     HDC hdc);
__declspec(dllimport) UINT  __stdcall GetTextAlign(     HDC hdc);
__declspec(dllimport) COLORREF __stdcall GetTextColor(     HDC hdc);

__declspec(dllimport)
BOOL
__stdcall
GetTextExtentPointA(
         HDC hdc,
           LPCSTR lpString,
         int c,
         LPSIZE lpsz
    );
__declspec(dllimport)
BOOL
__stdcall
GetTextExtentPointW(
         HDC hdc,
           LPCWSTR lpString,
         int c,
         LPSIZE lpsz
    );






__declspec(dllimport)
BOOL
__stdcall
GetTextExtentPoint32A(
         HDC hdc,
           LPCSTR lpString,
         int c,
         LPSIZE psizl
    );
__declspec(dllimport)
BOOL
__stdcall
GetTextExtentPoint32W(
         HDC hdc,
           LPCWSTR lpString,
         int c,
         LPSIZE psizl
    );






__declspec(dllimport)
BOOL
__stdcall
GetTextExtentExPointA(
         HDC hdc,
           LPCSTR lpszString,
         int cchString,
         int nMaxExtent,
           LPINT lpnFit,
             LPINT lpnDx,
         LPSIZE lpSize
    );
__declspec(dllimport)
BOOL
__stdcall
GetTextExtentExPointW(
         HDC hdc,
           LPCWSTR lpszString,
         int cchString,
         int nMaxExtent,
           LPINT lpnFit,
             LPINT lpnDx,
         LPSIZE lpSize
    );







__declspec(dllimport) int __stdcall GetTextCharset(      HDC hdc);
__declspec(dllimport) int __stdcall GetTextCharsetInfo(      HDC hdc,        LPFONTSIGNATURE lpSig,      DWORD dwFlags);
__declspec(dllimport) BOOL __stdcall TranslateCharsetInfo(      DWORD  *lpSrc,       LPCHARSETINFO lpCs,      DWORD dwFlags);
__declspec(dllimport) DWORD __stdcall GetFontLanguageInfo(      HDC hdc);
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementA(       HDC hdc,        LPCSTR lpString,      int nCount,      int nMexExtent,      LPGCP_RESULTSA lpResults,      DWORD dwFlags);
__declspec(dllimport) DWORD __stdcall GetCharacterPlacementW(       HDC hdc,        LPCWSTR lpString,      int nCount,      int nMexExtent,      LPGCP_RESULTSW lpResults,      DWORD dwFlags);
















































































































































































































__declspec(dllimport) BOOL  __stdcall GetViewportExtEx(      HDC hdc,      LPSIZE lpsize);
__declspec(dllimport) BOOL  __stdcall GetViewportOrgEx(      HDC hdc,      LPPOINT lppoint);
__declspec(dllimport) BOOL  __stdcall GetWindowExtEx(      HDC hdc,      LPSIZE lpsize);
__declspec(dllimport) BOOL  __stdcall GetWindowOrgEx(      HDC hdc,      LPPOINT lppoint);

__declspec(dllimport) int  __stdcall IntersectClipRect(      HDC hdc,      int left,      int top,      int right,      int bottom);
__declspec(dllimport) BOOL __stdcall InvertRgn(      HDC hdc,      HRGN hrgn);
__declspec(dllimport) BOOL __stdcall LineDDA(      int xStart,      int yStart,      int xEnd,      int yEnd,      LINEDDAPROC lpProc,        LPARAM data);
__declspec(dllimport) BOOL __stdcall LineTo(      HDC hdc,      int x,      int y);
__declspec(dllimport) BOOL __stdcall MaskBlt(      HDC hdcDest,      int xDest,      int yDest,      int width,      int height,
                   HDC hdcSrc,      int xSrc,      int ySrc,      HBITMAP hbmMask,      int xMask,      int yMask,      DWORD rop);
__declspec(dllimport) BOOL __stdcall PlgBlt(      HDC hdcDest,        const POINT * lpPoint,      HDC hdcSrc,      int xSrc,      int ySrc,      int width,
                          int height,        HBITMAP hbmMask,      int xMask,      int yMask);

__declspec(dllimport) int  __stdcall OffsetClipRgn(     HDC hdc,      int x,      int y);
__declspec(dllimport) int  __stdcall OffsetRgn(     HRGN hrgn,      int x,      int y);
__declspec(dllimport) BOOL __stdcall PatBlt(     HDC hdc,      int x,      int y,      int w,      int h,      DWORD rop);
__declspec(dllimport) BOOL __stdcall Pie(     HDC hdc,      int left,      int top,      int right,      int bottom,      int xr1,      int yr1,      int xr2,      int yr2);
__declspec(dllimport) BOOL __stdcall PlayMetaFile(     HDC hdc,      HMETAFILE hmf);
__declspec(dllimport) BOOL __stdcall PaintRgn(     HDC hdc,      HRGN hrgn);
__declspec(dllimport) BOOL __stdcall PolyPolygon(     HDC hdc,       const POINT *apt,         const INT *asz,       int csz);
__declspec(dllimport) BOOL __stdcall PtInRegion(     HRGN hrgn,      int x,      int y);
__declspec(dllimport) BOOL __stdcall PtVisible(     HDC hdc,      int x,      int y);
__declspec(dllimport) BOOL __stdcall RectInRegion(     HRGN hrgn,      const RECT * lprect);
__declspec(dllimport) BOOL __stdcall RectVisible(     HDC hdc,      const RECT * lprect);
__declspec(dllimport) BOOL __stdcall Rectangle(     HDC hdc,      int left,      int top,      int right,      int bottom);
__declspec(dllimport) BOOL __stdcall RestoreDC(     HDC hdc,      int nSavedDC);
__declspec(dllimport) HDC  __stdcall ResetDCA(     HDC hdc,      const DEVMODEA * lpdm);
__declspec(dllimport) HDC  __stdcall ResetDCW(     HDC hdc,      const DEVMODEW * lpdm);





__declspec(dllimport) UINT __stdcall RealizePalette(     HDC hdc);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceA(     LPCSTR lpFileName);
__declspec(dllimport) BOOL __stdcall RemoveFontResourceW(     LPCWSTR lpFileName);





__declspec(dllimport) BOOL  __stdcall RoundRect(     HDC hdc,      int left,      int top,      int right,      int bottom,      int width,      int height);
__declspec(dllimport) BOOL __stdcall ResizePalette(     HPALETTE hpal,      UINT n);

__declspec(dllimport) int  __stdcall SaveDC(     HDC hdc);
__declspec(dllimport) int  __stdcall SelectClipRgn(     HDC hdc,        HRGN hrgn);
__declspec(dllimport) int  __stdcall ExtSelectClipRgn(     HDC hdc,        HRGN hrgn,      int mode);
__declspec(dllimport) int  __stdcall SetMetaRgn(     HDC hdc);
__declspec(dllimport) HGDIOBJ __stdcall SelectObject(     HDC hdc,      HGDIOBJ h);
__declspec(dllimport) HPALETTE __stdcall SelectPalette(     HDC hdc,      HPALETTE hPal,      BOOL bForceBkgd);
__declspec(dllimport) COLORREF __stdcall SetBkColor(     HDC hdc,      COLORREF color);






__declspec(dllimport) int   __stdcall SetBkMode(     HDC hdc,      int mode);

__declspec(dllimport)
LONG __stdcall
SetBitmapBits(
         HBITMAP hbm,
         DWORD cb,
           const void *pvBits);

__declspec(dllimport) UINT  __stdcall SetBoundsRect(     HDC hdc,        const RECT * lprect,      UINT flags);
__declspec(dllimport) int	__stdcall SetDIBits(     HDC hdc,      HBITMAP hbm,      UINT start,      UINT cLines,      const void *lpBits,      const BITMAPINFO * lpbmi,      UINT ColorUse);
__declspec(dllimport) int   __stdcall SetDIBitsToDevice(     HDC hdc,      int xDest,      int yDest,      DWORD w,      DWORD h,      int xSrc,
             int ySrc,      UINT StartScan,      UINT cLines,      const void * lpvBits,      const BITMAPINFO * lpbmi,      UINT ColorUse);
__declspec(dllimport) DWORD __stdcall SetMapperFlags(     HDC hdc,      DWORD flags);
__declspec(dllimport) int   __stdcall SetGraphicsMode(     HDC hdc,      int iMode);
__declspec(dllimport) int   __stdcall SetMapMode(     HDC hdc,      int iMode);


__declspec(dllimport) DWORD __stdcall SetLayout(     HDC hdc,      DWORD l);
__declspec(dllimport) DWORD __stdcall GetLayout(     HDC hdc);


__declspec(dllimport) HMETAFILE   __stdcall SetMetaFileBitsEx(     UINT cbBuffer,        const BYTE *lpData);
__declspec(dllimport) UINT  __stdcall SetPaletteEntries(        HPALETTE hpal,
                                                 UINT iStart,
                                                 UINT cEntries,
                                                   const PALETTEENTRY *pPalEntries);
__declspec(dllimport) COLORREF __stdcall SetPixel(     HDC hdc,      int x,      int y,      COLORREF color);
__declspec(dllimport) BOOL   __stdcall SetPixelV(     HDC hdc,      int x,      int y,      COLORREF color);
__declspec(dllimport) BOOL  __stdcall SetPixelFormat(     HDC hdc,      int format,      const PIXELFORMATDESCRIPTOR * ppfd);
__declspec(dllimport) int   __stdcall SetPolyFillMode(     HDC hdc,      int mode);
__declspec(dllimport) BOOL	 __stdcall StretchBlt(     HDC hdcDest,      int xDest,      int yDest,      int wDest,      int hDest,      HDC hdcSrc,      int xSrc,      int ySrc,      int wSrc,      int hSrc,      DWORD rop);
__declspec(dllimport) BOOL   __stdcall SetRectRgn(     HRGN hrgn,      int left,      int top,      int right,      int bottom);
__declspec(dllimport) int   __stdcall StretchDIBits(     HDC hdc,      int xDest,      int yDest,      int DestWidth,      int DestHeight,      int xSrc,      int ySrc,      int SrcWidth,      int SrcHeight,
             const void * lpBits,      const BITMAPINFO * lpbmi,      UINT iUsage,      DWORD rop);
__declspec(dllimport) int   __stdcall SetROP2(     HDC hdc,      int rop2);
__declspec(dllimport) int   __stdcall SetStretchBltMode(     HDC hdc,      int mode);
__declspec(dllimport) UINT  __stdcall SetSystemPaletteUse(     HDC hdc,      UINT use);
__declspec(dllimport) int   __stdcall SetTextCharacterExtra(     HDC hdc,      int extra);
__declspec(dllimport) COLORREF __stdcall SetTextColor(     HDC hdc,      COLORREF color);
__declspec(dllimport) UINT  __stdcall SetTextAlign(     HDC hdc,      UINT align);
__declspec(dllimport) BOOL  __stdcall SetTextJustification(     HDC hdc,      int extra,      int count);
__declspec(dllimport) BOOL  __stdcall UpdateColors(     HDC hdc);







typedef USHORT COLOR16;

typedef struct _TRIVERTEX
{
    LONG    x;
    LONG    y;
    COLOR16 Red;
    COLOR16 Green;
    COLOR16 Blue;
    COLOR16 Alpha;
}TRIVERTEX,*PTRIVERTEX,*LPTRIVERTEX;

typedef struct _GRADIENT_TRIANGLE
{
    ULONG Vertex1;
    ULONG Vertex2;
    ULONG Vertex3;
} GRADIENT_TRIANGLE,*PGRADIENT_TRIANGLE,*LPGRADIENT_TRIANGLE;

typedef struct _GRADIENT_RECT
{
    ULONG UpperLeft;
    ULONG LowerRight;
}GRADIENT_RECT,*PGRADIENT_RECT,*LPGRADIENT_RECT;

typedef struct _BLENDFUNCTION
{
    BYTE   BlendOp;
    BYTE   BlendFlags;
    BYTE   SourceConstantAlpha;
    BYTE   AlphaFormat;
}BLENDFUNCTION,*PBLENDFUNCTION;














__declspec(dllimport) BOOL __stdcall AlphaBlend(      HDC hdcDest,      int xoriginDest,      int yoriginDest,      int wDest,      int hDest,      HDC hdcSrc,      int xoriginSrc,      int yoriginSrc,      int wSrc,      int hSrc,      BLENDFUNCTION ftn);

__declspec(dllimport) BOOL __stdcall TransparentBlt(     HDC hdcDest,     int xoriginDest,      int yoriginDest,      int wDest,      int hDest,      HDC hdcSrc,
                                                int xoriginSrc,      int yoriginSrc,      int wSrc,      int hSrc,      UINT crTransparent);










__declspec(dllimport)
BOOL
__stdcall
GradientFill(
         HDC hdc,
           PTRIVERTEX pVertex,
         ULONG nVertex,
         PVOID pMesh,
         ULONG nMesh,
         ULONG ulMode
    );






__declspec(dllimport) BOOL  __stdcall PlayMetaFileRecord(       HDC hdc,
                                                   LPHANDLETABLE lpHandleTable,
                                                 LPMETARECORD lpMR,
                                                 UINT noObjs);

typedef int (__stdcall* MFENUMPROC)(      HDC hdc,        HANDLETABLE * lpht,      METARECORD * lpMR,      int nObj,        LPARAM param);
__declspec(dllimport) BOOL	__stdcall EnumMetaFile(      HDC hdc,      HMETAFILE hmf,      MFENUMPROC proc,        LPARAM param);

typedef int (__stdcall* ENHMFENUMPROC)(     HDC hdc,        HANDLETABLE * lpht,      const ENHMETARECORD * lpmr,      int hHandles,        LPARAM data);



__declspec(dllimport) HENHMETAFILE __stdcall CloseEnhMetaFile(      HDC hdc);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileA(      HENHMETAFILE hEnh,        LPCSTR lpFileName);
__declspec(dllimport) HENHMETAFILE __stdcall CopyEnhMetaFileW(      HENHMETAFILE hEnh,        LPCWSTR lpFileName);





__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileA(        HDC hdc,        LPCSTR lpFilename,        const RECT *lprc,        LPCSTR lpDesc);
__declspec(dllimport) HDC   __stdcall CreateEnhMetaFileW(        HDC hdc,        LPCWSTR lpFilename,        const RECT *lprc,        LPCWSTR lpDesc);





__declspec(dllimport) BOOL  __stdcall DeleteEnhMetaFile(      HENHMETAFILE hmf);
__declspec(dllimport) BOOL  __stdcall EnumEnhMetaFile(        HDC hdc,      HENHMETAFILE hmf,      ENHMFENUMPROC proc,
                                               LPVOID param,        const RECT * lpRect);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileA(      LPCSTR lpName);
__declspec(dllimport) HENHMETAFILE  __stdcall GetEnhMetaFileW(      LPCWSTR lpName);





__declspec(dllimport) UINT	__stdcall GetEnhMetaFileBits(       HENHMETAFILE hEMF,
                                                 UINT nSize,
                                                   LPBYTE lpData);
__declspec(dllimport) UINT	__stdcall GetEnhMetaFileDescriptionA(       HENHMETAFILE hemf,
                                                         UINT cchBuffer,
                                                           LPSTR lpDescription);
__declspec(dllimport) UINT	__stdcall GetEnhMetaFileDescriptionW(       HENHMETAFILE hemf,
                                                         UINT cchBuffer,
                                                           LPWSTR lpDescription);





__declspec(dllimport) UINT	__stdcall GetEnhMetaFileHeader(         HENHMETAFILE hemf,
                                                     UINT nSize,
                                                       LPENHMETAHEADER lpEnhMetaHeader);
__declspec(dllimport) UINT	__stdcall GetEnhMetaFilePaletteEntries(     HENHMETAFILE hemf,
                                                         UINT nNumEntries,
                                                           LPPALETTEENTRY lpPaletteEntries);

__declspec(dllimport) UINT  __stdcall GetEnhMetaFilePixelFormat(        HENHMETAFILE hemf,
                                                         UINT cbBuffer,
                                                           PIXELFORMATDESCRIPTOR *ppfd);
__declspec(dllimport) UINT	__stdcall GetWinMetaFileBits(       HENHMETAFILE hemf,
                                                 UINT cbData16,
                                                   LPBYTE pData16,
                                                 INT iMapMode,
                                                 HDC hdcRef);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFile(      HDC hdc,      HENHMETAFILE hmf,      const RECT * lprect);
__declspec(dllimport) BOOL  __stdcall PlayEnhMetaFileRecord(        HDC hdc,
                                                       LPHANDLETABLE pht,
                                                     const ENHMETARECORD *pmr,
                                                     UINT cht);

__declspec(dllimport) HENHMETAFILE  __stdcall SetEnhMetaFileBits(       UINT nSize,
                                                           const BYTE * pb);

__declspec(dllimport) HENHMETAFILE  __stdcall SetWinMetaFileBits(       UINT nSize,
                                                           const BYTE *lpMeta16Data,
                                                           HDC hdcRef,
                                                           const METAFILEPICT *lpMFP);
__declspec(dllimport) BOOL  __stdcall GdiComment(     HDC hdc,      UINT nSize,        const BYTE *lpData);





__declspec(dllimport) BOOL __stdcall GetTextMetricsA(      HDC hdc,      LPTEXTMETRICA lptm);
__declspec(dllimport) BOOL __stdcall GetTextMetricsW(      HDC hdc,      LPTEXTMETRICW lptm);






























typedef struct tagDIBSECTION {
    BITMAP		 dsBm;
    BITMAPINFOHEADER    dsBmih;
    DWORD               dsBitfields[3];
    HANDLE              dshSection;
    DWORD               dsOffset;
} DIBSECTION,  *LPDIBSECTION, *PDIBSECTION;


__declspec(dllimport) BOOL __stdcall AngleArc(      HDC hdc,      int x,      int y,      DWORD r,      FLOAT StartAngle,      FLOAT SweepAngle);
__declspec(dllimport) BOOL __stdcall PolyPolyline(     HDC hdc,      const POINT *apt,        const DWORD *asz,      DWORD csz);
__declspec(dllimport) BOOL __stdcall GetWorldTransform(      HDC hdc,      LPXFORM lpxf);
__declspec(dllimport) BOOL __stdcall SetWorldTransform(      HDC hdc,      const XFORM * lpxf);
__declspec(dllimport) BOOL __stdcall ModifyWorldTransform(      HDC hdc,        const XFORM * lpxf,      DWORD mode);
__declspec(dllimport) BOOL __stdcall CombineTransform(      LPXFORM lpxfOut,      const XFORM *lpxf1,      const XFORM *lpxf2);
__declspec(dllimport) HBITMAP __stdcall CreateDIBSection(       HDC hdc,      const BITMAPINFO *lpbmi,      UINT usage,                 void **ppvBits,        HANDLE hSection,      DWORD offset);
__declspec(dllimport) UINT __stdcall GetDIBColorTable(      HDC  hdc,
                                             UINT iStart,
                                             UINT cEntries,
                                             RGBQUAD *prgbq);
__declspec(dllimport) UINT __stdcall SetDIBColorTable(      HDC  hdc,
                                             UINT iStart,
                                             UINT cEntries,
                                               const RGBQUAD *prgbq);




































typedef struct  tagCOLORADJUSTMENT {
    WORD   caSize;
    WORD   caFlags;
    WORD   caIlluminantIndex;
    WORD   caRedGamma;
    WORD   caGreenGamma;
    WORD   caBlueGamma;
    WORD   caReferenceBlack;
    WORD   caReferenceWhite;
    SHORT  caContrast;
    SHORT  caBrightness;
    SHORT  caColorfulness;
    SHORT  caRedGreenTint;
} COLORADJUSTMENT, *PCOLORADJUSTMENT,  *LPCOLORADJUSTMENT;

__declspec(dllimport) BOOL __stdcall SetColorAdjustment(      HDC hdc,      const COLORADJUSTMENT *lpca);
__declspec(dllimport) BOOL __stdcall GetColorAdjustment(      HDC hdc,      LPCOLORADJUSTMENT lpca);
__declspec(dllimport) HPALETTE __stdcall CreateHalftonePalette(        HDC hdc);


typedef BOOL (__stdcall* ABORTPROC)(      HDC,      int);




typedef struct _DOCINFOA {
    int     cbSize;
    LPCSTR   lpszDocName;
    LPCSTR   lpszOutput;

    LPCSTR   lpszDatatype;
    DWORD    fwType;

} DOCINFOA, *LPDOCINFOA;
typedef struct _DOCINFOW {
    int     cbSize;
    LPCWSTR  lpszDocName;
    LPCWSTR  lpszOutput;

    LPCWSTR  lpszDatatype;
    DWORD    fwType;

} DOCINFOW, *LPDOCINFOW;




typedef DOCINFOA DOCINFO;
typedef LPDOCINFOA LPDOCINFO;







__declspec(dllimport) int __stdcall StartDocA(     HDC hdc,      const DOCINFOA *lpdi);
__declspec(dllimport) int __stdcall StartDocW(     HDC hdc,      const DOCINFOW *lpdi);





__declspec(dllimport) int __stdcall EndDoc(     HDC hdc);
__declspec(dllimport) int __stdcall StartPage(     HDC hdc);
__declspec(dllimport) int __stdcall EndPage(     HDC hdc);
__declspec(dllimport) int __stdcall AbortDoc(     HDC hdc);
__declspec(dllimport) int __stdcall SetAbortProc(     HDC hdc,      ABORTPROC proc);

__declspec(dllimport) BOOL __stdcall AbortPath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall ArcTo(     HDC hdc,      int left,      int top,      int right,      int bottom,      int xr1,      int yr1,      int xr2,      int yr2);
__declspec(dllimport) BOOL __stdcall BeginPath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall CloseFigure(     HDC hdc);
__declspec(dllimport) BOOL __stdcall EndPath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall FillPath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall FlattenPath(     HDC hdc);
__declspec(dllimport) int  __stdcall GetPath(     HDC hdc,      LPPOINT apt,      LPBYTE aj, int cpt);
__declspec(dllimport) HRGN __stdcall PathToRegion(     HDC hdc);
__declspec(dllimport) BOOL __stdcall PolyDraw(     HDC hdc,        const POINT * apt,        const BYTE * aj,      int cpt);
__declspec(dllimport) BOOL __stdcall SelectClipPath(     HDC hdc,      int mode);
__declspec(dllimport) int  __stdcall SetArcDirection(     HDC hdc,      int dir);
__declspec(dllimport) BOOL __stdcall SetMiterLimit(     HDC hdc,      FLOAT limit,        PFLOAT old);
__declspec(dllimport) BOOL __stdcall StrokeAndFillPath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall StrokePath(     HDC hdc);
__declspec(dllimport) BOOL __stdcall WidenPath(     HDC hdc);
__declspec(dllimport) HPEN __stdcall ExtCreatePen(      DWORD iPenStyle,
                                         DWORD cWidth,
                                         const LOGBRUSH *plbrush,
                                         DWORD cStyle,
                                             const DWORD *pstyle);
__declspec(dllimport) BOOL __stdcall GetMiterLimit(     HDC hdc,      PFLOAT plimit);
__declspec(dllimport) int  __stdcall GetArcDirection(     HDC hdc);

__declspec(dllimport) int   __stdcall GetObjectA(     HANDLE h,      int c,        LPVOID pv);
__declspec(dllimport) int   __stdcall GetObjectW(     HANDLE h,      int c,        LPVOID pv);




























__declspec(dllimport) BOOL  __stdcall MoveToEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);
__declspec(dllimport) BOOL  __stdcall TextOutA(      HDC hdc,      int x,      int y,        LPCSTR lpString,      int c);
__declspec(dllimport) BOOL  __stdcall TextOutW(      HDC hdc,      int x,      int y,        LPCWSTR lpString,      int c);





__declspec(dllimport) BOOL	__stdcall ExtTextOutA(      HDC hdc,      int x,      int y,      UINT options,        const RECT * lprect,        LPCSTR lpString,      UINT c,          const INT * lpDx);
__declspec(dllimport) BOOL	__stdcall ExtTextOutW(      HDC hdc,      int x,      int y,      UINT options,        const RECT * lprect,        LPCWSTR lpString,      UINT c,          const INT * lpDx);





__declspec(dllimport) BOOL  __stdcall PolyTextOutA(     HDC hdc,        const POLYTEXTA * ppt,      int nstrings);
__declspec(dllimport) BOOL  __stdcall PolyTextOutW(     HDC hdc,        const POLYTEXTW * ppt,      int nstrings);






__declspec(dllimport) HRGN  __stdcall CreatePolygonRgn(           const POINT *pptl,
                                                 int cPoint,
                                                 int iMode);
__declspec(dllimport) BOOL  __stdcall DPtoLP(      HDC hdc,        LPPOINT lppt,      int c);
__declspec(dllimport) BOOL  __stdcall LPtoDP(      HDC hdc,        LPPOINT lppt,      int c);
__declspec(dllimport) BOOL  __stdcall Polygon(     HDC hdc,        const POINT *apt,      int cpt);
__declspec(dllimport) BOOL  __stdcall Polyline(     HDC hdc,        const POINT *apt,      int cpt);

__declspec(dllimport) BOOL  __stdcall PolyBezier(     HDC hdc,        const POINT * apt,      DWORD cpt);
__declspec(dllimport) BOOL  __stdcall PolyBezierTo(     HDC hdc,        const POINT * apt,      DWORD cpt);
__declspec(dllimport) BOOL  __stdcall PolylineTo(     HDC hdc,        const POINT * apt,      DWORD cpt);

__declspec(dllimport) BOOL  __stdcall SetViewportExtEx(      HDC hdc,      int x,      int y,        LPSIZE lpsz);
__declspec(dllimport) BOOL  __stdcall SetViewportOrgEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);
__declspec(dllimport) BOOL  __stdcall SetWindowExtEx(      HDC hdc,      int x,      int y,        LPSIZE lpsz);
__declspec(dllimport) BOOL  __stdcall SetWindowOrgEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);

__declspec(dllimport) BOOL  __stdcall OffsetViewportOrgEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);
__declspec(dllimport) BOOL  __stdcall OffsetWindowOrgEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);
__declspec(dllimport) BOOL  __stdcall ScaleViewportExtEx(      HDC hdc,      int xn,      int dx,      int yn,      int yd,        LPSIZE lpsz);
__declspec(dllimport) BOOL  __stdcall ScaleWindowExtEx(      HDC hdc,      int xn,      int xd,      int yn,      int yd,        LPSIZE lpsz);
__declspec(dllimport) BOOL  __stdcall SetBitmapDimensionEx(      HBITMAP hbm,      int w,      int h,        LPSIZE lpsz);
__declspec(dllimport) BOOL  __stdcall SetBrushOrgEx(      HDC hdc,      int x,      int y,        LPPOINT lppt);

__declspec(dllimport) int   __stdcall GetTextFaceA(      HDC hdc,      int c,           LPSTR lpName);
__declspec(dllimport) int   __stdcall GetTextFaceW(      HDC hdc,      int c,           LPWSTR lpName);








typedef struct tagKERNINGPAIR {
   WORD wFirst;
   WORD wSecond;
   int  iKernAmount;
} KERNINGPAIR, *LPKERNINGPAIR;

__declspec(dllimport) DWORD __stdcall GetKerningPairsA(         HDC hdc, 
                                                 DWORD nPairs, 
                                                     LPKERNINGPAIR   lpKernPair);
__declspec(dllimport) DWORD __stdcall GetKerningPairsW(         HDC hdc, 
                                                 DWORD nPairs, 
                                                     LPKERNINGPAIR   lpKernPair);







__declspec(dllimport) BOOL  __stdcall GetDCOrgEx(      HDC hdc,      LPPOINT lppt);
__declspec(dllimport) BOOL  __stdcall FixBrushOrgEx(      HDC hdc,      int x,      int y,         LPPOINT ptl);
__declspec(dllimport) BOOL  __stdcall UnrealizeObject(      HGDIOBJ h);

__declspec(dllimport) BOOL  __stdcall GdiFlush();
__declspec(dllimport) DWORD __stdcall GdiSetBatchLimit(      DWORD dw);
__declspec(dllimport) DWORD __stdcall GdiGetBatchLimit();








typedef int (__stdcall* ICMENUMPROCA)(LPSTR, LPARAM);
typedef int (__stdcall* ICMENUMPROCW)(LPWSTR, LPARAM);






__declspec(dllimport) int         __stdcall SetICMMode(      HDC hdc,      int mode);
__declspec(dllimport) BOOL        __stdcall CheckColorsInGamut(         HDC hdc,
                                                            LPVOID lpRGBTriple,
                                                         LPVOID dlpBuffer,
                                                         DWORD nCount);

__declspec(dllimport) HCOLORSPACE __stdcall GetColorSpace(      HDC hdc);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceA(      HCOLORSPACE hColorSpace, 
                                                     LPLOGCOLORSPACEA lpBuffer, 
                                                     DWORD nSize);
__declspec(dllimport) BOOL        __stdcall GetLogColorSpaceW(      HCOLORSPACE hColorSpace, 
                                                     LPLOGCOLORSPACEW lpBuffer, 
                                                     DWORD nSize);






__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceA(      LPLOGCOLORSPACEA lplcs);
__declspec(dllimport) HCOLORSPACE __stdcall CreateColorSpaceW(      LPLOGCOLORSPACEW lplcs);





__declspec(dllimport) HCOLORSPACE __stdcall SetColorSpace(      HDC hdc,      HCOLORSPACE hcs);
__declspec(dllimport) BOOL        __stdcall DeleteColorSpace(      HCOLORSPACE hcs);
__declspec(dllimport) BOOL	      __stdcall GetICMProfileA(         HDC hdc, 
                                                     LPDWORD pBufSize,
                                                       LPSTR pszFilename);
__declspec(dllimport) BOOL	      __stdcall GetICMProfileW(         HDC hdc, 
                                                     LPDWORD pBufSize,
                                                       LPWSTR pszFilename);






__declspec(dllimport) BOOL        __stdcall SetICMProfileA(      HDC hdc,      LPSTR lpFileName);
__declspec(dllimport) BOOL        __stdcall SetICMProfileW(      HDC hdc,      LPWSTR lpFileName);





__declspec(dllimport) BOOL        __stdcall GetDeviceGammaRamp(      HDC hdc,      LPVOID lpRamp);
__declspec(dllimport) BOOL        __stdcall SetDeviceGammaRamp(      HDC hdc,         LPVOID lpRamp);
__declspec(dllimport) BOOL        __stdcall ColorMatchToTarget(      HDC hdc,      HDC hdcTarget,      DWORD action);
__declspec(dllimport) int         __stdcall EnumICMProfilesA(      HDC hdc,      ICMENUMPROCA proc,        LPARAM param);
__declspec(dllimport) int         __stdcall EnumICMProfilesW(      HDC hdc,      ICMENUMPROCW proc,        LPARAM param);





__declspec(dllimport) BOOL	      __stdcall UpdateICMRegKeyA(   DWORD reserved,      LPSTR lpszCMID,      LPSTR lpszFileName,      UINT command);
__declspec(dllimport) BOOL	      __stdcall UpdateICMRegKeyW(   DWORD reserved,      LPWSTR lpszCMID,      LPWSTR lpszFileName,      UINT command);








__declspec(dllimport) BOOL        __stdcall ColorCorrectPalette(      HDC hdc,      HPALETTE hPal,      DWORD deFirst,      DWORD num);


































































































































































typedef struct tagEMR
{
    DWORD   iType;              
    DWORD   nSize;              
                                
} EMR, *PEMR;



typedef struct tagEMRTEXT
{
    POINTL  ptlReference;
    DWORD   nChars;
    DWORD   offString;          
    DWORD   fOptions;
    RECTL   rcl;
    DWORD   offDx;              
                                
} EMRTEXT, *PEMRTEXT;



typedef struct tagABORTPATH
{
    EMR     emr;
} EMRABORTPATH,      *PEMRABORTPATH,
  EMRBEGINPATH,      *PEMRBEGINPATH,
  EMRENDPATH,        *PEMRENDPATH,
  EMRCLOSEFIGURE,    *PEMRCLOSEFIGURE,
  EMRFLATTENPATH,    *PEMRFLATTENPATH,
  EMRWIDENPATH,      *PEMRWIDENPATH,
  EMRSETMETARGN,     *PEMRSETMETARGN,
  EMRSAVEDC,         *PEMRSAVEDC,
  EMRREALIZEPALETTE, *PEMRREALIZEPALETTE;

typedef struct tagEMRSELECTCLIPPATH
{
    EMR     emr;
    DWORD   iMode;
} EMRSELECTCLIPPATH,    *PEMRSELECTCLIPPATH,
  EMRSETBKMODE,         *PEMRSETBKMODE,
  EMRSETMAPMODE,        *PEMRSETMAPMODE,

  EMRSETLAYOUT,         *PEMRSETLAYOUT,

  EMRSETPOLYFILLMODE,   *PEMRSETPOLYFILLMODE,
  EMRSETROP2,           *PEMRSETROP2,
  EMRSETSTRETCHBLTMODE, *PEMRSETSTRETCHBLTMODE,
  EMRSETICMMODE,        *PEMRSETICMMODE,
  EMRSETTEXTALIGN,      *PEMRSETTEXTALIGN;

typedef struct tagEMRSETMITERLIMIT
{
    EMR     emr;
    FLOAT   eMiterLimit;
} EMRSETMITERLIMIT, *PEMRSETMITERLIMIT;

typedef struct tagEMRRESTOREDC
{
    EMR     emr;
    LONG    iRelative;          
} EMRRESTOREDC, *PEMRRESTOREDC;

typedef struct tagEMRSETARCDIRECTION
{
    EMR     emr;
    DWORD   iArcDirection;      
                                
} EMRSETARCDIRECTION, *PEMRSETARCDIRECTION;

typedef struct tagEMRSETMAPPERFLAGS
{
    EMR     emr;
    DWORD   dwFlags;
} EMRSETMAPPERFLAGS, *PEMRSETMAPPERFLAGS;

typedef struct tagEMRSETTEXTCOLOR
{
    EMR     emr;
    COLORREF crColor;
} EMRSETBKCOLOR,   *PEMRSETBKCOLOR,
  EMRSETTEXTCOLOR, *PEMRSETTEXTCOLOR;

typedef struct tagEMRSELECTOBJECT
{
    EMR     emr;
    DWORD   ihObject;           
} EMRSELECTOBJECT, *PEMRSELECTOBJECT,
  EMRDELETEOBJECT, *PEMRDELETEOBJECT;

typedef struct tagEMRSELECTPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
} EMRSELECTPALETTE, *PEMRSELECTPALETTE;

typedef struct tagEMRRESIZEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   cEntries;
} EMRRESIZEPALETTE, *PEMRRESIZEPALETTE;

typedef struct tagEMRSETPALETTEENTRIES
{
    EMR     emr;
    DWORD   ihPal;              
    DWORD   iStart;
    DWORD   cEntries;
    PALETTEENTRY aPalEntries[1];
} EMRSETPALETTEENTRIES, *PEMRSETPALETTEENTRIES;

typedef struct tagEMRSETCOLORADJUSTMENT
{
    EMR     emr;
    COLORADJUSTMENT ColorAdjustment;
} EMRSETCOLORADJUSTMENT, *PEMRSETCOLORADJUSTMENT;

typedef struct tagEMRGDICOMMENT
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGDICOMMENT, *PEMRGDICOMMENT;

typedef struct tagEMREOF
{
    EMR     emr;
    DWORD   nPalEntries;        
    DWORD   offPalEntries;      
    DWORD   nSizeLast;          
                                
                                
} EMREOF, *PEMREOF;

typedef struct tagEMRLINETO
{
    EMR     emr;
    POINTL  ptl;
} EMRLINETO,   *PEMRLINETO,
  EMRMOVETOEX, *PEMRMOVETOEX;

typedef struct tagEMROFFSETCLIPRGN
{
    EMR     emr;
    POINTL  ptlOffset;
} EMROFFSETCLIPRGN, *PEMROFFSETCLIPRGN;

typedef struct tagEMRFILLPATH
{
    EMR     emr;
    RECTL   rclBounds;          
} EMRFILLPATH,          *PEMRFILLPATH,
  EMRSTROKEANDFILLPATH, *PEMRSTROKEANDFILLPATH,
  EMRSTROKEPATH,        *PEMRSTROKEPATH;

typedef struct tagEMREXCLUDECLIPRECT
{
    EMR     emr;
    RECTL   rclClip;
} EMREXCLUDECLIPRECT,   *PEMREXCLUDECLIPRECT,
  EMRINTERSECTCLIPRECT, *PEMRINTERSECTCLIPRECT;

typedef struct tagEMRSETVIEWPORTORGEX
{
    EMR     emr;
    POINTL  ptlOrigin;
} EMRSETVIEWPORTORGEX, *PEMRSETVIEWPORTORGEX,
  EMRSETWINDOWORGEX,   *PEMRSETWINDOWORGEX,
  EMRSETBRUSHORGEX,    *PEMRSETBRUSHORGEX;

typedef struct tagEMRSETVIEWPORTEXTEX
{
    EMR     emr;
    SIZEL   szlExtent;
} EMRSETVIEWPORTEXTEX, *PEMRSETVIEWPORTEXTEX,
  EMRSETWINDOWEXTEX,   *PEMRSETWINDOWEXTEX;

typedef struct tagEMRSCALEVIEWPORTEXTEX
{
    EMR     emr;
    LONG    xNum;
    LONG    xDenom;
    LONG    yNum;
    LONG    yDenom;
} EMRSCALEVIEWPORTEXTEX, *PEMRSCALEVIEWPORTEXTEX,
  EMRSCALEWINDOWEXTEX,   *PEMRSCALEWINDOWEXTEX;

typedef struct tagEMRSETWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
} EMRSETWORLDTRANSFORM, *PEMRSETWORLDTRANSFORM;

typedef struct tagEMRMODIFYWORLDTRANSFORM
{
    EMR     emr;
    XFORM   xform;
    DWORD   iMode;
} EMRMODIFYWORLDTRANSFORM, *PEMRMODIFYWORLDTRANSFORM;

typedef struct tagEMRSETPIXELV
{
    EMR     emr;
    POINTL  ptlPixel;
    COLORREF crColor;
} EMRSETPIXELV, *PEMRSETPIXELV;

typedef struct tagEMREXTFLOODFILL
{
    EMR     emr;
    POINTL  ptlStart;
    COLORREF crColor;
    DWORD   iMode;
} EMREXTFLOODFILL, *PEMREXTFLOODFILL;

typedef struct tagEMRELLIPSE
{
    EMR     emr;
    RECTL   rclBox;             
} EMRELLIPSE,  *PEMRELLIPSE,
  EMRRECTANGLE, *PEMRRECTANGLE;


typedef struct tagEMRROUNDRECT
{
    EMR     emr;
    RECTL   rclBox;             
    SIZEL   szlCorner;
} EMRROUNDRECT, *PEMRROUNDRECT;

typedef struct tagEMRARC
{
    EMR     emr;
    RECTL   rclBox;             
    POINTL  ptlStart;
    POINTL  ptlEnd;
} EMRARC,   *PEMRARC,
  EMRARCTO, *PEMRARCTO,
  EMRCHORD, *PEMRCHORD,
  EMRPIE,   *PEMRPIE;

typedef struct tagEMRANGLEARC
{
    EMR     emr;
    POINTL  ptlCenter;
    DWORD   nRadius;
    FLOAT   eStartAngle;
    FLOAT   eSweepAngle;
} EMRANGLEARC, *PEMRANGLEARC;

typedef struct tagEMRPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;
    POINTL  aptl[1];
} EMRPOLYLINE,     *PEMRPOLYLINE,
  EMRPOLYBEZIER,   *PEMRPOLYBEZIER,
  EMRPOLYGON,      *PEMRPOLYGON,
  EMRPOLYBEZIERTO, *PEMRPOLYBEZIERTO,
  EMRPOLYLINETO,   *PEMRPOLYLINETO;

typedef struct tagEMRPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;
    POINTS  apts[1];
} EMRPOLYLINE16,     *PEMRPOLYLINE16,
  EMRPOLYBEZIER16,   *PEMRPOLYBEZIER16,
  EMRPOLYGON16,      *PEMRPOLYGON16,
  EMRPOLYBEZIERTO16, *PEMRPOLYBEZIERTO16,
  EMRPOLYLINETO16,   *PEMRPOLYLINETO16;

typedef struct tagEMRPOLYDRAW
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cptl;               
    POINTL  aptl[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW, *PEMRPOLYDRAW;

typedef struct tagEMRPOLYDRAW16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cpts;               
    POINTS  apts[1];            
    BYTE    abTypes[1];         
} EMRPOLYDRAW16, *PEMRPOLYDRAW16;

typedef struct tagEMRPOLYPOLYLINE
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cptl;               
    DWORD   aPolyCounts[1];     
    POINTL  aptl[1];            
} EMRPOLYPOLYLINE, *PEMRPOLYPOLYLINE,
  EMRPOLYPOLYGON,  *PEMRPOLYPOLYGON;

typedef struct tagEMRPOLYPOLYLINE16
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   nPolys;             
    DWORD   cpts;               
    DWORD   aPolyCounts[1];     
    POINTS  apts[1];            
} EMRPOLYPOLYLINE16, *PEMRPOLYPOLYLINE16,
  EMRPOLYPOLYGON16,  *PEMRPOLYPOLYGON16;

typedef struct tagEMRINVERTRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    BYTE    RgnData[1];
} EMRINVERTRGN, *PEMRINVERTRGN,
  EMRPAINTRGN,  *PEMRPAINTRGN;

typedef struct tagEMRFILLRGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    BYTE    RgnData[1];
} EMRFILLRGN, *PEMRFILLRGN;

typedef struct tagEMRFRAMERGN
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbRgnData;          
    DWORD   ihBrush;            
    SIZEL   szlStroke;
    BYTE    RgnData[1];
} EMRFRAMERGN, *PEMRFRAMERGN;

typedef struct tagEMREXTSELECTCLIPRGN
{
    EMR     emr;
    DWORD   cbRgnData;          
    DWORD   iMode;
    BYTE    RgnData[1];
} EMREXTSELECTCLIPRGN, *PEMREXTSELECTCLIPRGN;

typedef struct tagEMREXTTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    EMRTEXT emrtext;            
                                
} EMREXTTEXTOUTA, *PEMREXTTEXTOUTA,
  EMREXTTEXTOUTW, *PEMREXTTEXTOUTW;

typedef struct tagEMRPOLYTEXTOUTA
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   iGraphicsMode;      
    FLOAT   exScale;            
    FLOAT   eyScale;            
    LONG    cStrings;
    EMRTEXT aemrtext[1];        
                                
} EMRPOLYTEXTOUTA, *PEMRPOLYTEXTOUTA,
  EMRPOLYTEXTOUTW, *PEMRPOLYTEXTOUTW;

typedef struct tagEMRBITBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
} EMRBITBLT, *PEMRBITBLT;

typedef struct tagEMRSTRETCHBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    cxSrc;
    LONG    cySrc;
} EMRSTRETCHBLT, *PEMRSTRETCHBLT;

typedef struct tagEMRMASKBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRMASKBLT, *PEMRMASKBLT;

typedef struct tagEMRPLGBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    POINTL  aptlDest[3];
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    xMask;
    LONG    yMask;
    DWORD   iUsageMask;         
    DWORD   offBmiMask;         
    DWORD   cbBmiMask;          
    DWORD   offBitsMask;        
    DWORD   cbBitsMask;         
} EMRPLGBLT, *PEMRPLGBLT;

typedef struct tagEMRSETDIBITSTODEVICE
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   iStartScan;
    DWORD   cScans;
} EMRSETDIBITSTODEVICE, *PEMRSETDIBITSTODEVICE;

typedef struct tagEMRSTRETCHDIBITS
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    xSrc;
    LONG    ySrc;
    LONG    cxSrc;
    LONG    cySrc;
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    DWORD   iUsageSrc;          
    DWORD   dwRop;
    LONG    cxDest;
    LONG    cyDest;
} EMRSTRETCHDIBITS, *PEMRSTRETCHDIBITS;

typedef struct tagEMREXTCREATEFONTINDIRECTW
{
    EMR     emr;
    DWORD   ihFont;             
    EXTLOGFONTW elfw;
} EMREXTCREATEFONTINDIRECTW, *PEMREXTCREATEFONTINDIRECTW;

typedef struct tagEMRCREATEPALETTE
{
    EMR     emr;
    DWORD   ihPal;              
    LOGPALETTE lgpl;            
                                
} EMRCREATEPALETTE, *PEMRCREATEPALETTE;

typedef struct tagEMRCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    LOGPEN  lopn;
} EMRCREATEPEN, *PEMRCREATEPEN;

typedef struct tagEMREXTCREATEPEN
{
    EMR     emr;
    DWORD   ihPen;              
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
    EXTLOGPEN elp;              
} EMREXTCREATEPEN, *PEMREXTCREATEPEN;

typedef struct tagEMRCREATEBRUSHINDIRECT
{
    EMR        emr;
    DWORD      ihBrush;          
    LOGBRUSH32 lb;               
                                 
} EMRCREATEBRUSHINDIRECT, *PEMRCREATEBRUSHINDIRECT;

typedef struct tagEMRCREATEMONOBRUSH
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEMONOBRUSH, *PEMRCREATEMONOBRUSH;

typedef struct tagEMRCREATEDIBPATTERNBRUSHPT
{
    EMR     emr;
    DWORD   ihBrush;            
    DWORD   iUsage;             
    DWORD   offBmi;             
    DWORD   cbBmi;              
                                
                                
    DWORD   offBits;            
    DWORD   cbBits;             
} EMRCREATEDIBPATTERNBRUSHPT, *PEMRCREATEDIBPATTERNBRUSHPT;

typedef struct tagEMRFORMAT
{
    DWORD   dSignature;         
    DWORD   nVersion;           
    DWORD   cbData;             
    DWORD   offData;            
                                
} EMRFORMAT, *PEMRFORMAT;



typedef struct tagEMRGLSRECORD
{
    EMR     emr;
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSRECORD, *PEMRGLSRECORD;

typedef struct tagEMRGLSBOUNDEDRECORD
{
    EMR     emr;
    RECTL   rclBounds;          
    DWORD   cbData;             
    BYTE    Data[1];
} EMRGLSBOUNDEDRECORD, *PEMRGLSBOUNDEDRECORD;

typedef struct tagEMRPIXELFORMAT
{
    EMR     emr;
    PIXELFORMATDESCRIPTOR pfd;
} EMRPIXELFORMAT, *PEMRPIXELFORMAT;

typedef struct tagEMRCREATECOLORSPACE
{
    EMR             emr;
    DWORD           ihCS;       
    LOGCOLORSPACEA  lcs;        
} EMRCREATECOLORSPACE, *PEMRCREATECOLORSPACE;

typedef struct tagEMRSETCOLORSPACE
{
    EMR     emr;
    DWORD   ihCS;               
} EMRSETCOLORSPACE,    *PEMRSETCOLORSPACE,
  EMRSELECTCOLORSPACE, *PEMRSELECTCOLORSPACE,
  EMRDELETECOLORSPACE, *PEMRDELETECOLORSPACE;





typedef struct tagEMREXTESCAPE
{
    EMR     emr;
    INT     iEscape;            
    INT     cbEscData;          
    BYTE    EscData[1];         
} EMREXTESCAPE,  *PEMREXTESCAPE,
  EMRDRAWESCAPE, *PEMRDRAWESCAPE;

typedef struct tagEMRNAMEDESCAPE
{
    EMR     emr;
    INT     iEscape;            
    INT     cbDriver;           
    INT     cbEscData;          
    BYTE    EscData[1];         
} EMRNAMEDESCAPE, *PEMRNAMEDESCAPE;



typedef struct tagEMRSETICMPROFILE
{
    EMR     emr;
    DWORD   dwFlags;            
    DWORD   cbName;             
    DWORD   cbData;             
    BYTE    Data[1];            
} EMRSETICMPROFILE,  *PEMRSETICMPROFILE,
  EMRSETICMPROFILEA, *PEMRSETICMPROFILEA,
  EMRSETICMPROFILEW, *PEMRSETICMPROFILEW;



typedef struct tagEMRCREATECOLORSPACEW
{
    EMR             emr;
    DWORD           ihCS;       
    LOGCOLORSPACEW  lcs;        
    DWORD           dwFlags;    
    DWORD           cbData;     
    BYTE            Data[1];    
} EMRCREATECOLORSPACEW, *PEMRCREATECOLORSPACEW;



typedef struct tagCOLORMATCHTOTARGET
{
    EMR     emr;
    DWORD   dwAction;           
    DWORD   dwFlags;            
    DWORD   cbName;             
    DWORD   cbData;             
    BYTE    Data[1];            
} EMRCOLORMATCHTOTARGET, *PEMRCOLORMATCHTOTARGET;

typedef struct tagCOLORCORRECTPALETTE
{
    EMR     emr;
    DWORD   ihPalette;          
    DWORD   nFirstEntry;        
    DWORD   nPalEntries;        
    DWORD   nReserved;          
} EMRCOLORCORRECTPALETTE, *PEMRCOLORCORRECTPALETTE;

typedef struct tagEMRALPHABLEND
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    cxSrc;
    LONG    cySrc;
} EMRALPHABLEND, *PEMRALPHABLEND;

typedef struct tagEMRGRADIENTFILL
{
    EMR       emr;
    RECTL     rclBounds;          
    DWORD     nVer;
    DWORD     nTri;
    ULONG     ulMode;
    TRIVERTEX Ver[1];
}EMRGRADIENTFILL,*PEMRGRADIENTFILL;

typedef struct tagEMRTRANSPARENTBLT
{
    EMR     emr;
    RECTL   rclBounds;          
    LONG    xDest;
    LONG    yDest;
    LONG    cxDest;
    LONG    cyDest;
    DWORD   dwRop;
    LONG    xSrc;
    LONG    ySrc;
    XFORM   xformSrc;           
    COLORREF crBkColorSrc;      
    DWORD   iUsageSrc;          
                                
    DWORD   offBmiSrc;          
    DWORD   cbBmiSrc;           
    DWORD   offBitsSrc;         
    DWORD   cbBitsSrc;          
    LONG    cxSrc;
    LONG    cySrc;
} EMRTRANSPARENTBLT, *PEMRTRANSPARENTBLT;


















__declspec(dllimport) BOOL  __stdcall wglCopyContext(HGLRC, HGLRC, UINT);
__declspec(dllimport) HGLRC __stdcall wglCreateContext(HDC);
__declspec(dllimport) HGLRC __stdcall wglCreateLayerContext(HDC, int);
__declspec(dllimport) BOOL  __stdcall wglDeleteContext(HGLRC);
__declspec(dllimport) HGLRC __stdcall wglGetCurrentContext(void);
__declspec(dllimport) HDC   __stdcall wglGetCurrentDC(void);
__declspec(dllimport) PROC  __stdcall wglGetProcAddress(LPCSTR);
__declspec(dllimport) BOOL  __stdcall wglMakeCurrent(HDC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglShareLists(HGLRC, HGLRC);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsA(HDC, DWORD, DWORD, DWORD);
__declspec(dllimport) BOOL  __stdcall wglUseFontBitmapsW(HDC, DWORD, DWORD, DWORD);





__declspec(dllimport) BOOL  __stdcall SwapBuffers(HDC);

typedef struct _POINTFLOAT {
    FLOAT   x;
    FLOAT   y;
} POINTFLOAT, *PPOINTFLOAT;

typedef struct _GLYPHMETRICSFLOAT {
    FLOAT       gmfBlackBoxX;
    FLOAT       gmfBlackBoxY;
    POINTFLOAT  gmfptGlyphOrigin;
    FLOAT       gmfCellIncX;
    FLOAT       gmfCellIncY;
} GLYPHMETRICSFLOAT, *PGLYPHMETRICSFLOAT,  *LPGLYPHMETRICSFLOAT;



__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesA(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);
__declspec(dllimport) BOOL  __stdcall wglUseFontOutlinesW(HDC, DWORD, DWORD, DWORD, FLOAT,
                                           FLOAT, int, LPGLYPHMETRICSFLOAT);







typedef struct tagLAYERPLANEDESCRIPTOR { 
    WORD  nSize;
    WORD  nVersion;
    DWORD dwFlags;
    BYTE  iPixelType;
    BYTE  cColorBits;
    BYTE  cRedBits;
    BYTE  cRedShift;
    BYTE  cGreenBits;
    BYTE  cGreenShift;
    BYTE  cBlueBits;
    BYTE  cBlueShift;
    BYTE  cAlphaBits;
    BYTE  cAlphaShift;
    BYTE  cAccumBits;
    BYTE  cAccumRedBits;
    BYTE  cAccumGreenBits;
    BYTE  cAccumBlueBits;
    BYTE  cAccumAlphaBits;
    BYTE  cDepthBits;
    BYTE  cStencilBits;
    BYTE  cAuxBuffers;
    BYTE  iLayerPlane;
    BYTE  bReserved;
    COLORREF crTransparent;
} LAYERPLANEDESCRIPTOR, *PLAYERPLANEDESCRIPTOR,  *LPLAYERPLANEDESCRIPTOR;

















































__declspec(dllimport) BOOL  __stdcall wglDescribeLayerPlane(HDC, int, int, UINT,
                                             LPLAYERPLANEDESCRIPTOR);
__declspec(dllimport) int   __stdcall wglSetLayerPaletteEntries(HDC, int, int, int,
                                                 const COLORREF *);
__declspec(dllimport) int   __stdcall wglGetLayerPaletteEntries(HDC, int, int, int,
                                                 COLORREF *);
__declspec(dllimport) BOOL  __stdcall wglRealizeLayerPalette(HDC, int, BOOL);
__declspec(dllimport) BOOL  __stdcall wglSwapLayerBuffers(HDC, UINT);



typedef struct _WGLSWAP
{
    HDC hdc;
    UINT uiFlags;
} WGLSWAP, *PWGLSWAP,  *LPWGLSWAP;



__declspec(dllimport) DWORD __stdcall wglSwapMultipleBuffers(UINT, const WGLSWAP *);






}






































extern "C" {










typedef HANDLE HDWP;
typedef void MENUTEMPLATEA;
typedef void MENUTEMPLATEW;



typedef MENUTEMPLATEA MENUTEMPLATE;

typedef PVOID LPMENUTEMPLATEA;
typedef PVOID LPMENUTEMPLATEW;



typedef LPMENUTEMPLATEA LPMENUTEMPLATE;


typedef LRESULT (__stdcall* WNDPROC)(HWND, UINT, WPARAM, LPARAM);



typedef INT_PTR (__stdcall* DLGPROC)(HWND, UINT, WPARAM, LPARAM);
typedef void (__stdcall* TIMERPROC)(HWND, UINT, UINT_PTR, DWORD);
typedef BOOL (__stdcall* GRAYSTRINGPROC)(HDC, LPARAM, int);
typedef BOOL (__stdcall* WNDENUMPROC)(HWND, LPARAM);
typedef LRESULT (__stdcall* HOOKPROC)(int code, WPARAM wParam, LPARAM lParam);
typedef void (__stdcall* SENDASYNCPROC)(HWND, UINT, ULONG_PTR, LRESULT);

typedef BOOL (__stdcall* PROPENUMPROCA)(HWND, LPCSTR, HANDLE);
typedef BOOL (__stdcall* PROPENUMPROCW)(HWND, LPCWSTR, HANDLE);

typedef BOOL (__stdcall* PROPENUMPROCEXA)(HWND, LPSTR, HANDLE, ULONG_PTR);
typedef BOOL (__stdcall* PROPENUMPROCEXW)(HWND, LPWSTR, HANDLE, ULONG_PTR);

typedef int (__stdcall* EDITWORDBREAKPROCA)(LPSTR lpch, int ichCurrent, int cch, int code);
typedef int (__stdcall* EDITWORDBREAKPROCW)(LPWSTR lpch, int ichCurrent, int cch, int code);


typedef BOOL (__stdcall* DRAWSTATEPROC)(HDC hdc, LPARAM lData, WPARAM wData, int cx, int cy);





























typedef PROPENUMPROCA        PROPENUMPROC;
typedef PROPENUMPROCEXA      PROPENUMPROCEX;
typedef EDITWORDBREAKPROCA   EDITWORDBREAKPROC;




typedef BOOL (__stdcall* NAMEENUMPROCA)(LPSTR, LPARAM);
typedef BOOL (__stdcall* NAMEENUMPROCW)(LPWSTR, LPARAM);

typedef NAMEENUMPROCA   WINSTAENUMPROCA;
typedef NAMEENUMPROCA   DESKTOPENUMPROCA;
typedef NAMEENUMPROCW   WINSTAENUMPROCW;
typedef NAMEENUMPROCW   DESKTOPENUMPROCW;




















typedef WINSTAENUMPROCA     WINSTAENUMPROC;
typedef DESKTOPENUMPROCA    DESKTOPENUMPROC;




























































__declspec(dllimport)
int
__stdcall
wvsprintfA(
         LPSTR,
          LPCSTR,
         va_list arglist);
__declspec(dllimport)
int
__stdcall
wvsprintfW(
         LPWSTR,
          LPCWSTR,
         va_list arglist);






__declspec(dllimport)
int
__cdecl
wsprintfA(
         LPSTR,
          LPCSTR,
    ...);
__declspec(dllimport)
int
__cdecl
wsprintfW(
         LPWSTR,
          LPCWSTR,
    ...);







































































































































































































































































































































































































































































typedef struct tagCBT_CREATEWNDA
{
    struct tagCREATESTRUCTA *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDA, *LPCBT_CREATEWNDA;



typedef struct tagCBT_CREATEWNDW
{
    struct tagCREATESTRUCTW *lpcs;
    HWND           hwndInsertAfter;
} CBT_CREATEWNDW, *LPCBT_CREATEWNDW;




typedef CBT_CREATEWNDA CBT_CREATEWND;
typedef LPCBT_CREATEWNDA LPCBT_CREATEWND;





typedef struct tagCBTACTIVATESTRUCT
{
    BOOL    fMouse;
    HWND    hWndActive;
} CBTACTIVATESTRUCT, *LPCBTACTIVATESTRUCT;
















































































































































typedef struct
{
    HWND    hwnd;
    RECT    rc;
} SHELLHOOKINFO, *LPSHELLHOOKINFO;




typedef struct tagEVENTMSG {
    UINT    message;
    UINT    paramL;
    UINT    paramH;
    DWORD    time;
    HWND     hwnd;
} EVENTMSG, *PEVENTMSGMSG,  *NPEVENTMSGMSG,  *LPEVENTMSGMSG;

typedef struct tagEVENTMSG *PEVENTMSG,  *NPEVENTMSG,  *LPEVENTMSG;




typedef struct tagCWPSTRUCT {
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPSTRUCT, *PCWPSTRUCT,  *NPCWPSTRUCT,  *LPCWPSTRUCT;





typedef struct tagCWPRETSTRUCT {
    LRESULT lResult;
    LPARAM  lParam;
    WPARAM  wParam;
    UINT    message;
    HWND    hwnd;
} CWPRETSTRUCT, *PCWPRETSTRUCT,  *NPCWPRETSTRUCT,  *LPCWPRETSTRUCT;











































typedef struct tagDEBUGHOOKINFO
{
    DWORD   idThread;
    DWORD   idThreadInstaller;
    LPARAM  lParam;
    WPARAM  wParam;
    int     code;
} DEBUGHOOKINFO, *PDEBUGHOOKINFO,  *NPDEBUGHOOKINFO, * LPDEBUGHOOKINFO;




typedef struct tagMOUSEHOOKSTRUCT {
    POINT   pt;
    HWND    hwnd;
    UINT    wHitTestCode;
    ULONG_PTR dwExtraInfo;
} MOUSEHOOKSTRUCT,  *LPMOUSEHOOKSTRUCT, *PMOUSEHOOKSTRUCT;




















typedef struct tagHARDWAREHOOKSTRUCT {
    HWND    hwnd;
    UINT    message;
    WPARAM  wParam;
    LPARAM  lParam;
} HARDWAREHOOKSTRUCT,  *LPHARDWAREHOOKSTRUCT, *PHARDWAREHOOKSTRUCT;






































__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutA(
         LPCSTR pwszKLID,
         UINT Flags);
__declspec(dllimport)
HKL
__stdcall
LoadKeyboardLayoutW(
         LPCWSTR pwszKLID,
         UINT Flags);








__declspec(dllimport)
HKL
__stdcall
ActivateKeyboardLayout(
         HKL hkl,
         UINT Flags);










__declspec(dllimport)
int
__stdcall
ToUnicodeEx(
         UINT wVirtKey,
         UINT wScanCode,
           const BYTE *lpKeyState,
         LPWSTR pwszBuff,
         int cchBuff,
         UINT wFlags,
           HKL dwhkl);


__declspec(dllimport)
BOOL
__stdcall
UnloadKeyboardLayout(
         HKL hkl);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameA(
         LPSTR pwszKLID);
__declspec(dllimport)
BOOL
__stdcall
GetKeyboardLayoutNameW(
         LPWSTR pwszKLID);







__declspec(dllimport)
int
__stdcall
GetKeyboardLayoutList(
         int nBuff,
             HKL  *lpList);

__declspec(dllimport)
HKL
__stdcall
GetKeyboardLayout(
         DWORD idThread);





typedef struct tagMOUSEMOVEPOINT {
    int   x;
    int   y;
    DWORD time;
    ULONG_PTR dwExtraInfo;
} MOUSEMOVEPOINT, *PMOUSEMOVEPOINT, * LPMOUSEMOVEPOINT;







__declspec(dllimport)
int
__stdcall
GetMouseMovePointsEx(
         UINT cbSize,
         LPMOUSEMOVEPOINT lppt,
         LPMOUSEMOVEPOINT lpptBuf,
         int nBufPoints,
         DWORD resolution);

























__declspec(dllimport)
HDESK
__stdcall
CreateDesktopA(
         LPCSTR lpszDesktop,
      LPCSTR lpszDevice,
      LPDEVMODEA pDevmode,
         DWORD dwFlags,
         ACCESS_MASK dwDesiredAccess,
           LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HDESK
__stdcall
CreateDesktopW(
         LPCWSTR lpszDesktop,
      LPCWSTR lpszDevice,
      LPDEVMODEW pDevmode,
         DWORD dwFlags,
         ACCESS_MASK dwDesiredAccess,
           LPSECURITY_ATTRIBUTES lpsa);









__declspec(dllimport)
HDESK
__stdcall
OpenDesktopA(
         LPCSTR lpszDesktop,
         DWORD dwFlags,
         BOOL fInherit,
         ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HDESK
__stdcall
OpenDesktopW(
         LPCWSTR lpszDesktop,
         DWORD dwFlags,
         BOOL fInherit,
         ACCESS_MASK dwDesiredAccess);






__declspec(dllimport)
HDESK
__stdcall
OpenInputDesktop(
         DWORD dwFlags,
         BOOL fInherit,
         ACCESS_MASK dwDesiredAccess);


__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsA(
           HWINSTA hwinsta,
         DESKTOPENUMPROCA lpEnumFunc,
         LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumDesktopsW(
           HWINSTA hwinsta,
         DESKTOPENUMPROCW lpEnumFunc,
         LPARAM lParam);






__declspec(dllimport)
BOOL
__stdcall
EnumDesktopWindows(
           HDESK hDesktop,
         WNDENUMPROC lpfn,
         LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
SwitchDesktop(
         HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
SetThreadDesktop(
          HDESK hDesktop);

__declspec(dllimport)
BOOL
__stdcall
CloseDesktop(
         HDESK hDesktop);

__declspec(dllimport)
HDESK
__stdcall
GetThreadDesktop(
         DWORD dwThreadId);































__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationA(
           LPCSTR lpwinsta,
         DWORD dwFlags,
         ACCESS_MASK dwDesiredAccess,
           LPSECURITY_ATTRIBUTES lpsa);
__declspec(dllimport)
HWINSTA
__stdcall
CreateWindowStationW(
           LPCWSTR lpwinsta,
         DWORD dwFlags,
         ACCESS_MASK dwDesiredAccess,
           LPSECURITY_ATTRIBUTES lpsa);






__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationA(
         LPCSTR lpszWinSta,
         BOOL fInherit,
         ACCESS_MASK dwDesiredAccess);
__declspec(dllimport)
HWINSTA
__stdcall
OpenWindowStationW(
         LPCWSTR lpszWinSta,
         BOOL fInherit,
         ACCESS_MASK dwDesiredAccess);






__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsA(
         WINSTAENUMPROCA lpEnumFunc,
         LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumWindowStationsW(
         WINSTAENUMPROCW lpEnumFunc,
         LPARAM lParam);






__declspec(dllimport)
BOOL
__stdcall
CloseWindowStation(
         HWINSTA hWinSta);

__declspec(dllimport)
BOOL
__stdcall
SetProcessWindowStation(
         HWINSTA hWinSta);

__declspec(dllimport)
HWINSTA
__stdcall
GetProcessWindowStation(
    void);




__declspec(dllimport)
BOOL
__stdcall
SetUserObjectSecurity(
         HANDLE hObj,
         PSECURITY_INFORMATION pSIRequested,
         PSECURITY_DESCRIPTOR pSID);

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectSecurity(
         HANDLE hObj,
         PSECURITY_INFORMATION pSIRequested,
           PSECURITY_DESCRIPTOR pSID,
         DWORD nLength,
         LPDWORD lpnLengthNeeded);






typedef struct tagUSEROBJECTFLAGS {
    BOOL fInherit;
    BOOL fReserved;
    DWORD dwFlags;
} USEROBJECTFLAGS, *PUSEROBJECTFLAGS;

__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationA(
         HANDLE hObj,
         int nIndex,
           PVOID pvInfo,
         DWORD nLength,
           LPDWORD lpnLengthNeeded);
__declspec(dllimport)
BOOL
__stdcall
GetUserObjectInformationW(
         HANDLE hObj,
         int nIndex,
           PVOID pvInfo,
         DWORD nLength,
           LPDWORD lpnLengthNeeded);






__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationA(
         HANDLE hObj,
         int nIndex,
           PVOID pvInfo,
         DWORD nLength);
__declspec(dllimport)
BOOL
__stdcall
SetUserObjectInformationW(
         HANDLE hObj,
         int nIndex,
           PVOID pvInfo,
         DWORD nLength);









typedef struct tagWNDCLASSEXA {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXA, *PWNDCLASSEXA,  *NPWNDCLASSEXA,  *LPWNDCLASSEXA;
typedef struct tagWNDCLASSEXW {
    UINT        cbSize;
    
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
    
    HICON       hIconSm;
} WNDCLASSEXW, *PWNDCLASSEXW,  *NPWNDCLASSEXW,  *LPWNDCLASSEXW;






typedef WNDCLASSEXA WNDCLASSEX;
typedef PWNDCLASSEXA PWNDCLASSEX;
typedef NPWNDCLASSEXA NPWNDCLASSEX;
typedef LPWNDCLASSEXA LPWNDCLASSEX;



typedef struct tagWNDCLASSA {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCSTR      lpszMenuName;
    LPCSTR      lpszClassName;
} WNDCLASSA, *PWNDCLASSA,  *NPWNDCLASSA,  *LPWNDCLASSA;
typedef struct tagWNDCLASSW {
    UINT        style;
    WNDPROC     lpfnWndProc;
    int         cbClsExtra;
    int         cbWndExtra;
    HINSTANCE   hInstance;
    HICON       hIcon;
    HCURSOR     hCursor;
    HBRUSH      hbrBackground;
    LPCWSTR     lpszMenuName;
    LPCWSTR     lpszClassName;
} WNDCLASSW, *PWNDCLASSW,  *NPWNDCLASSW,  *LPWNDCLASSW;






typedef WNDCLASSA WNDCLASS;
typedef PWNDCLASSA PWNDCLASS;
typedef NPWNDCLASSA NPWNDCLASS;
typedef LPWNDCLASSA LPWNDCLASS;


__declspec(dllimport)
BOOL
__stdcall
IsHungAppWindow(
         HWND hwnd);



__declspec(dllimport)
void
__stdcall
DisableProcessWindowsGhosting(
    void);








typedef struct tagMSG {
    HWND        hwnd;
    UINT        message;
    WPARAM      wParam;
    LPARAM      lParam;
    DWORD       time;
    POINT       pt;



} MSG, *PMSG,  *NPMSG,  *LPMSG;












































































































































typedef struct tagMINMAXINFO {
    POINT ptReserved;
    POINT ptMaxSize;
    POINT ptMaxPosition;
    POINT ptMinTrackSize;
    POINT ptMaxTrackSize;
} MINMAXINFO, *PMINMAXINFO, *LPMINMAXINFO;











































typedef struct tagCOPYDATASTRUCT {
    ULONG_PTR dwData;
    DWORD cbData;
    PVOID lpData;
} COPYDATASTRUCT, *PCOPYDATASTRUCT;


typedef struct tagMDINEXTMENU
{
    HMENU   hmenuIn;
    HMENU   hmenuNext;
    HWND    hwndNext;
} MDINEXTMENU, * PMDINEXTMENU,  * LPMDINEXTMENU;





































































































































































































































































































































































































































__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageA(
         LPCSTR lpString);
__declspec(dllimport)
UINT
__stdcall
RegisterWindowMessageW(
         LPCWSTR lpString);




























typedef struct tagWINDOWPOS {
    HWND    hwnd;
    HWND    hwndInsertAfter;
    int     x;
    int     y;
    int     cx;
    int     cy;
    UINT    flags;
} WINDOWPOS, *LPWINDOWPOS, *PWINDOWPOS;




typedef struct tagNCCALCSIZE_PARAMS {
    RECT       rgrc[3];
    PWINDOWPOS lppos;
} NCCALCSIZE_PARAMS, *LPNCCALCSIZE_PARAMS;





























































































































































































































































__declspec(dllimport)
BOOL
__stdcall
DrawEdge(
         HDC hdc,
         LPRECT qrc,
         UINT edge,
         UINT grfFlags);

















































__declspec(dllimport)
BOOL
__stdcall
DrawFrameControl(
         HDC,
         LPRECT,
         UINT,
         UINT);















__declspec(dllimport)
BOOL
__stdcall
DrawCaption(
         HWND hwnd,
         HDC hdc,
         const RECT * lprect,
         UINT flags);





__declspec(dllimport)
BOOL
__stdcall
DrawAnimatedRects(
           HWND hwnd,
         int idAni,
         const RECT *lprcFrom,
         const RECT *lprcTo);





































































typedef struct tagACCEL {

    BYTE   fVirt;               
    WORD   key;
    WORD   cmd;





} ACCEL, *LPACCEL;

typedef struct tagPAINTSTRUCT {
    HDC         hdc;
    BOOL        fErase;
    RECT        rcPaint;
    BOOL        fRestore;
    BOOL        fIncUpdate;
    BYTE        rgbReserved[32];
} PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;

typedef struct tagCREATESTRUCTA {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCSTR      lpszName;
    LPCSTR      lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTA, *LPCREATESTRUCTA;
typedef struct tagCREATESTRUCTW {
    LPVOID      lpCreateParams;
    HINSTANCE   hInstance;
    HMENU       hMenu;
    HWND        hwndParent;
    int         cy;
    int         cx;
    int         y;
    int         x;
    LONG        style;
    LPCWSTR     lpszName;
    LPCWSTR     lpszClass;
    DWORD       dwExStyle;
} CREATESTRUCTW, *LPCREATESTRUCTW;




typedef CREATESTRUCTA CREATESTRUCT;
typedef LPCREATESTRUCTA LPCREATESTRUCT;


typedef struct tagWINDOWPLACEMENT {
    UINT  length;
    UINT  flags;
    UINT  showCmd;
    POINT ptMinPosition;
    POINT ptMaxPosition;
    RECT  rcNormalPosition;



} WINDOWPLACEMENT;
typedef WINDOWPLACEMENT *PWINDOWPLACEMENT, *LPWINDOWPLACEMENT;








typedef struct tagNMHDR
{
    HWND      hwndFrom;
    UINT_PTR  idFrom;
    UINT      code;         
}   NMHDR;
typedef NMHDR  * LPNMHDR;

typedef struct tagSTYLESTRUCT
{
    DWORD   styleOld;
    DWORD   styleNew;
} STYLESTRUCT, * LPSTYLESTRUCT;













































typedef struct tagMEASUREITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    UINT       itemWidth;
    UINT       itemHeight;
    ULONG_PTR  itemData;
} MEASUREITEMSTRUCT,  *PMEASUREITEMSTRUCT,  *LPMEASUREITEMSTRUCT;





typedef struct tagDRAWITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    UINT        itemID;
    UINT        itemAction;
    UINT        itemState;
    HWND        hwndItem;
    HDC         hDC;
    RECT        rcItem;
    ULONG_PTR   itemData;
} DRAWITEMSTRUCT,  *PDRAWITEMSTRUCT,  *LPDRAWITEMSTRUCT;




typedef struct tagDELETEITEMSTRUCT {
    UINT       CtlType;
    UINT       CtlID;
    UINT       itemID;
    HWND       hwndItem;
    ULONG_PTR  itemData;
} DELETEITEMSTRUCT,  *PDELETEITEMSTRUCT,  *LPDELETEITEMSTRUCT;




typedef struct tagCOMPAREITEMSTRUCT {
    UINT        CtlType;
    UINT        CtlID;
    HWND        hwndItem;
    UINT        itemID1;
    ULONG_PTR   itemData1;
    UINT        itemID2;
    ULONG_PTR   itemData2;
    DWORD       dwLocaleId;
} COMPAREITEMSTRUCT,  *PCOMPAREITEMSTRUCT,  *LPCOMPAREITEMSTRUCT;







__declspec(dllimport)
BOOL
__stdcall
GetMessageA(
         LPMSG lpMsg,
           HWND hWnd,
         UINT wMsgFilterMin,
         UINT wMsgFilterMax);
__declspec(dllimport)
BOOL
__stdcall
GetMessageW(
         LPMSG lpMsg,
           HWND hWnd,
         UINT wMsgFilterMin,
         UINT wMsgFilterMax);





    

























__declspec(dllimport)
BOOL
__stdcall
TranslateMessage(
         const MSG *lpMsg);

__declspec(dllimport)
LRESULT
__stdcall
DispatchMessageA(
         const MSG *lpMsg);
__declspec(dllimport)
LRESULT
__stdcall
DispatchMessageW(
         const MSG *lpMsg);





    


















__declspec(dllimport)
BOOL
__stdcall
SetMessageQueue(
         int cMessagesMax);

__declspec(dllimport)
BOOL
__stdcall
PeekMessageA(
         LPMSG lpMsg,
           HWND hWnd,
         UINT wMsgFilterMin,
         UINT wMsgFilterMax,
         UINT wRemoveMsg);
__declspec(dllimport)
BOOL
__stdcall
PeekMessageW(
         LPMSG lpMsg,
           HWND hWnd,
         UINT wMsgFilterMin,
         UINT wMsgFilterMax,
         UINT wRemoveMsg);























__declspec(dllimport)
BOOL
__stdcall
RegisterHotKey(
           HWND hWnd,
         int id,
         UINT fsModifiers,
         UINT vk);

__declspec(dllimport)
BOOL
__stdcall
UnregisterHotKey(
           HWND hWnd,
         int id);





































__declspec(dllimport)
BOOL
__stdcall
ExitWindowsEx(
         UINT uFlags,
         DWORD dwReason);

__declspec(dllimport)
BOOL
__stdcall
SwapMouseButton(
         BOOL fSwap);

__declspec(dllimport)
DWORD
__stdcall
GetMessagePos(
    void);

__declspec(dllimport)
LONG
__stdcall
GetMessageTime(
    void);

__declspec(dllimport)
LPARAM
__stdcall
GetMessageExtraInfo(
    void);










__declspec(dllimport)
LPARAM
__stdcall
SetMessageExtraInfo(
         LPARAM lParam);


__declspec(dllimport)
LRESULT
__stdcall
SendMessageA(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageW(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);





    


























__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutA(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam,
         UINT fuFlags,
         UINT uTimeout,
           PDWORD_PTR lpdwResult);
__declspec(dllimport)
LRESULT
__stdcall
SendMessageTimeoutW(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam,
         UINT fuFlags,
         UINT uTimeout,
           PDWORD_PTR lpdwResult);






__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageA(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
SendNotifyMessageW(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);






__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackA(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam,
         SENDASYNCPROC lpResultCallBack,
         ULONG_PTR dwData);
__declspec(dllimport)
BOOL
__stdcall
SendMessageCallbackW(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam,
         SENDASYNCPROC lpResultCallBack,
         ULONG_PTR dwData);
















































































































typedef  PVOID           HDEVNOTIFY;
typedef  HDEVNOTIFY     *PHDEVNOTIFY;







__declspec(dllimport)
HDEVNOTIFY
__stdcall
RegisterDeviceNotificationA(
         HANDLE hRecipient,
         LPVOID NotificationFilter,
         DWORD Flags);
__declspec(dllimport)
HDEVNOTIFY
__stdcall
RegisterDeviceNotificationW(
         HANDLE hRecipient,
         LPVOID NotificationFilter,
         DWORD Flags);






__declspec(dllimport)
BOOL
__stdcall
UnregisterDeviceNotification(
         HDEVNOTIFY Handle);




__declspec(dllimport)
BOOL
__stdcall
PostMessageA(
           HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostMessageW(
           HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);






__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageA(
         DWORD idThread,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
BOOL
__stdcall
PostThreadMessageW(
         DWORD idThread,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);

























__declspec(dllimport)
BOOL
__stdcall
AttachThreadInput(
         DWORD idAttach,
         DWORD idAttachTo,
         BOOL fAttach);


__declspec(dllimport)
BOOL
__stdcall
ReplyMessage(
         LRESULT lResult);

__declspec(dllimport)
BOOL
__stdcall
WaitMessage(
    void);


__declspec(dllimport)
DWORD
__stdcall
WaitForInputIdle(
         HANDLE hProcess,
         DWORD dwMilliseconds);

__declspec(dllimport)

LRESULT
__stdcall




DefWindowProcA(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall




DefWindowProcW(
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);






__declspec(dllimport)
void
__stdcall
PostQuitMessage(
         int nExitCode);



__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcA(
         WNDPROC lpPrevWndFunc,
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
CallWindowProcW(
         WNDPROC lpPrevWndFunc,
         HWND hWnd,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);


































__declspec(dllimport)
BOOL
__stdcall
InSendMessage(
    void);


__declspec(dllimport)
DWORD
__stdcall
InSendMessageEx(
      LPVOID lpReserved);











__declspec(dllimport)
UINT
__stdcall
GetDoubleClickTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetDoubleClickTime(
         UINT);

__declspec(dllimport)
ATOM
__stdcall
RegisterClassA(
         const WNDCLASSA *lpWndClass);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassW(
         const WNDCLASSW *lpWndClass);






__declspec(dllimport)
BOOL
__stdcall
UnregisterClassA(
         LPCSTR lpClassName,
         HINSTANCE hInstance);
__declspec(dllimport)
BOOL
__stdcall
UnregisterClassW(
         LPCWSTR lpClassName,
         HINSTANCE hInstance);






__declspec(dllimport)
BOOL
__stdcall
GetClassInfoA(
           HINSTANCE hInstance,
         LPCSTR lpClassName,
         LPWNDCLASSA lpWndClass);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoW(
           HINSTANCE hInstance,
         LPCWSTR lpClassName,
         LPWNDCLASSW lpWndClass);







__declspec(dllimport)
ATOM
__stdcall
RegisterClassExA(
         const WNDCLASSEXA *);
__declspec(dllimport)
ATOM
__stdcall
RegisterClassExW(
         const WNDCLASSEXW *);






__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExA(
           HINSTANCE hInstance,
         LPCSTR lpszClass,
         LPWNDCLASSEXA lpwcx);
__declspec(dllimport)
BOOL
__stdcall
GetClassInfoExW(
           HINSTANCE hInstance,
         LPCWSTR lpszClass,
         LPWNDCLASSEXW lpwcx);



















__declspec(dllimport)
HWND
__stdcall
CreateWindowExA(
         DWORD dwExStyle,
           LPCSTR lpClassName,
           LPCSTR lpWindowName,
         DWORD dwStyle,
         int X,
         int Y,
         int nWidth,
         int nHeight,
           HWND hWndParent,
           HMENU hMenu,
           HINSTANCE hInstance,
           LPVOID lpParam);
__declspec(dllimport)
HWND
__stdcall
CreateWindowExW(
         DWORD dwExStyle,
           LPCWSTR lpClassName,
           LPCWSTR lpWindowName,
         DWORD dwStyle,
         int X,
         int Y,
         int nWidth,
         int nHeight,
           HWND hWndParent,
           HMENU hMenu,
           HINSTANCE hInstance,
           LPVOID lpParam);




















__declspec(dllimport)
BOOL
__stdcall
IsWindow(
           HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsMenu(
         HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
IsChild(
         HWND hWndParent,
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
DestroyWindow(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowWindow(
         HWND hWnd,
         int nCmdShow);


__declspec(dllimport)
BOOL
__stdcall
AnimateWindow(
         HWND hWnd,
         DWORD dwTime,
         DWORD dwFlags);

































































































__declspec(dllimport)
BOOL
__stdcall
ShowWindowAsync(
          HWND hWnd,
          int nCmdShow);


__declspec(dllimport)
BOOL
__stdcall
FlashWindow(
          HWND hWnd,
          BOOL bInvert);


typedef struct {
    UINT  cbSize;
    HWND  hwnd;
    DWORD dwFlags;
    UINT  uCount;
    DWORD dwTimeout;
} FLASHWINFO, *PFLASHWINFO;

__declspec(dllimport)
BOOL
__stdcall
FlashWindowEx(
         PFLASHWINFO pfwi);










__declspec(dllimport)
BOOL
__stdcall
ShowOwnedPopups(
          HWND hWnd,
          BOOL fShow);

__declspec(dllimport)
BOOL
__stdcall
OpenIcon(
          HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
CloseWindow(
          HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
MoveWindow(
         HWND hWnd,
         int X,
         int Y,
         int nWidth,
         int nHeight,
         BOOL bRepaint);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPos(
         HWND hWnd,
           HWND hWndInsertAfter,
         int X,
         int Y,
         int cx,
         int cy,
         UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
GetWindowPlacement(
         HWND hWnd,
         WINDOWPLACEMENT *lpwndpl);

__declspec(dllimport)
BOOL
__stdcall
SetWindowPlacement(
         HWND hWnd,
         const WINDOWPLACEMENT *lpwndpl);




__declspec(dllimport)
HDWP
__stdcall
BeginDeferWindowPos(
         int nNumWindows);

__declspec(dllimport)
HDWP
__stdcall
DeferWindowPos(
         HDWP hWinPosInfo,
         HWND hWnd,
           HWND hWndInsertAfter,
         int x,
         int y,
         int cx,
         int cy,
         UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
EndDeferWindowPos(
         HDWP hWinPosInfo);



__declspec(dllimport)
BOOL
__stdcall
IsWindowVisible(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsIconic(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
AnyPopup(
    void);

__declspec(dllimport)
BOOL
__stdcall
BringWindowToTop(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
IsZoomed(
         HWND hWnd);





























































#pragma warning(disable:4103)

#pragma pack(push,2)












typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    WORD cdit;
    short x;
    short y;
    short cx;
    short cy;
} DLGTEMPLATE;
typedef DLGTEMPLATE *LPDLGTEMPLATEA;
typedef DLGTEMPLATE *LPDLGTEMPLATEW;



typedef LPDLGTEMPLATEA LPDLGTEMPLATE;

typedef const DLGTEMPLATE *LPCDLGTEMPLATEA;
typedef const DLGTEMPLATE *LPCDLGTEMPLATEW;



typedef LPCDLGTEMPLATEA LPCDLGTEMPLATE;





typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    short x;
    short y;
    short cx;
    short cy;
    WORD id;
} DLGITEMTEMPLATE;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEW;



typedef PDLGITEMTEMPLATEA PDLGITEMTEMPLATE;

typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEA;
typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEW;



typedef LPDLGITEMTEMPLATEA LPDLGITEMTEMPLATE;






























#pragma warning(disable:4103)

#pragma pack(pop)









__declspec(dllimport)
HWND
__stdcall
CreateDialogParamA(
           HINSTANCE hInstance,
         LPCSTR lpTemplateName,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogParamW(
           HINSTANCE hInstance,
         LPCWSTR lpTemplateName,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);






__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamA(
           HINSTANCE hInstance,
         LPCDLGTEMPLATEA lpTemplate,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);
__declspec(dllimport)
HWND
__stdcall
CreateDialogIndirectParamW(
           HINSTANCE hInstance,
         LPCDLGTEMPLATEW lpTemplate,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);


























__declspec(dllimport)
INT_PTR
__stdcall
DialogBoxParamA(
           HINSTANCE hInstance,
         LPCSTR lpTemplateName,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);
__declspec(dllimport)
INT_PTR
__stdcall
DialogBoxParamW(
           HINSTANCE hInstance,
         LPCWSTR lpTemplateName,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);






__declspec(dllimport)
INT_PTR
__stdcall
DialogBoxIndirectParamA(
           HINSTANCE hInstance,
         LPCDLGTEMPLATEA hDialogTemplate,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);
__declspec(dllimport)
INT_PTR
__stdcall
DialogBoxIndirectParamW(
           HINSTANCE hInstance,
         LPCDLGTEMPLATEW hDialogTemplate,
           HWND hWndParent,
           DLGPROC lpDialogFunc,
         LPARAM dwInitParam);


























__declspec(dllimport)
BOOL
__stdcall
EndDialog(
         HWND hDlg,
         INT_PTR nResult);

__declspec(dllimport)
HWND
__stdcall
GetDlgItem(
           HWND hDlg,
         int nIDDlgItem);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemInt(
         HWND hDlg,
         int nIDDlgItem,
         UINT uValue,
         BOOL bSigned);

__declspec(dllimport)
UINT
__stdcall
GetDlgItemInt(
         HWND hDlg,
         int nIDDlgItem,
           BOOL *lpTranslated,
         BOOL bSigned);

__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextA(
         HWND hDlg,
         int nIDDlgItem,
         LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetDlgItemTextW(
         HWND hDlg,
         int nIDDlgItem,
         LPCWSTR lpString);






__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextA(
         HWND hDlg,
         int nIDDlgItem,
         LPSTR lpString,
         int cchMax);
__declspec(dllimport)
UINT
__stdcall
GetDlgItemTextW(
         HWND hDlg,
         int nIDDlgItem,
         LPWSTR lpString,
         int cchMax);






__declspec(dllimport)
BOOL
__stdcall
CheckDlgButton(
         HWND hDlg,
         int nIDButton,
         UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
CheckRadioButton(
         HWND hDlg,
         int nIDFirstButton,
         int nIDLastButton,
         int nIDCheckButton);

__declspec(dllimport)
UINT
__stdcall
IsDlgButtonChecked(
         HWND hDlg,
         int nIDButton);

__declspec(dllimport)
LRESULT
__stdcall
SendDlgItemMessageA(
         HWND hDlg,
         int nIDDlgItem,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
SendDlgItemMessageW(
         HWND hDlg,
         int nIDDlgItem,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);






__declspec(dllimport)
HWND
__stdcall
GetNextDlgGroupItem(
         HWND hDlg,
           HWND hCtl,
         BOOL bPrevious);

__declspec(dllimport)
HWND
__stdcall
GetNextDlgTabItem(
         HWND hDlg,
           HWND hCtl,
         BOOL bPrevious);

__declspec(dllimport)
int
__stdcall
GetDlgCtrlID(
         HWND hWnd);

__declspec(dllimport)
long
__stdcall
GetDialogBaseUnits(void);

__declspec(dllimport)

LRESULT
__stdcall




DefDlgProcA(
         HWND hDlg,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall




DefDlgProcW(
         HWND hDlg,
         UINT Msg,
         WPARAM wParam,
         LPARAM lParam);



















__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterA(
         LPMSG lpMsg,
         int nCode);
__declspec(dllimport)
BOOL
__stdcall
CallMsgFilterW(
         LPMSG lpMsg,
         int nCode);














__declspec(dllimport)
BOOL
__stdcall
OpenClipboard(
           HWND hWndNewOwner);

__declspec(dllimport)
BOOL
__stdcall
CloseClipboard(
    void);




__declspec(dllimport)
DWORD
__stdcall
GetClipboardSequenceNumber(
    void);



__declspec(dllimport)
HWND
__stdcall
GetClipboardOwner(
    void);

__declspec(dllimport)
HWND
__stdcall
SetClipboardViewer(
         HWND hWndNewViewer);

__declspec(dllimport)
HWND
__stdcall
GetClipboardViewer(
    void);

__declspec(dllimport)
BOOL
__stdcall
ChangeClipboardChain(
         HWND hWndRemove,
         HWND hWndNewNext);

__declspec(dllimport)
HANDLE
__stdcall
SetClipboardData(
         UINT uFormat,
           HANDLE hMem);

__declspec(dllimport)
HANDLE
__stdcall
GetClipboardData(
         UINT uFormat);

__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatA(
         LPCSTR lpszFormat);
__declspec(dllimport)
UINT
__stdcall
RegisterClipboardFormatW(
         LPCWSTR lpszFormat);






__declspec(dllimport)
int
__stdcall
CountClipboardFormats(
    void);

__declspec(dllimport)
UINT
__stdcall
EnumClipboardFormats(
         UINT format);

__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameA(
         UINT format,
         LPSTR lpszFormatName,
         int cchMaxCount);
__declspec(dllimport)
int
__stdcall
GetClipboardFormatNameW(
         UINT format,
         LPWSTR lpszFormatName,
         int cchMaxCount);






__declspec(dllimport)
BOOL
__stdcall
EmptyClipboard(
    void);

__declspec(dllimport)
BOOL
__stdcall
IsClipboardFormatAvailable(
         UINT format);

__declspec(dllimport)
int
__stdcall
GetPriorityClipboardFormat(
           UINT *paFormatPriorityList,
         int cFormats);

__declspec(dllimport)
HWND
__stdcall
GetOpenClipboardWindow(
    void);







__declspec(dllimport)
BOOL
__stdcall
CharToOemA(
         LPCSTR lpszSrc,
         LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
CharToOemW(
         LPCWSTR lpszSrc,
         LPSTR lpszDst);






__declspec(dllimport)
BOOL
__stdcall
OemToCharA(
         LPCSTR lpszSrc,
         LPSTR lpszDst);
__declspec(dllimport)
BOOL
__stdcall
OemToCharW(
         LPCSTR lpszSrc,
         LPWSTR lpszDst);






__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffA(
         LPCSTR lpszSrc,
         LPSTR lpszDst,
         DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
CharToOemBuffW(
         LPCWSTR lpszSrc,
         LPSTR lpszDst,
         DWORD cchDstLength);






__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffA(
         LPCSTR lpszSrc,
         LPSTR lpszDst,
         DWORD cchDstLength);
__declspec(dllimport)
BOOL
__stdcall
OemToCharBuffW(
         LPCSTR lpszSrc,
         LPWSTR lpszDst,
         DWORD cchDstLength);






__declspec(dllimport)
LPSTR
__stdcall
CharUpperA(
         LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharUpperW(
         LPWSTR lpsz);






__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffA(
           LPSTR lpsz,
         DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharUpperBuffW(
           LPWSTR lpsz,
         DWORD cchLength);






__declspec(dllimport)
LPSTR
__stdcall
CharLowerA(
         LPSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharLowerW(
         LPWSTR lpsz);






__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffA(
           LPSTR lpsz,
         DWORD cchLength);
__declspec(dllimport)
DWORD
__stdcall
CharLowerBuffW(
           LPWSTR lpsz,
         DWORD cchLength);






__declspec(dllimport)
LPSTR
__stdcall
CharNextA(
         LPCSTR lpsz);
__declspec(dllimport)
LPWSTR
__stdcall
CharNextW(
         LPCWSTR lpsz);






__declspec(dllimport)
LPSTR
__stdcall
CharPrevA(
         LPCSTR lpszStart,
         LPCSTR lpszCurrent);
__declspec(dllimport)
LPWSTR
__stdcall
CharPrevW(
         LPCWSTR lpszStart,
         LPCWSTR lpszCurrent);







__declspec(dllimport)
LPSTR
__stdcall
CharNextExA(
          WORD CodePage,
          LPCSTR lpCurrentChar,
          DWORD dwFlags);

__declspec(dllimport)
LPSTR
__stdcall
CharPrevExA(
          WORD CodePage,
          LPCSTR lpStart,
          LPCSTR lpCurrentChar,
          DWORD dwFlags);





















__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaA(
         CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaW(
         WCHAR ch);






__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericA(
         CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharAlphaNumericW(
         WCHAR ch);






__declspec(dllimport)
BOOL
__stdcall
IsCharUpperA(
         CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharUpperW(
         WCHAR ch);






__declspec(dllimport)
BOOL
__stdcall
IsCharLowerA(
         CHAR ch);
__declspec(dllimport)
BOOL
__stdcall
IsCharLowerW(
         WCHAR ch);








__declspec(dllimport)
HWND
__stdcall
SetFocus(
           HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetActiveWindow(
    void);

__declspec(dllimport)
HWND
__stdcall
GetFocus(
    void);

__declspec(dllimport)
UINT
__stdcall
GetKBCodePage(
    void);

__declspec(dllimport)
SHORT
__stdcall
GetKeyState(
         int nVirtKey);

__declspec(dllimport)
SHORT
__stdcall
GetAsyncKeyState(
         int vKey);

__declspec(dllimport)
BOOL
__stdcall
GetKeyboardState(
         PBYTE lpKeyState);

__declspec(dllimport)
BOOL
__stdcall
SetKeyboardState(
           LPBYTE lpKeyState);

__declspec(dllimport)
int
__stdcall
GetKeyNameTextA(
         LONG lParam,
         LPSTR lpString,
         int cchSize);
__declspec(dllimport)
int
__stdcall
GetKeyNameTextW(
         LONG lParam,
         LPWSTR lpString,
         int cchSize);






__declspec(dllimport)
int
__stdcall
GetKeyboardType(
         int nTypeFlag);

__declspec(dllimport)
int
__stdcall
ToAscii(
         UINT uVirtKey,
         UINT uScanCode,
             const BYTE *lpKeyState,
         LPWORD lpChar,
         UINT uFlags);


__declspec(dllimport)
int
__stdcall
ToAsciiEx(
         UINT uVirtKey,
         UINT uScanCode,
             const BYTE *lpKeyState,
         LPWORD lpChar,
         UINT uFlags,
           HKL dwhkl);


__declspec(dllimport)
int
__stdcall
ToUnicode(
         UINT wVirtKey,
         UINT wScanCode,
             const BYTE *lpKeyState,
         LPWSTR pwszBuff,
         int cchBuff,
         UINT wFlags);

__declspec(dllimport)
DWORD
__stdcall
OemKeyScan(
         WORD wOemChar);

__declspec(dllimport)
SHORT
__stdcall
VkKeyScanA(
         CHAR ch);
__declspec(dllimport)
SHORT
__stdcall
VkKeyScanW(
         WCHAR ch);







__declspec(dllimport)
SHORT
__stdcall
VkKeyScanExA(
         CHAR ch,
         HKL dwhkl);
__declspec(dllimport)
SHORT
__stdcall
VkKeyScanExW(
         WCHAR ch,
         HKL dwhkl);













__declspec(dllimport)
void
__stdcall
keybd_event(
         BYTE bVk,
         BYTE bScan,
         DWORD dwFlags,
         ULONG_PTR dwExtraInfo);
















__declspec(dllimport)
void
__stdcall
mouse_event(
         DWORD dwFlags,
         DWORD dx,
         DWORD dy,
         DWORD dwData,
         ULONG_PTR dwExtraInfo);
































































__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyA(
         UINT uCode,
         UINT uMapType);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyW(
         UINT uCode,
         UINT uMapType);







__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExA(
         UINT uCode,
         UINT uMapType,
           HKL dwhkl);
__declspec(dllimport)
UINT
__stdcall
MapVirtualKeyExW(
         UINT uCode,
         UINT uMapType,
           HKL dwhkl);







__declspec(dllimport)
BOOL
__stdcall
GetInputState(
    void);

__declspec(dllimport)
DWORD
__stdcall
GetQueueStatus(
         UINT flags);


__declspec(dllimport)
HWND
__stdcall
GetCapture(
    void);

__declspec(dllimport)
HWND
__stdcall
SetCapture(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ReleaseCapture(
    void);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjects(
         DWORD nCount,
             const HANDLE *pHandles,
         BOOL fWaitAll,
         DWORD dwMilliseconds,
         DWORD dwWakeMask);

__declspec(dllimport)
DWORD
__stdcall
MsgWaitForMultipleObjectsEx(
         DWORD nCount,
             const HANDLE *pHandles,
         DWORD dwMilliseconds,
         DWORD dwWakeMask,
         DWORD dwFlags);























































__declspec(dllimport)
UINT_PTR
__stdcall
SetTimer(
           HWND hWnd,
         UINT_PTR nIDEvent,
         UINT uElapse,
           TIMERPROC lpTimerFunc);

__declspec(dllimport)
BOOL
__stdcall
KillTimer(
           HWND hWnd,
         UINT_PTR uIDEvent);

__declspec(dllimport)
BOOL
__stdcall
IsWindowUnicode(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
EnableWindow(
         HWND hWnd,
         BOOL bEnable);

__declspec(dllimport)
BOOL
__stdcall
IsWindowEnabled(
         HWND hWnd);

__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsA(
           HINSTANCE hInstance,
         LPCSTR lpTableName);
__declspec(dllimport)
HACCEL
__stdcall
LoadAcceleratorsW(
           HINSTANCE hInstance,
         LPCWSTR lpTableName);






__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableA(
           LPACCEL paccel, 
         int cAccel);
__declspec(dllimport)
HACCEL
__stdcall
CreateAcceleratorTableW(
           LPACCEL paccel, 
         int cAccel);






__declspec(dllimport)
BOOL
__stdcall
DestroyAcceleratorTable(
         HACCEL hAccel);

__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableA(
         HACCEL hAccelSrc,
             LPACCEL lpAccelDst,
         int cAccelEntries);
__declspec(dllimport)
int
__stdcall
CopyAcceleratorTableW(
         HACCEL hAccelSrc,
             LPACCEL lpAccelDst,
         int cAccelEntries);








__declspec(dllimport)
int
__stdcall
TranslateAcceleratorA(
         HWND hWnd,
         HACCEL hAccTable,
         LPMSG lpMsg);
__declspec(dllimport)
int
__stdcall
TranslateAcceleratorW(
         HWND hWnd,
         HACCEL hAccTable,
         LPMSG lpMsg);






















































































































































__declspec(dllimport)
int
__stdcall
GetSystemMetrics(
         int nIndex);






__declspec(dllimport)
HMENU
__stdcall
LoadMenuA(
           HINSTANCE hInstance,
         LPCSTR lpMenuName);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuW(
           HINSTANCE hInstance,
         LPCWSTR lpMenuName);






__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectA(
         const MENUTEMPLATEA *lpMenuTemplate);
__declspec(dllimport)
HMENU
__stdcall
LoadMenuIndirectW(
         const MENUTEMPLATEW *lpMenuTemplate);






__declspec(dllimport)
HMENU
__stdcall
GetMenu(
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetMenu(
         HWND hWnd,
           HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
ChangeMenuA(
         HMENU hMenu,
         UINT cmd,
           LPCSTR lpszNewItem,
         UINT cmdInsert,
         UINT flags);
__declspec(dllimport)
BOOL
__stdcall
ChangeMenuW(
         HMENU hMenu,
         UINT cmd,
           LPCWSTR lpszNewItem,
         UINT cmdInsert,
         UINT flags);






__declspec(dllimport)
BOOL
__stdcall
HiliteMenuItem(
         HWND hWnd,
         HMENU hMenu,
         UINT uIDHiliteItem,
         UINT uHilite);

__declspec(dllimport)
int
__stdcall
GetMenuStringA(
         HMENU hMenu,
         UINT uIDItem,
           LPSTR lpString,
         int cchMax,
         UINT flags);
__declspec(dllimport)
int
__stdcall
GetMenuStringW(
         HMENU hMenu,
         UINT uIDItem,
           LPWSTR lpString,
         int cchMax,
         UINT flags);






__declspec(dllimport)
UINT
__stdcall
GetMenuState(
         HMENU hMenu,
         UINT uId,
         UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DrawMenuBar(
         HWND hWnd);







__declspec(dllimport)
HMENU
__stdcall
GetSystemMenu(
         HWND hWnd,
         BOOL bRevert);


__declspec(dllimport)
HMENU
__stdcall
CreateMenu(
    void);

__declspec(dllimport)
HMENU
__stdcall
CreatePopupMenu(
    void);

__declspec(dllimport)
BOOL
__stdcall
DestroyMenu(
         HMENU hMenu);

__declspec(dllimport)
DWORD
__stdcall
CheckMenuItem(
         HMENU hMenu,
         UINT uIDCheckItem,
         UINT uCheck);

__declspec(dllimport)
BOOL
__stdcall
EnableMenuItem(
         HMENU hMenu,
         UINT uIDEnableItem,
         UINT uEnable);

__declspec(dllimport)
HMENU
__stdcall
GetSubMenu(
         HMENU hMenu,
         int nPos);

__declspec(dllimport)
UINT
__stdcall
GetMenuItemID(
         HMENU hMenu,
         int nPos);

__declspec(dllimport)
int
__stdcall
GetMenuItemCount(
           HMENU hMenu);

__declspec(dllimport)
BOOL
__stdcall
InsertMenuA(
         HMENU hMenu,
         UINT uPosition,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCSTR lpNewItem);
__declspec(dllimport)
BOOL
__stdcall
InsertMenuW(
         HMENU hMenu,
         UINT uPosition,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCWSTR lpNewItem);






__declspec(dllimport)
BOOL
__stdcall
AppendMenuA(
         HMENU hMenu,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCSTR lpNewItem);
__declspec(dllimport)
BOOL
__stdcall
AppendMenuW(
         HMENU hMenu,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCWSTR lpNewItem);






__declspec(dllimport)
BOOL
__stdcall
ModifyMenuA(
         HMENU hMnu,
         UINT uPosition,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCSTR lpNewItem);
__declspec(dllimport)
BOOL
__stdcall
ModifyMenuW(
         HMENU hMnu,
         UINT uPosition,
         UINT uFlags,
         UINT_PTR uIDNewItem,
           LPCWSTR lpNewItem);






__declspec(dllimport)
BOOL
__stdcall RemoveMenu(
         HMENU hMenu,
         UINT uPosition,
         UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
DeleteMenu(
         HMENU hMenu,
         UINT uPosition,
         UINT uFlags);

__declspec(dllimport)
BOOL
__stdcall
SetMenuItemBitmaps(
         HMENU hMenu,
         UINT uPosition,
         UINT uFlags,
           HBITMAP hBitmapUnchecked,
           HBITMAP hBitmapChecked);

__declspec(dllimport)
LONG
__stdcall
GetMenuCheckMarkDimensions(
    void);

__declspec(dllimport)
BOOL
__stdcall
TrackPopupMenu(
         HMENU hMenu,
         UINT uFlags,
         int x,
         int y,
         int nReserved,
         HWND hWnd,
           const RECT *prcRect);








typedef struct tagTPMPARAMS
{
    UINT    cbSize;     
    RECT    rcExclude;  
}   TPMPARAMS;
typedef TPMPARAMS  *LPTPMPARAMS;

__declspec(dllimport)
BOOL
__stdcall
TrackPopupMenuEx(
         HMENU,
         UINT,
         int,
         int,
         HWND,
           LPTPMPARAMS);


















typedef struct tagMENUINFO
{
    DWORD   cbSize;
    DWORD   fMask;
    DWORD   dwStyle;
    UINT    cyMax;
    HBRUSH  hbrBack;
    DWORD   dwContextHelpID;
    ULONG_PTR dwMenuData;
}   MENUINFO,  *LPMENUINFO;
typedef MENUINFO const  *LPCMENUINFO;

__declspec(dllimport)
BOOL
__stdcall
GetMenuInfo(
         HMENU,
         LPMENUINFO);

__declspec(dllimport)
BOOL
__stdcall
SetMenuInfo(
         HMENU,
         LPCMENUINFO);

__declspec(dllimport)
BOOL
__stdcall
EndMenu(
        void);







typedef struct tagMENUGETOBJECTINFO
{
    DWORD dwFlags;
    UINT uPos;
    HMENU hmenu;
    PVOID riid;
    PVOID pvObj;
} MENUGETOBJECTINFO, * PMENUGETOBJECTINFO;










































typedef struct tagMENUITEMINFOA
{
    UINT     cbSize;
    UINT     fMask;
    UINT     fType;         
    UINT     fState;        
    UINT     wID;           
    HMENU    hSubMenu;      
    HBITMAP  hbmpChecked;   
    HBITMAP  hbmpUnchecked; 
    ULONG_PTR dwItemData;   
    LPSTR    dwTypeData;    
    UINT     cch;           

    HBITMAP  hbmpItem;      

}   MENUITEMINFOA,  *LPMENUITEMINFOA;
typedef struct tagMENUITEMINFOW
{
    UINT     cbSize;
    UINT     fMask;
    UINT     fType;         
    UINT     fState;        
    UINT     wID;           
    HMENU    hSubMenu;      
    HBITMAP  hbmpChecked;   
    HBITMAP  hbmpUnchecked; 
    ULONG_PTR dwItemData;   
    LPWSTR   dwTypeData;    
    UINT     cch;           

    HBITMAP  hbmpItem;      

}   MENUITEMINFOW,  *LPMENUITEMINFOW;




typedef MENUITEMINFOA MENUITEMINFO;
typedef LPMENUITEMINFOA LPMENUITEMINFO;

typedef MENUITEMINFOA const  *LPCMENUITEMINFOA;
typedef MENUITEMINFOW const  *LPCMENUITEMINFOW;



typedef LPCMENUITEMINFOA LPCMENUITEMINFO;



__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemA(
         HMENU hmenu,
         UINT item,
         BOOL fByPosition,
         LPCMENUITEMINFOA lpmi);
__declspec(dllimport)
BOOL
__stdcall
InsertMenuItemW(
         HMENU hmenu,
         UINT item,
         BOOL fByPosition,
         LPCMENUITEMINFOW lpmi);






__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoA(
         HMENU hmenu,
         UINT item,
         BOOL fByPosition,
         LPMENUITEMINFOA lpmii);
__declspec(dllimport)
BOOL
__stdcall
GetMenuItemInfoW(
         HMENU hmenu,
         UINT item,
         BOOL fByPosition,
         LPMENUITEMINFOW lpmii);






__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoA(
         HMENU hmenu,
         UINT item,
         BOOL fByPositon,
         LPCMENUITEMINFOA lpmii);
__declspec(dllimport)
BOOL
__stdcall
SetMenuItemInfoW(
         HMENU hmenu,
         UINT item,
         BOOL fByPositon,
         LPCMENUITEMINFOW lpmii);










__declspec(dllimport)
UINT
__stdcall
GetMenuDefaultItem(
         HMENU hMenu,
         UINT fByPos,
         UINT gmdiFlags);

__declspec(dllimport)
BOOL
__stdcall
SetMenuDefaultItem(
         HMENU hMenu,
         UINT uItem,
         UINT fByPos);

__declspec(dllimport)
BOOL
__stdcall
GetMenuItemRect(
           HWND hWnd,
         HMENU hMenu,
         UINT uItem,
         LPRECT lprcItem);

__declspec(dllimport)
int
__stdcall
MenuItemFromPoint(
           HWND hWnd,
         HMENU hMenu,
         POINT ptScreen);











































typedef struct tagDROPSTRUCT
{
    HWND    hwndSource;
    HWND    hwndSink;
    DWORD   wFmt;
    ULONG_PTR dwData;
    POINT   ptDrop;
    DWORD   dwControlData;
} DROPSTRUCT, *PDROPSTRUCT, *LPDROPSTRUCT;











__declspec(dllimport)
DWORD
__stdcall
DragObject(
         HWND hwndParent,
         HWND hwndFrom,
         UINT fmt,
         ULONG_PTR data,
           HCURSOR hcur);

__declspec(dllimport)
BOOL
__stdcall
DragDetect(
         HWND hwnd,
         POINT pt);


__declspec(dllimport)
BOOL
__stdcall
DrawIcon(
         HDC hDC,
         int X,
         int Y,
         HICON hIcon);





































typedef struct tagDRAWTEXTPARAMS
{
    UINT    cbSize;
    int     iTabLength;
    int     iLeftMargin;
    int     iRightMargin;
    UINT    uiLengthDrawn;
} DRAWTEXTPARAMS,  *LPDRAWTEXTPARAMS;



__declspec(dllimport)
int
__stdcall
DrawTextA(
         HDC hdc,
           LPCSTR lpchText,
         int cchText,
         LPRECT lprc,
         UINT format);
__declspec(dllimport)
int
__stdcall
DrawTextW(
         HDC hdc,
           LPCWSTR lpchText,
         int cchText,
         LPRECT lprc,
         UINT format);





    




























__declspec(dllimport)
int
__stdcall
DrawTextExA(
         HDC hdc,
           LPSTR lpchText,
         int cchText,
         LPRECT lprc,
         UINT format,
           LPDRAWTEXTPARAMS lpdtp);
__declspec(dllimport)
int
__stdcall
DrawTextExW(
         HDC hdc,
           LPWSTR lpchText,
         int cchText,
         LPRECT lprc,
         UINT format,
           LPDRAWTEXTPARAMS lpdtp);









__declspec(dllimport)
BOOL
__stdcall
GrayStringA(
         HDC hDC,
           HBRUSH hBrush,
           GRAYSTRINGPROC lpOutputFunc,
         LPARAM lpData,
         int nCount,
         int X,
         int Y,
         int nWidth,
         int nHeight);
__declspec(dllimport)
BOOL
__stdcall
GrayStringW(
         HDC hDC,
           HBRUSH hBrush,
           GRAYSTRINGPROC lpOutputFunc,
         LPARAM lpData,
         int nCount,
         int X,
         int Y,
         int nWidth,
         int nHeight);


























__declspec(dllimport)
BOOL
__stdcall
DrawStateA(
         HDC hdc,
           HBRUSH hbrFore,
           DRAWSTATEPROC qfnCallBack,
         LPARAM lData,
         WPARAM wData,
         int x,
         int y,
         int cx,
         int cy,
         UINT uFlags);
__declspec(dllimport)
BOOL
__stdcall
DrawStateW(
         HDC hdc,
           HBRUSH hbrFore,
           DRAWSTATEPROC qfnCallBack,
         LPARAM lData,
         WPARAM wData,
         int x,
         int y,
         int cx,
         int cy,
         UINT uFlags);







__declspec(dllimport)
LONG
__stdcall
TabbedTextOutA(
         HDC hdc,
         int x,
         int y,
           LPCSTR lpString,
         int chCount,
         int nTabPositions,
             const INT *lpnTabStopPositions,
         int nTabOrigin);
__declspec(dllimport)
LONG
__stdcall
TabbedTextOutW(
         HDC hdc,
         int x,
         int y,
           LPCWSTR lpString,
         int chCount,
         int nTabPositions,
             const INT *lpnTabStopPositions,
         int nTabOrigin);






__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentA(
         HDC hdc,
           LPCSTR lpString,
         int chCount,
         int nTabPositions,
             const INT *lpnTabStopPositions);
__declspec(dllimport)
DWORD
__stdcall
GetTabbedTextExtentW(
         HDC hdc,
           LPCWSTR lpString,
         int chCount,
         int nTabPositions,
             const INT *lpnTabStopPositions);






__declspec(dllimport)
BOOL
__stdcall
UpdateWindow(
         HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetActiveWindow(
         HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
GetForegroundWindow(
    void);


__declspec(dllimport)
BOOL
__stdcall
PaintDesktop(
         HDC hdc);

__declspec(dllimport)
void
__stdcall
SwitchToThisWindow(
         HWND hwnd,
         BOOL fUnknown);


__declspec(dllimport)
BOOL
__stdcall
SetForegroundWindow(
         HWND hWnd);





















__declspec(dllimport)
HWND
__stdcall
WindowFromDC(
         HDC hDC);

__declspec(dllimport)
HDC
__stdcall
GetDC(
           HWND hWnd);

__declspec(dllimport)
HDC
__stdcall
GetDCEx(
           HWND hWnd,
           HRGN hrgnClip,
         DWORD flags);


















__declspec(dllimport)
HDC
__stdcall
GetWindowDC(
           HWND hWnd);

__declspec(dllimport)
int
__stdcall
ReleaseDC(
           HWND hWnd,
         HDC hDC);

__declspec(dllimport)
HDC
__stdcall
BeginPaint(
         HWND hWnd,
         LPPAINTSTRUCT lpPaint);

__declspec(dllimport)
BOOL
__stdcall
EndPaint(
         HWND hWnd,
         const PAINTSTRUCT *lpPaint);

__declspec(dllimport)
BOOL
__stdcall
GetUpdateRect(
         HWND hWnd,
           LPRECT lpRect,
         BOOL bErase);

__declspec(dllimport)
int
__stdcall
GetUpdateRgn(
         HWND hWnd,
         HRGN hRgn,
         BOOL bErase);

__declspec(dllimport)
int
__stdcall
SetWindowRgn(
         HWND hWnd,
           HRGN hRgn,
         BOOL bRedraw);


__declspec(dllimport)
int
__stdcall
GetWindowRgn(
         HWND hWnd,
         HRGN hRgn);












__declspec(dllimport)
int
__stdcall
ExcludeUpdateRgn(
         HDC hDC,
         HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRect(
           HWND hWnd,
           const RECT *lpRect,
         BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRect(
           HWND hWnd,
           const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
InvalidateRgn(
         HWND hWnd,
           HRGN hRgn,
         BOOL bErase);

__declspec(dllimport)
BOOL
__stdcall
ValidateRgn(
         HWND hWnd,
           HRGN hRgn);


__declspec(dllimport)
BOOL
__stdcall
RedrawWindow(
           HWND hWnd,
           const RECT *lprcUpdate,
           HRGN hrgnUpdate,
         UINT flags);


























__declspec(dllimport)
BOOL
__stdcall
LockWindowUpdate(
           HWND hWndLock);

__declspec(dllimport)
BOOL
__stdcall
ScrollWindow(
         HWND hWnd,
         int XAmount,
         int YAmount,
           const RECT *lpRect,
           const RECT *lpClipRect);

__declspec(dllimport)
BOOL
__stdcall
ScrollDC(
         HDC hDC,
         int dx,
         int dy,
           const RECT *lprcScroll,
           const RECT *lprcClip,
           HRGN hrgnUpdate,
           LPRECT lprcUpdate);

__declspec(dllimport)
int
__stdcall
ScrollWindowEx(
         HWND hWnd,
         int dx,
         int dy,
           const RECT *prcScroll,
           const RECT *prcClip,
           HRGN hrgnUpdate,
           LPRECT prcUpdate,
         UINT flags);










__declspec(dllimport)
int
__stdcall
SetScrollPos(
         HWND hWnd,
         int nBar,
         int nPos,
         BOOL bRedraw);

__declspec(dllimport)
int
__stdcall
GetScrollPos(
         HWND hWnd,
         int nBar);

__declspec(dllimport)
BOOL
__stdcall
SetScrollRange(
         HWND hWnd,
         int nBar,
         int nMinPos,
         int nMaxPos,
         BOOL bRedraw);

__declspec(dllimport)
BOOL
__stdcall
GetScrollRange(
         HWND hWnd,
         int nBar,
         LPINT lpMinPos,
         LPINT lpMaxPos);

__declspec(dllimport)
BOOL
__stdcall
ShowScrollBar(
         HWND hWnd,
         int wBar,
         BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
EnableScrollBar(
         HWND hWnd,
         UINT wSBflags,
         UINT wArrows);




















__declspec(dllimport)
BOOL
__stdcall
SetPropA(
         HWND hWnd,
         LPCSTR lpString,
           HANDLE hData);
__declspec(dllimport)
BOOL
__stdcall
SetPropW(
         HWND hWnd,
         LPCWSTR lpString,
           HANDLE hData);






__declspec(dllimport)
HANDLE
__stdcall
GetPropA(
         HWND hWnd,
         LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
GetPropW(
         HWND hWnd,
         LPCWSTR lpString);






__declspec(dllimport)
HANDLE
__stdcall
RemovePropA(
         HWND hWnd,
         LPCSTR lpString);
__declspec(dllimport)
HANDLE
__stdcall
RemovePropW(
         HWND hWnd,
         LPCWSTR lpString);






__declspec(dllimport)
int
__stdcall
EnumPropsExA(
         HWND hWnd,
         PROPENUMPROCEXA lpEnumFunc,
         LPARAM lParam);
__declspec(dllimport)
int
__stdcall
EnumPropsExW(
         HWND hWnd,
         PROPENUMPROCEXW lpEnumFunc,
         LPARAM lParam);






__declspec(dllimport)
int
__stdcall
EnumPropsA(
         HWND hWnd,
         PROPENUMPROCA lpEnumFunc);
__declspec(dllimport)
int
__stdcall
EnumPropsW(
         HWND hWnd,
         PROPENUMPROCW lpEnumFunc);






__declspec(dllimport)
BOOL
__stdcall
SetWindowTextA(
         HWND hWnd,
           LPCSTR lpString);
__declspec(dllimport)
BOOL
__stdcall
SetWindowTextW(
         HWND hWnd,
           LPCWSTR lpString);






__declspec(dllimport)
int
__stdcall
GetWindowTextA(
         HWND hWnd,
         LPSTR lpString,
         int nMaxCount);
__declspec(dllimport)
int
__stdcall
GetWindowTextW(
         HWND hWnd,
         LPWSTR lpString,
         int nMaxCount);






__declspec(dllimport)
int
__stdcall
GetWindowTextLengthA(
         HWND hWnd);
__declspec(dllimport)
int
__stdcall
GetWindowTextLengthW(
         HWND hWnd);






__declspec(dllimport)
BOOL
__stdcall
GetClientRect(
         HWND hWnd,
         LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetWindowRect(
         HWND hWnd,
         LPRECT lpRect);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRect(
         LPRECT lpRect,
         DWORD dwStyle,
         BOOL bMenu);

__declspec(dllimport)
BOOL
__stdcall
AdjustWindowRectEx(
         LPRECT lpRect,
         DWORD dwStyle,
         BOOL bMenu,
         DWORD dwExStyle);





typedef struct tagHELPINFO      
{
    UINT    cbSize;             
    int     iContextType;       
    int     iCtrlId;            
    HANDLE  hItemHandle;        
    DWORD_PTR dwContextId;      
    POINT   MousePos;           
}  HELPINFO,  *LPHELPINFO;

__declspec(dllimport)
BOOL
__stdcall
SetWindowContextHelpId(
         HWND,
         DWORD);

__declspec(dllimport)
DWORD
__stdcall
GetWindowContextHelpId(
         HWND);

__declspec(dllimport)
BOOL
__stdcall
SetMenuContextHelpId(
         HMENU,
         DWORD);

__declspec(dllimport)
DWORD
__stdcall
GetMenuContextHelpId(
         HMENU);











































































__declspec(dllimport)
int
__stdcall
MessageBoxA(
           HWND hWnd,
           LPCSTR lpText,
           LPCSTR lpCaption,
         UINT uType);
__declspec(dllimport)
int
__stdcall
MessageBoxW(
           HWND hWnd,
           LPCWSTR lpText,
           LPCWSTR lpCaption,
         UINT uType);





    
























__declspec(dllimport)
int
__stdcall
MessageBoxExA(
           HWND hWnd,
           LPCSTR lpText,
           LPCSTR lpCaption,
         UINT uType,
         WORD wLanguageId);
__declspec(dllimport)
int
__stdcall
MessageBoxExW(
           HWND hWnd,
           LPCWSTR lpText,
           LPCWSTR lpCaption,
         UINT uType,
         WORD wLanguageId);








typedef void (__stdcall *MSGBOXCALLBACK)(LPHELPINFO lpHelpInfo);

typedef struct tagMSGBOXPARAMSA
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCSTR      lpszText;
    LPCSTR      lpszCaption;
    DWORD       dwStyle;
    LPCSTR      lpszIcon;
    DWORD_PTR   dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD       dwLanguageId;
} MSGBOXPARAMSA, *PMSGBOXPARAMSA, *LPMSGBOXPARAMSA;
typedef struct tagMSGBOXPARAMSW
{
    UINT        cbSize;
    HWND        hwndOwner;
    HINSTANCE   hInstance;
    LPCWSTR     lpszText;
    LPCWSTR     lpszCaption;
    DWORD       dwStyle;
    LPCWSTR     lpszIcon;
    DWORD_PTR   dwContextHelpId;
    MSGBOXCALLBACK      lpfnMsgBoxCallback;
    DWORD       dwLanguageId;
} MSGBOXPARAMSW, *PMSGBOXPARAMSW, *LPMSGBOXPARAMSW;





typedef MSGBOXPARAMSA MSGBOXPARAMS;
typedef PMSGBOXPARAMSA PMSGBOXPARAMS;
typedef LPMSGBOXPARAMSA LPMSGBOXPARAMS;


__declspec(dllimport)
int
__stdcall
MessageBoxIndirectA(
         const MSGBOXPARAMSA * lpmbp);
__declspec(dllimport)
int
__stdcall
MessageBoxIndirectW(
         const MSGBOXPARAMSW * lpmbp);








__declspec(dllimport)
BOOL
__stdcall
MessageBeep(
         UINT uType);



__declspec(dllimport)
int
__stdcall
ShowCursor(
         BOOL bShow);

__declspec(dllimport)
BOOL
__stdcall
SetCursorPos(
         int X,
         int Y);

__declspec(dllimport)
HCURSOR
__stdcall
SetCursor(
           HCURSOR hCursor);

__declspec(dllimport)
BOOL
__stdcall
GetCursorPos(
         LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClipCursor(
           const RECT *lpRect);

__declspec(dllimport)
BOOL
__stdcall
GetClipCursor(
         LPRECT lpRect);

__declspec(dllimport)
HCURSOR
__stdcall
GetCursor(
    void);

__declspec(dllimport)
BOOL
__stdcall
CreateCaret(
         HWND hWnd,
           HBITMAP hBitmap,
         int nWidth,
         int nHeight);

__declspec(dllimport)
UINT
__stdcall
GetCaretBlinkTime(
    void);

__declspec(dllimport)
BOOL
__stdcall
SetCaretBlinkTime(
         UINT uMSeconds);

__declspec(dllimport)
BOOL
__stdcall
DestroyCaret(
    void);

__declspec(dllimport)
BOOL
__stdcall
HideCaret(
           HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
ShowCaret(
           HWND hWnd);

__declspec(dllimport)
BOOL
__stdcall
SetCaretPos(
         int X,
         int Y);

__declspec(dllimport)
BOOL
__stdcall
GetCaretPos(
         LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ClientToScreen(
         HWND hWnd,
         LPPOINT lpPoint);

__declspec(dllimport)
BOOL
__stdcall
ScreenToClient(
         HWND hWnd,
         LPPOINT lpPoint);

__declspec(dllimport)
int
__stdcall
MapWindowPoints(
           HWND hWndFrom,
           HWND hWndTo,
           LPPOINT lpPoints,
         UINT cPoints);

__declspec(dllimport)
HWND
__stdcall
WindowFromPoint(
         POINT Point);

__declspec(dllimport)
HWND
__stdcall
ChildWindowFromPoint(
         HWND hWndParent,
         POINT Point);







__declspec(dllimport)
HWND
__stdcall
ChildWindowFromPointEx(
         HWND hwnd,
         POINT pt,
         UINT flags);

































































__declspec(dllimport)
DWORD
__stdcall
GetSysColor(
         int nIndex);


__declspec(dllimport)
HBRUSH
__stdcall
GetSysColorBrush(
         int nIndex);




__declspec(dllimport)
BOOL
__stdcall
SetSysColors(
         int cElements,
           const INT * lpaElements,
           const COLORREF * lpaRgbValues);



__declspec(dllimport)
BOOL
__stdcall
DrawFocusRect(
         HDC hDC,
         const RECT * lprc);

__declspec(dllimport)
int
__stdcall
FillRect(
         HDC hDC,
         const RECT *lprc,
         HBRUSH hbr);

__declspec(dllimport)
int
__stdcall
FrameRect(
         HDC hDC,
         const RECT *lprc,
         HBRUSH hbr);

__declspec(dllimport)
BOOL
__stdcall
InvertRect(
         HDC hDC,
         const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
SetRect(
         LPRECT lprc,
         int xLeft,
         int yTop,
         int xRight,
         int yBottom);

__declspec(dllimport)
BOOL
__stdcall
SetRectEmpty(
         LPRECT lprc);

__declspec(dllimport)
BOOL
__stdcall
CopyRect(
         LPRECT lprcDst,
         const RECT *lprcSrc);

__declspec(dllimport)
BOOL
__stdcall
InflateRect(
         LPRECT lprc,
         int dx,
         int dy);

__declspec(dllimport)
BOOL
__stdcall
IntersectRect(
         LPRECT lprcDst,
         const RECT *lprcSrc1,
         const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
UnionRect(
         LPRECT lprcDst,
         const RECT *lprcSrc1,
         const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
SubtractRect(
         LPRECT lprcDst,
         const RECT *lprcSrc1,
         const RECT *lprcSrc2);

__declspec(dllimport)
BOOL
__stdcall
OffsetRect(
         LPRECT lprc,
         int dx,
         int dy);

__declspec(dllimport)
BOOL
__stdcall
IsRectEmpty(
         const RECT *lprc);

__declspec(dllimport)
BOOL
__stdcall
EqualRect(
         const RECT *lprc1,
         const RECT *lprc2);

__declspec(dllimport)
BOOL
__stdcall
PtInRect(
         const RECT *lprc,
         POINT pt);



__declspec(dllimport)
WORD
__stdcall
GetWindowWord(
         HWND hWnd,
         int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetWindowWord(
         HWND hWnd,
         int nIndex,
         WORD wNewWord);

__declspec(dllimport)
LONG
__stdcall
GetWindowLongA(
         HWND hWnd,
         int nIndex);
__declspec(dllimport)
LONG
__stdcall
GetWindowLongW(
         HWND hWnd,
         int nIndex);






__declspec(dllimport)
LONG
__stdcall
SetWindowLongA(
         HWND hWnd,
         int nIndex,
         LONG dwNewLong);
__declspec(dllimport)
LONG
__stdcall
SetWindowLongW(
         HWND hWnd,
         int nIndex,
         LONG dwNewLong);


































































__declspec(dllimport)
WORD
__stdcall
GetClassWord(
         HWND hWnd,
         int nIndex);

__declspec(dllimport)
WORD
__stdcall
SetClassWord(
         HWND hWnd,
         int nIndex,
         WORD wNewWord);

__declspec(dllimport)
DWORD
__stdcall
GetClassLongA(
         HWND hWnd,
         int nIndex);
__declspec(dllimport)
DWORD
__stdcall
GetClassLongW(
         HWND hWnd,
         int nIndex);






__declspec(dllimport)
DWORD
__stdcall
SetClassLongA(
         HWND hWnd,
         int nIndex,
         LONG dwNewLong);
__declspec(dllimport)
DWORD
__stdcall
SetClassLongW(
         HWND hWnd,
         int nIndex,
         LONG dwNewLong);





































































__declspec(dllimport)
BOOL
__stdcall
GetProcessDefaultLayout(
         DWORD *pdwDefaultLayout);

__declspec(dllimport)
BOOL
__stdcall
SetProcessDefaultLayout(
         DWORD dwDefaultLayout);


__declspec(dllimport)
HWND
__stdcall
GetDesktopWindow(
    void);


__declspec(dllimport)
HWND
__stdcall
GetParent(
         HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
SetParent(
         HWND hWndChild,
           HWND hWndNewParent);

__declspec(dllimport)
BOOL
__stdcall
EnumChildWindows(
           HWND hWndParent,
         WNDENUMPROC lpEnumFunc,
         LPARAM lParam);

__declspec(dllimport)
HWND
__stdcall
FindWindowA(
           LPCSTR lpClassName,
           LPCSTR lpWindowName);
__declspec(dllimport)
HWND
__stdcall
FindWindowW(
           LPCWSTR lpClassName,
           LPCWSTR lpWindowName);







__declspec(dllimport)
HWND
__stdcall
FindWindowExA(
           HWND hWndParent,
           HWND hWndChildAfter,
           LPCSTR lpszClass,
           LPCSTR lpszWindow);
__declspec(dllimport)
HWND
__stdcall
FindWindowExW(
           HWND hWndParent,
           HWND hWndChildAfter,
           LPCWSTR lpszClass,
           LPCWSTR lpszWindow);






__declspec(dllimport)
HWND
__stdcall
GetShellWindow(
    void);




__declspec(dllimport)
BOOL
__stdcall
RegisterShellHookWindow(
         HWND hwnd);

__declspec(dllimport)
BOOL
__stdcall
DeregisterShellHookWindow(
         HWND hwnd);

__declspec(dllimport)
BOOL
__stdcall
EnumWindows(
         WNDENUMPROC lpEnumFunc,
         LPARAM lParam);

__declspec(dllimport)
BOOL
__stdcall
EnumThreadWindows(
         DWORD dwThreadId,
         WNDENUMPROC lpfn,
         LPARAM lParam);



__declspec(dllimport)
int
__stdcall
GetClassNameA(
         HWND hWnd,
           LPSTR lpClassName,
         int nMaxCount
    );
__declspec(dllimport)
int
__stdcall
GetClassNameW(
         HWND hWnd,
           LPWSTR lpClassName,
         int nMaxCount
    );





    
























__declspec(dllimport)
HWND
__stdcall
GetTopWindow(
           HWND hWnd);





__declspec(dllimport)
DWORD
__stdcall
GetWindowThreadProcessId(
         HWND hWnd,
           LPDWORD lpdwProcessId);













__declspec(dllimport)
HWND
__stdcall
GetLastActivePopup(
         HWND hWnd);

















__declspec(dllimport)
HWND
__stdcall
GetWindow(
         HWND hWnd,
         UINT uCmd);






__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookA(
         int nFilterType,
         HOOKPROC pfnFilterProc);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookW(
         int nFilterType,
         HOOKPROC pfnFilterProc);




























__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHook(
         int nCode,
         HOOKPROC pfnFilterProc);

__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExA(
         int idHook,
         HOOKPROC lpfn,
           HINSTANCE hmod,
         DWORD dwThreadId);
__declspec(dllimport)
HHOOK
__stdcall
SetWindowsHookExW(
         int idHook,
         HOOKPROC lpfn,
           HINSTANCE hmod,
         DWORD dwThreadId);






__declspec(dllimport)
BOOL
__stdcall
UnhookWindowsHookEx(
         HHOOK hhk);

__declspec(dllimport)
LRESULT
__stdcall
CallNextHookEx(
           HHOOK hhk,
         int nCode,
         WPARAM wParam,
         LPARAM lParam);


























































































__declspec(dllimport)
BOOL
__stdcall
CheckMenuRadioItem(
         HMENU hmenu,
         UINT first,
         UINT last,
         UINT check,
         UINT flags);





typedef struct {
    WORD versionNumber;
    WORD offset;
} MENUITEMTEMPLATEHEADER, *PMENUITEMTEMPLATEHEADER;

typedef struct {        
    WORD mtOption;
    WORD mtID;
    WCHAR mtString[1];
} MENUITEMTEMPLATE, *PMENUITEMTEMPLATE;












































__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapA(
           HINSTANCE hInstance,
         LPCSTR lpBitmapName);
__declspec(dllimport)
HBITMAP
__stdcall
LoadBitmapW(
           HINSTANCE hInstance,
         LPCWSTR lpBitmapName);






__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorA(
           HINSTANCE hInstance,
         LPCSTR lpCursorName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorW(
           HINSTANCE hInstance,
         LPCWSTR lpCursorName);






__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileA(
         LPCSTR lpFileName);
__declspec(dllimport)
HCURSOR
__stdcall
LoadCursorFromFileW(
         LPCWSTR lpFileName);






__declspec(dllimport)
HCURSOR
__stdcall
CreateCursor(
           HINSTANCE hInst,
         int xHotSpot,
         int yHotSpot,
         int nWidth,
         int nHeight,
         const void *pvANDPlane,
         const void *pvXORPlane);

__declspec(dllimport)
BOOL
__stdcall
DestroyCursor(
         HCURSOR hCursor);



































__declspec(dllimport)
BOOL
__stdcall
SetSystemCursor(
         HCURSOR hcur,
         DWORD id);

typedef struct _ICONINFO {
    BOOL    fIcon;
    DWORD   xHotspot;
    DWORD   yHotspot;
    HBITMAP hbmMask;
    HBITMAP hbmColor;
} ICONINFO;
typedef ICONINFO *PICONINFO;

__declspec(dllimport)
HICON
__stdcall
LoadIconA(
           HINSTANCE hInstance,
         LPCSTR lpIconName);
__declspec(dllimport)
HICON
__stdcall
LoadIconW(
           HINSTANCE hInstance,
         LPCWSTR lpIconName);







__declspec(dllimport)
UINT
__stdcall
PrivateExtractIconsA(
         LPCSTR szFileName,
         int nIconIndex,
         int cxIcon,
         int cyIcon,
             HICON *phicon,
             UINT *piconid,
         UINT nIcons,
         UINT flags);
__declspec(dllimport)
UINT
__stdcall
PrivateExtractIconsW(
         LPCWSTR szFileName,
         int nIconIndex,
         int cxIcon,
         int cyIcon,
             HICON *phicon,
             UINT *piconid,
         UINT nIcons,
         UINT flags);






__declspec(dllimport)
HICON
__stdcall
CreateIcon(
           HINSTANCE hInstance,
         int nWidth,
         int nHeight,
         BYTE cPlanes,
         BYTE cBitsPixel,
         const BYTE *lpbANDbits,
         const BYTE *lpbXORbits);

__declspec(dllimport)
BOOL
__stdcall
DestroyIcon(
         HICON hIcon);

__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectory(
         PBYTE presbits,
         BOOL fIcon);


__declspec(dllimport)
int
__stdcall
LookupIconIdFromDirectoryEx(
         PBYTE presbits,
         BOOL fIcon,
         int cxDesired,
         int cyDesired,
         UINT Flags);


__declspec(dllimport)
HICON
__stdcall
CreateIconFromResource(
         PBYTE presbits,
         DWORD dwResSize,
         BOOL fIcon,
         DWORD dwVer);


__declspec(dllimport)
HICON
__stdcall
CreateIconFromResourceEx(
         PBYTE presbits,
         DWORD dwResSize,
         BOOL fIcon,
         DWORD dwVer,
         int cxDesired,
         int cyDesired,
         UINT Flags);


typedef struct tagCURSORSHAPE
{
    int     xHotSpot;
    int     yHotSpot;
    int     cx;
    int     cy;
    int     cbWidth;
    BYTE    Planes;
    BYTE    BitsPixel;
} CURSORSHAPE,  *LPCURSORSHAPE;






















__declspec(dllimport)
HANDLE
__stdcall
LoadImageA(
           HINSTANCE hInst,
         LPCSTR name,
         UINT type,
         int cx,
         int cy,
         UINT fuLoad);
__declspec(dllimport)
HANDLE
__stdcall
LoadImageW(
           HINSTANCE hInst,
         LPCWSTR name,
         UINT type,
         int cx,
         int cy,
         UINT fuLoad);






__declspec(dllimport)
HANDLE
__stdcall
CopyImage(
         HANDLE h,
         UINT type,
         int cx,
         int cy,
         UINT flags);










__declspec(dllimport) BOOL __stdcall DrawIconEx(
         HDC hdc,
         int xLeft,
         int yTop,
         HICON hIcon,
         int cxWidth,
         int cyWidth,
         UINT istepIfAniCur,
           HBRUSH hbrFlickerFreeDraw,
         UINT diFlags);



__declspec(dllimport)
HICON
__stdcall
CreateIconIndirect(
         PICONINFO piconinfo);

__declspec(dllimport)
HICON
__stdcall
CopyIcon(
         HICON hIcon);

__declspec(dllimport)
BOOL
__stdcall
GetIconInfo(
         HICON hIcon,
         PICONINFO piconinfo);





























































































































__declspec(dllimport)
int
__stdcall
LoadStringA(
           HINSTANCE hInstance,
         UINT uID,
         LPSTR lpBuffer,
         int cchBufferMax);
__declspec(dllimport)
int
__stdcall
LoadStringW(
           HINSTANCE hInstance,
         UINT uID,
         LPWSTR lpBuffer,
         int cchBufferMax);




































































































































































































































































































































__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageA(
         HWND hDlg,
         LPMSG lpMsg);
__declspec(dllimport)
BOOL
__stdcall
IsDialogMessageW(
         HWND hDlg,
         LPMSG lpMsg);








__declspec(dllimport)
BOOL
__stdcall
MapDialogRect(
         HWND hDlg,
         LPRECT lpRect);

__declspec(dllimport)
int
__stdcall
DlgDirListA(
         HWND hDlg,
         LPSTR lpPathSpec,
         int nIDListBox,
         int nIDStaticPath,
         UINT uFileType);
__declspec(dllimport)
int
__stdcall
DlgDirListW(
         HWND hDlg,
         LPWSTR lpPathSpec,
         int nIDListBox,
         int nIDStaticPath,
         UINT uFileType);




















__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExA(
         HWND hwndDlg,
         LPSTR lpString,
         int chCount,
         int idListBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectExW(
         HWND hwndDlg,
         LPWSTR lpString,
         int chCount,
         int idListBox);






__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxA(
         HWND hDlg,
         LPSTR lpPathSpec,
         int nIDComboBox,
         int nIDStaticPath,
         UINT uFiletype);
__declspec(dllimport)
int
__stdcall
DlgDirListComboBoxW(
         HWND hDlg,
         LPWSTR lpPathSpec,
         int nIDComboBox,
         int nIDStaticPath,
         UINT uFiletype);






__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExA(
         HWND hwndDlg,
         LPSTR lpString,
         int cchOut,
         int idComboBox);
__declspec(dllimport)
BOOL
__stdcall
DlgDirSelectComboBoxExW(
         HWND hwndDlg,
         LPWSTR lpString,
         int cchOut,
         int idComboBox);













































































                                  














































































































































































































































































typedef struct tagSCROLLINFO
{
    UINT    cbSize;
    UINT    fMask;
    int     nMin;
    int     nMax;
    UINT    nPage;
    int     nPos;
    int     nTrackPos;
}   SCROLLINFO,  *LPSCROLLINFO;
typedef SCROLLINFO const  *LPCSCROLLINFO;

__declspec(dllimport)
int
__stdcall
SetScrollInfo(
         HWND hwnd,
         int nBar,
         LPCSCROLLINFO lpsi,
         BOOL redraw);

__declspec(dllimport)
BOOL
__stdcall
GetScrollInfo(
         HWND hwnd,
         int nBar,
         LPSCROLLINFO lpsi);






















typedef struct tagMDICREATESTRUCTA {
    LPCSTR   szClass;
    LPCSTR   szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTA, *LPMDICREATESTRUCTA;
typedef struct tagMDICREATESTRUCTW {
    LPCWSTR  szClass;
    LPCWSTR  szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;        
} MDICREATESTRUCTW, *LPMDICREATESTRUCTW;




typedef MDICREATESTRUCTA MDICREATESTRUCT;
typedef LPMDICREATESTRUCTA LPMDICREATESTRUCT;


typedef struct tagCLIENTCREATESTRUCT {
    HANDLE hWindowMenu;
    UINT idFirstChild;
} CLIENTCREATESTRUCT, *LPCLIENTCREATESTRUCT;

__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcA(
         HWND hWnd,
           HWND hWndMDIClient,
         UINT uMsg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)
LRESULT
__stdcall
DefFrameProcW(
         HWND hWnd,
           HWND hWndMDIClient,
         UINT uMsg,
         WPARAM wParam,
         LPARAM lParam);






__declspec(dllimport)

LRESULT
__stdcall




DefMDIChildProcA(
         HWND hWnd,
         UINT uMsg,
         WPARAM wParam,
         LPARAM lParam);
__declspec(dllimport)

LRESULT
__stdcall




DefMDIChildProcW(
         HWND hWnd,
         UINT uMsg,
         WPARAM wParam,
         LPARAM lParam);








__declspec(dllimport)
BOOL
__stdcall
TranslateMDISysAccel(
         HWND hWndClient,
         LPMSG lpMsg);



__declspec(dllimport)
UINT
__stdcall
ArrangeIconicWindows(
         HWND hWnd);

__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowA(
         LPCSTR lpClassName,
         LPCSTR lpWindowName,
         DWORD dwStyle,
         int X,
         int Y,
         int nWidth,
         int nHeight,
           HWND hWndParent,
           HINSTANCE hInstance,
         LPARAM lParam);
__declspec(dllimport)
HWND
__stdcall
CreateMDIWindowW(
         LPCWSTR lpClassName,
         LPCWSTR lpWindowName,
         DWORD dwStyle,
         int X,
         int Y,
         int nWidth,
         int nHeight,
           HWND hWndParent,
           HINSTANCE hInstance,
         LPARAM lParam);







__declspec(dllimport) 
WORD 
__stdcall 
TileWindows(
           HWND hwndParent,
         UINT wHow,
           const RECT * lpRect,
         UINT cKids,
             const HWND  * lpKids);

__declspec(dllimport)
WORD
__stdcall CascadeWindows(
           HWND hwndParent,
         UINT wHow,
           const RECT * lpRect,
         UINT cKids,
             const HWND  * lpKids);










typedef DWORD HELPPOLY;
typedef struct tagMULTIKEYHELPA {

    DWORD  mkSize;



    CHAR   mkKeylist;
    CHAR   szKeyphrase[1];
} MULTIKEYHELPA, *PMULTIKEYHELPA, *LPMULTIKEYHELPA;
typedef struct tagMULTIKEYHELPW {

    DWORD  mkSize;



    WCHAR  mkKeylist;
    WCHAR  szKeyphrase[1];
} MULTIKEYHELPW, *PMULTIKEYHELPW, *LPMULTIKEYHELPW;





typedef MULTIKEYHELPA MULTIKEYHELP;
typedef PMULTIKEYHELPA PMULTIKEYHELP;
typedef LPMULTIKEYHELPA LPMULTIKEYHELP;


typedef struct tagHELPWININFOA {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    CHAR   rgchMember[2];
} HELPWININFOA, *PHELPWININFOA, *LPHELPWININFOA;
typedef struct tagHELPWININFOW {
    int  wStructSize;
    int  x;
    int  y;
    int  dx;
    int  dy;
    int  wMax;
    WCHAR  rgchMember[2];
} HELPWININFOW, *PHELPWININFOW, *LPHELPWININFOW;





typedef HELPWININFOA HELPWININFO;
typedef PHELPWININFOA PHELPWININFO;
typedef LPHELPWININFOA LPHELPWININFO;










































__declspec(dllimport)
BOOL
__stdcall
WinHelpA(
           HWND hWndMain,
           LPCSTR lpszHelp,
         UINT uCommand,
         ULONG_PTR dwData);
__declspec(dllimport)
BOOL
__stdcall
WinHelpW(
           HWND hWndMain,
           LPCWSTR lpszHelp,
         UINT uCommand,
         ULONG_PTR dwData);













__declspec(dllimport)
DWORD
__stdcall
GetGuiResources(
         HANDLE hProcess,
         DWORD uiFlags);






































































































































































































































typedef struct tagNONCLIENTMETRICSA
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTA lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTA lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTA lfMenuFont;
    LOGFONTA lfStatusFont;
    LOGFONTA lfMessageFont;
}   NONCLIENTMETRICSA, *PNONCLIENTMETRICSA, * LPNONCLIENTMETRICSA;
typedef struct tagNONCLIENTMETRICSW
{
    UINT    cbSize;
    int     iBorderWidth;
    int     iScrollWidth;
    int     iScrollHeight;
    int     iCaptionWidth;
    int     iCaptionHeight;
    LOGFONTW lfCaptionFont;
    int     iSmCaptionWidth;
    int     iSmCaptionHeight;
    LOGFONTW lfSmCaptionFont;
    int     iMenuWidth;
    int     iMenuHeight;
    LOGFONTW lfMenuFont;
    LOGFONTW lfStatusFont;
    LOGFONTW lfMessageFont;
}   NONCLIENTMETRICSW, *PNONCLIENTMETRICSW, * LPNONCLIENTMETRICSW;





typedef NONCLIENTMETRICSA NONCLIENTMETRICS;
typedef PNONCLIENTMETRICSA PNONCLIENTMETRICS;
typedef LPNONCLIENTMETRICSA LPNONCLIENTMETRICS;


















typedef struct tagMINIMIZEDMETRICS
{
    UINT    cbSize;
    int     iWidth;
    int     iHorzGap;
    int     iVertGap;
    int     iArrange;
}   MINIMIZEDMETRICS, *PMINIMIZEDMETRICS, *LPMINIMIZEDMETRICS;



typedef struct tagICONMETRICSA
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTA lfFont;
}   ICONMETRICSA, *PICONMETRICSA, *LPICONMETRICSA;
typedef struct tagICONMETRICSW
{
    UINT    cbSize;
    int     iHorzSpacing;
    int     iVertSpacing;
    int     iTitleWrap;
    LOGFONTW lfFont;
}   ICONMETRICSW, *PICONMETRICSW, *LPICONMETRICSW;





typedef ICONMETRICSA ICONMETRICS;
typedef PICONMETRICSA PICONMETRICS;
typedef LPICONMETRICSA LPICONMETRICS;




typedef struct tagANIMATIONINFO
{
    UINT    cbSize;
    int     iMinAnimate;
}   ANIMATIONINFO, *LPANIMATIONINFO;

typedef struct tagSERIALKEYSA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR     lpszActivePort;
    LPSTR     lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSA, *LPSERIALKEYSA;
typedef struct tagSERIALKEYSW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR    lpszActivePort;
    LPWSTR    lpszPort;
    UINT    iBaudRate;
    UINT    iPortState;
    UINT    iActive;
}   SERIALKEYSW, *LPSERIALKEYSW;




typedef SERIALKEYSA SERIALKEYS;
typedef LPSERIALKEYSA LPSERIALKEYS;








typedef struct tagHIGHCONTRASTA
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPSTR   lpszDefaultScheme;
}   HIGHCONTRASTA, *LPHIGHCONTRASTA;
typedef struct tagHIGHCONTRASTW
{
    UINT    cbSize;
    DWORD   dwFlags;
    LPWSTR  lpszDefaultScheme;
}   HIGHCONTRASTW, *LPHIGHCONTRASTW;




typedef HIGHCONTRASTA HIGHCONTRAST;
typedef LPHIGHCONTRASTA LPHIGHCONTRAST;


































#pragma once






typedef struct _VIDEOPARAMETERS {
    GUID  Guid;                         
    ULONG dwOffset;                     
    ULONG dwCommand;                    
    ULONG dwFlags;                      
    ULONG dwMode;                       
    ULONG dwTVStandard;                 
    ULONG dwAvailableModes;             
    ULONG dwAvailableTVStandard;        
    ULONG dwFlickerFilter;              
    ULONG dwOverScanX;                  
    ULONG dwOverScanY;                  
    ULONG dwMaxUnscaledX;               
    ULONG dwMaxUnscaledY;               
    ULONG dwPositionX;                  
    ULONG dwPositionY;                  
    ULONG dwBrightness;                 
    ULONG dwContrast;                   
    ULONG dwCPType;                     
    ULONG dwCPCommand;                  
    ULONG dwCPStandard;                 
    ULONG dwCPKey;
    ULONG bCP_APSTriggerBits;           
    UCHAR bOEMCopyProtection[256];      
} VIDEOPARAMETERS, *PVIDEOPARAMETERS, *LPVIDEOPARAMETERS;


                                        






























































__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsA(
           LPDEVMODEA lpDevMode,
         DWORD dwFlags);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsW(
           LPDEVMODEW lpDevMode,
         DWORD dwFlags);






__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExA(
           LPCSTR lpszDeviceName,
           LPDEVMODEA lpDevMode,
      HWND hwnd,
         DWORD dwflags,
           LPVOID lParam);
__declspec(dllimport)
LONG
__stdcall
ChangeDisplaySettingsExW(
           LPCWSTR lpszDeviceName,
           LPDEVMODEW lpDevMode,
      HWND hwnd,
         DWORD dwflags,
           LPVOID lParam);









__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsA(
           LPCSTR lpszDeviceName,
         DWORD iModeNum,
         LPDEVMODEA lpDevMode);
__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsW(
           LPCWSTR lpszDeviceName,
         DWORD iModeNum,
         LPDEVMODEW lpDevMode);








__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsExA(
           LPCSTR lpszDeviceName,
         DWORD iModeNum,
         LPDEVMODEA lpDevMode,
         DWORD dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDisplaySettingsExW(
           LPCWSTR lpszDeviceName,
         DWORD iModeNum,
         LPDEVMODEW lpDevMode,
         DWORD dwFlags);









__declspec(dllimport)
BOOL
__stdcall
EnumDisplayDevicesA(
           LPCSTR lpDevice,
         DWORD iDevNum,
         PDISPLAY_DEVICEA lpDisplayDevice,
         DWORD dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDisplayDevicesW(
           LPCWSTR lpDevice,
         DWORD iDevNum,
         PDISPLAY_DEVICEW lpDisplayDevice,
         DWORD dwFlags);











__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoA(
         UINT uiAction,
         UINT uiParam,
           PVOID pvParam,
         UINT fWinIni);
__declspec(dllimport)
BOOL
__stdcall
SystemParametersInfoW(
         UINT uiAction,
         UINT uiParam,
           PVOID pvParam,
         UINT fWinIni);












typedef struct tagFILTERKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iWaitMSec;            
    DWORD iDelayMSec;           
    DWORD iRepeatMSec;          
    DWORD iBounceMSec;          
} FILTERKEYS, *LPFILTERKEYS;












typedef struct tagSTICKYKEYS
{
    UINT  cbSize;
    DWORD dwFlags;
} STICKYKEYS, *LPSTICKYKEYS;
































typedef struct tagMOUSEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iMaxSpeed;
    DWORD iTimeToMaxSpeed;
    DWORD iCtrlSpeed;
    DWORD dwReserved1;
    DWORD dwReserved2;
} MOUSEKEYS, *LPMOUSEKEYS;




















typedef struct tagACCESSTIMEOUT
{
    UINT  cbSize;
    DWORD dwFlags;
    DWORD iTimeOutMSec;
} ACCESSTIMEOUT, *LPACCESSTIMEOUT;
























typedef struct tagSOUNDSENTRYA
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPSTR   lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYA, *LPSOUNDSENTRYA;
typedef struct tagSOUNDSENTRYW
{
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPWSTR  lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
} SOUNDSENTRYW, *LPSOUNDSENTRYW;




typedef SOUNDSENTRYA SOUNDSENTRY;
typedef LPSOUNDSENTRYA LPSOUNDSENTRY;









typedef struct tagTOGGLEKEYS
{
    UINT cbSize;
    DWORD dwFlags;
} TOGGLEKEYS, *LPTOGGLEKEYS;















__declspec(dllimport)
void
__stdcall
SetDebugErrorLevel(
         DWORD dwLevel);









__declspec(dllimport)
void
__stdcall
SetLastErrorEx(
         DWORD dwErrCode,
         DWORD dwType);

__declspec(dllimport)
int
__stdcall
InternalGetWindowText(
         HWND hWnd,
           LPWSTR pString,
         int cchMaxCount);






















__declspec(dllimport)
HMONITOR
__stdcall
MonitorFromPoint(
         POINT pt,
         DWORD dwFlags);

__declspec(dllimport)
HMONITOR
__stdcall
MonitorFromRect(
         LPCRECT lprc,
         DWORD dwFlags);

__declspec(dllimport)
HMONITOR
__stdcall
MonitorFromWindow(
         HWND hwnd,
         DWORD dwFlags);







typedef struct tagMONITORINFO
{
    DWORD   cbSize;
    RECT    rcMonitor;
    RECT    rcWork;
    DWORD   dwFlags;
} MONITORINFO, *LPMONITORINFO;


typedef struct tagMONITORINFOEXA : public tagMONITORINFO
{
    CHAR        szDevice[32];
} MONITORINFOEXA, *LPMONITORINFOEXA;
typedef struct tagMONITORINFOEXW : public tagMONITORINFO
{
    WCHAR       szDevice[32];
} MONITORINFOEXW, *LPMONITORINFOEXW;




typedef MONITORINFOEXA MONITORINFOEX;
typedef LPMONITORINFOEXA LPMONITORINFOEX;





















__declspec(dllimport)
BOOL
__stdcall
GetMonitorInfoA(
         HMONITOR hMonitor,
         LPMONITORINFO lpmi);
__declspec(dllimport)
BOOL
__stdcall
GetMonitorInfoW(
         HMONITOR hMonitor,
         LPMONITORINFO lpmi);






typedef BOOL (__stdcall* MONITORENUMPROC)(HMONITOR, HDC, LPRECT, LPARAM);

__declspec(dllimport)
BOOL
__stdcall
EnumDisplayMonitors(
           HDC hdc,
           LPCRECT lprcClip,
         MONITORENUMPROC lpfnEnum,
         LPARAM dwData);








__declspec(dllimport)
void
__stdcall
NotifyWinEvent(
         DWORD event,
         HWND  hwnd,
         LONG  idObject,
         LONG  idChild);

typedef void (__stdcall* WINEVENTPROC)(
    HWINEVENTHOOK hWinEventHook,
    DWORD         event,
    HWND          hwnd,
    LONG          idObject,
    LONG          idChild,
    DWORD         idEventThread,
    DWORD         dwmsEventTime);

__declspec(dllimport)
HWINEVENTHOOK
__stdcall
SetWinEventHook(
         DWORD eventMin,
         DWORD eventMax,
           HMODULE hmodWinEventProc,
         WINEVENTPROC pfnWinEventProc,
         DWORD idProcess,
         DWORD idThread,
         DWORD dwFlags);

















__declspec(dllimport)
BOOL
__stdcall
UnhookWinEvent(
         HWINEVENTHOOK hWinEventHook);






















































































































































































































































































































































































































































typedef struct tagGUITHREADINFO
{
    DWORD   cbSize;
    DWORD   flags;
    HWND    hwndActive;
    HWND    hwndFocus;
    HWND    hwndCapture;
    HWND    hwndMenuOwner;
    HWND    hwndMoveSize;
    HWND    hwndCaret;
    RECT    rcCaret;
} GUITHREADINFO, *PGUITHREADINFO,  * LPGUITHREADINFO;










__declspec(dllimport)
BOOL
__stdcall
GetGUIThreadInfo(
         DWORD idThread,
         PGUITHREADINFO pgui);


__declspec(dllimport)
UINT
__stdcall
GetWindowModuleFileNameA(
         HWND hwnd,
           LPSTR pszFileName,
         UINT cchFileNameMax);
__declspec(dllimport)
UINT
__stdcall
GetWindowModuleFileNameW(
         HWND hwnd,
           LPWSTR pszFileName,
         UINT cchFileNameMax);















































typedef struct tagCURSORINFO
{
    DWORD   cbSize;
    DWORD   flags;
    HCURSOR hCursor;
    POINT   ptScreenPos;
} CURSORINFO, *PCURSORINFO, *LPCURSORINFO;



__declspec(dllimport)
BOOL
__stdcall
GetCursorInfo(
         PCURSORINFO pci);




typedef struct tagWINDOWINFO
{
    DWORD cbSize;
    RECT rcWindow;
    RECT rcClient;
    DWORD dwStyle;
    DWORD dwExStyle;
    DWORD dwWindowStatus;
    UINT cxWindowBorders;
    UINT cyWindowBorders;
    ATOM atomWindowType;
    WORD wCreatorVersion;
} WINDOWINFO, *PWINDOWINFO, *LPWINDOWINFO;



__declspec(dllimport)
BOOL
__stdcall
GetWindowInfo(
         HWND hwnd,
         PWINDOWINFO pwi);




typedef struct tagTITLEBARINFO
{
    DWORD cbSize;
    RECT rcTitleBar;
    DWORD rgstate[5 + 1];
} TITLEBARINFO, *PTITLEBARINFO, *LPTITLEBARINFO;

__declspec(dllimport)
BOOL
__stdcall
GetTitleBarInfo(
         HWND hwnd,
         PTITLEBARINFO pti);




typedef struct tagMENUBARINFO
{
    DWORD cbSize;
    RECT rcBar;          
    HMENU hMenu;         
    HWND hwndMenu;       
    BOOL fBarFocused:1;  
    BOOL fFocused:1;     
} MENUBARINFO, *PMENUBARINFO, *LPMENUBARINFO;

__declspec(dllimport)
BOOL
__stdcall
GetMenuBarInfo(
         HWND hwnd,
         LONG idObject,
         LONG idItem,
         PMENUBARINFO pmbi);




typedef struct tagSCROLLBARINFO
{
    DWORD cbSize;
    RECT rcScrollBar;
    int dxyLineButton;
    int xyThumbTop;
    int xyThumbBottom;
    int reserved;
    DWORD rgstate[5 + 1];
} SCROLLBARINFO, *PSCROLLBARINFO, *LPSCROLLBARINFO;

__declspec(dllimport)
BOOL
__stdcall
GetScrollBarInfo(
         HWND hwnd,
         LONG idObject,
         PSCROLLBARINFO psbi);




typedef struct tagCOMBOBOXINFO
{
    DWORD cbSize;
    RECT rcItem;
    RECT rcButton;
    DWORD stateButton;
    HWND hwndCombo;
    HWND hwndItem;
    HWND hwndList;
} COMBOBOXINFO, *PCOMBOBOXINFO, *LPCOMBOBOXINFO;

__declspec(dllimport)
BOOL
__stdcall
GetComboBoxInfo(
         HWND hwndCombo,
         PCOMBOBOXINFO pcbi);








__declspec(dllimport)
HWND
__stdcall
GetAncestor(
         HWND hwnd,
         UINT gaFlags);








__declspec(dllimport)
HWND
__stdcall
RealChildWindowFromPoint(
         HWND hwndParent,
         POINT ptParentClientCoords);






__declspec(dllimport)
UINT
__stdcall
RealGetWindowClassA(
         HWND hwnd,
           LPSTR ptszClassName,
         UINT cchClassNameMax);




__declspec(dllimport)
UINT
__stdcall
RealGetWindowClassW(
         HWND hwnd,
           LPWSTR ptszClassName,
         UINT cchClassNameMax);









typedef struct tagALTTABINFO
{
    DWORD cbSize;
    int cItems;
    int cColumns;
    int cRows;
    int iColFocus;
    int iRowFocus;
    int cxItem;
    int cyItem;
    POINT ptStart;
} ALTTABINFO, *PALTTABINFO, *LPALTTABINFO;

__declspec(dllimport)
BOOL
__stdcall
GetAltTabInfoA(
           HWND hwnd,
         int iItem,
         PALTTABINFO pati,
           LPSTR pszItemText,
         UINT cchItemText);
__declspec(dllimport)
BOOL
__stdcall
GetAltTabInfoW(
           HWND hwnd,
         int iItem,
         PALTTABINFO pati,
           LPWSTR pszItemText,
         UINT cchItemText);










__declspec(dllimport)
DWORD
__stdcall
GetListBoxInfo(
         HWND hwnd);

















































































































































































































































































































































































































}
































extern "C" {






















































































































































































































































































































































































































































































































































































































































































typedef DWORD LGRPID;





typedef DWORD LCTYPE;





typedef DWORD CALTYPE;





typedef DWORD CALID;






typedef struct _cpinfo {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
} CPINFO, *LPCPINFO;

typedef struct _cpinfoexA {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    CHAR    CodePageName[260];         
} CPINFOEXA, *LPCPINFOEXA;
typedef struct _cpinfoexW {
    UINT    MaxCharSize;                    
    BYTE    DefaultChar[2];   
    BYTE    LeadByte[12];        
    WCHAR   UnicodeDefaultChar;             
    UINT    CodePage;                       
    WCHAR   CodePageName[260];         
} CPINFOEXW, *LPCPINFOEXW;




typedef CPINFOEXA CPINFOEX;
typedef LPCPINFOEXA LPCPINFOEX;







typedef struct _numberfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTA, *LPNUMBERFMTA;
typedef struct _numberfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
} NUMBERFMTW, *LPNUMBERFMTW;




typedef NUMBERFMTA NUMBERFMT;
typedef LPNUMBERFMTA LPNUMBERFMT;







typedef struct _currencyfmtA {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPSTR   lpDecimalSep;              
    LPSTR   lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPSTR   lpCurrencySymbol;          
} CURRENCYFMTA, *LPCURRENCYFMTA;
typedef struct _currencyfmtW {
    UINT    NumDigits;                 
    UINT    LeadingZero;               
    UINT    Grouping;                  
    LPWSTR  lpDecimalSep;              
    LPWSTR  lpThousandSep;             
    UINT    NegativeOrder;             
    UINT    PositiveOrder;             
    LPWSTR  lpCurrencySymbol;          
} CURRENCYFMTW, *LPCURRENCYFMTW;




typedef CURRENCYFMTA CURRENCYFMT;
typedef LPCURRENCYFMTA LPCURRENCYFMT;






enum SYSNLS_FUNCTION{
    COMPARE_STRING    =  0x0001,
};
typedef DWORD NLS_FUNCTION;






typedef struct _nlsversioninfo{ 
    DWORD dwNLSVersionInfoSize; 
    DWORD dwNLSVersion; 
    DWORD dwDefinedVersion; 
} NLSVERSIONINFO, *LPNLSVERSIONINFO; 






typedef LONG    GEOID;
typedef DWORD   GEOTYPE;
typedef DWORD   GEOCLASS;







enum SYSGEOTYPE {
    GEO_NATION      =       0x0001,
    GEO_LATITUDE    =       0x0002,
    GEO_LONGITUDE   =       0x0003,
    GEO_ISO2        =       0x0004,
    GEO_ISO3        =       0x0005,
    GEO_RFC1766     =       0x0006,
    GEO_LCID        =       0x0007,
    GEO_FRIENDLYNAME=       0x0008,
    GEO_OFFICIALNAME=       0x0009,
    GEO_TIMEZONES   =       0x000A,
    GEO_OFFICIALLANGUAGES = 0x000B,
};





enum SYSGEOCLASS {
    GEOCLASS_NATION  = 16,
    GEOCLASS_REGION  = 14,
};








typedef BOOL (__stdcall* LANGUAGEGROUP_ENUMPROCA)(LGRPID, LPSTR, LPSTR, DWORD, LONG_PTR);
typedef BOOL (__stdcall* LANGGROUPLOCALE_ENUMPROCA)(LGRPID, LCID, LPSTR, LONG_PTR);
typedef BOOL (__stdcall* UILANGUAGE_ENUMPROCA)(LPSTR, LONG_PTR);
typedef BOOL (__stdcall* LOCALE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXA)(LPSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCA)(LPSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXA)(LPSTR, CALID);

typedef BOOL (__stdcall* LANGUAGEGROUP_ENUMPROCW)(LGRPID, LPWSTR, LPWSTR, DWORD, LONG_PTR);
typedef BOOL (__stdcall* LANGGROUPLOCALE_ENUMPROCW)(LGRPID, LCID, LPWSTR, LONG_PTR);
typedef BOOL (__stdcall* UILANGUAGE_ENUMPROCW)(LPWSTR, LONG_PTR);
typedef BOOL (__stdcall* LOCALE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CODEPAGE_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* DATEFMT_ENUMPROCEXW)(LPWSTR, CALID);
typedef BOOL (__stdcall* TIMEFMT_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCW)(LPWSTR);
typedef BOOL (__stdcall* CALINFO_ENUMPROCEXW)(LPWSTR, CALID);
typedef BOOL (__stdcall* GEO_ENUMPROC)(GEOID);


















































































__declspec(dllimport)
BOOL
__stdcall
IsValidCodePage(
         UINT  CodePage);

__declspec(dllimport)
UINT
__stdcall
GetACP(void);

__declspec(dllimport)
UINT
__stdcall
GetOEMCP(void);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfo(
         UINT       CodePage,
         LPCPINFO  lpCPInfo);

__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExA(
         UINT          CodePage,
         DWORD         dwFlags,
         LPCPINFOEXA  lpCPInfoEx);
__declspec(dllimport)
BOOL
__stdcall
GetCPInfoExW(
         UINT          CodePage,
         DWORD         dwFlags,
         LPCPINFOEXW  lpCPInfoEx);






__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByte(
         BYTE  TestChar);

__declspec(dllimport)
BOOL
__stdcall
IsDBCSLeadByteEx(
         UINT  CodePage,
         BYTE  TestChar);

__declspec(dllimport)
int
__stdcall
MultiByteToWideChar(
         UINT     CodePage,
         DWORD    dwFlags,
         LPCSTR   lpMultiByteStr,
         int      cbMultiByte,
           LPWSTR  lpWideCharStr,
         int      cchWideChar);

__declspec(dllimport)
int
__stdcall
WideCharToMultiByte(
         UINT     CodePage,
         DWORD    dwFlags,
           LPCWSTR  lpWideCharStr,
         int      cchWideChar,
           LPSTR   lpMultiByteStr,
         int      cbMultiByte,
           LPCSTR   lpDefaultChar,
           LPBOOL  lpUsedDefaultChar);






__declspec(dllimport)
int
__stdcall
CompareStringA(
         LCID     Locale,
         DWORD    dwCmpFlags,
         LPCSTR  lpString1,
         int      cchCount1,
         LPCSTR  lpString2,
         int      cchCount2);
__declspec(dllimport)
int
__stdcall
CompareStringW(
         LCID     Locale,
         DWORD    dwCmpFlags,
         LPCWSTR  lpString1,
         int      cchCount1,
         LPCWSTR  lpString2,
         int      cchCount2);


































__declspec(dllimport)
int
__stdcall
LCMapStringA(
         LCID     Locale,
         DWORD    dwMapFlags,
         LPCSTR  lpSrcStr,
         int      cchSrc,
           LPSTR  lpDestStr,
         int      cchDest);
__declspec(dllimport)
int
__stdcall
LCMapStringW(
         LCID     Locale,
         DWORD    dwMapFlags,
         LPCWSTR  lpSrcStr,
         int      cchSrc,
           LPWSTR  lpDestStr,
         int      cchDest);






__declspec(dllimport)
int
__stdcall
GetLocaleInfoA(
         LCID     Locale,
         LCTYPE   LCType,
           LPSTR  lpLCData,
         int      cchData);
__declspec(dllimport)
int
__stdcall
GetLocaleInfoW(
         LCID     Locale,
         LCTYPE   LCType,
           LPWSTR  lpLCData,
         int      cchData);






__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoA(
         LCID     Locale,
         LCTYPE   LCType,
         LPCSTR  lpLCData);
__declspec(dllimport)
BOOL
__stdcall
SetLocaleInfoW(
         LCID     Locale,
         LCTYPE   LCType,
         LPCWSTR  lpLCData);







__declspec(dllimport)
int
__stdcall
GetCalendarInfoA(
         LCID     Locale,
         CALID    Calendar,
         CALTYPE  CalType,
           LPSTR   lpCalData,
         int      cchData,
           LPDWORD  lpValue);
__declspec(dllimport)
int
__stdcall
GetCalendarInfoW(
         LCID     Locale,
         CALID    Calendar,
         CALTYPE  CalType,
           LPWSTR   lpCalData,
         int      cchData,
           LPDWORD  lpValue);






__declspec(dllimport)
BOOL
__stdcall
SetCalendarInfoA(
         LCID     Locale,
         CALID    Calendar,
         CALTYPE  CalType,
         LPCSTR  lpCalData);
__declspec(dllimport)
BOOL
__stdcall
SetCalendarInfoW(
         LCID     Locale,
         CALID    Calendar,
         CALTYPE  CalType,
         LPCWSTR  lpCalData);







__declspec(dllimport)
int
__stdcall
GetTimeFormatA(
         LCID             Locale,
         DWORD            dwFlags,
           const SYSTEMTIME *lpTime,
           LPCSTR          lpFormat,
           LPSTR          lpTimeStr,
         int              cchTime);
__declspec(dllimport)
int
__stdcall
GetTimeFormatW(
         LCID             Locale,
         DWORD            dwFlags,
           const SYSTEMTIME *lpTime,
           LPCWSTR          lpFormat,
           LPWSTR          lpTimeStr,
         int              cchTime);






__declspec(dllimport)
int
__stdcall
GetDateFormatA(
         LCID             Locale,
         DWORD            dwFlags,
           const SYSTEMTIME *lpDate,
           LPCSTR          lpFormat,
           LPSTR          lpDateStr,
         int              cchDate);
__declspec(dllimport)
int
__stdcall
GetDateFormatW(
         LCID             Locale,
         DWORD            dwFlags,
           const SYSTEMTIME *lpDate,
           LPCWSTR          lpFormat,
           LPWSTR          lpDateStr,
         int              cchDate);






__declspec(dllimport)
int
__stdcall
GetNumberFormatA(
         LCID             Locale,
         DWORD            dwFlags,
         LPCSTR          lpValue,
           const NUMBERFMTA *lpFormat,
           LPSTR          lpNumberStr,
         int              cchNumber);
__declspec(dllimport)
int
__stdcall
GetNumberFormatW(
         LCID             Locale,
         DWORD            dwFlags,
         LPCWSTR          lpValue,
           const NUMBERFMTW *lpFormat,
           LPWSTR          lpNumberStr,
         int              cchNumber);






__declspec(dllimport)
int
__stdcall
GetCurrencyFormatA(
         LCID               Locale,
         DWORD              dwFlags,
         LPCSTR            lpValue,
           const CURRENCYFMTA *lpFormat,
           LPSTR            lpCurrencyStr,
         int                cchCurrency);
__declspec(dllimport)
int
__stdcall
GetCurrencyFormatW(
         LCID               Locale,
         DWORD              dwFlags,
         LPCWSTR            lpValue,
           const CURRENCYFMTW *lpFormat,
           LPWSTR            lpCurrencyStr,
         int                cchCurrency);






__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoA(
         CALINFO_ENUMPROCA lpCalInfoEnumProc,
         LCID              Locale,
         CALID             Calendar,
         CALTYPE           CalType);
__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoW(
         CALINFO_ENUMPROCW lpCalInfoEnumProc,
         LCID              Locale,
         CALID             Calendar,
         CALTYPE           CalType);







__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoExA(
         CALINFO_ENUMPROCEXA lpCalInfoEnumProcEx,
         LCID                Locale,
         CALID               Calendar,
         CALTYPE             CalType);
__declspec(dllimport)
BOOL
__stdcall
EnumCalendarInfoExW(
         CALINFO_ENUMPROCEXW lpCalInfoEnumProcEx,
         LCID                Locale,
         CALID               Calendar,
         CALTYPE             CalType);







__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsA(
         TIMEFMT_ENUMPROCA lpTimeFmtEnumProc,
         LCID              Locale,
         DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumTimeFormatsW(
         TIMEFMT_ENUMPROCW lpTimeFmtEnumProc,
         LCID              Locale,
         DWORD             dwFlags);






__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsA(
         DATEFMT_ENUMPROCA lpDateFmtEnumProc,
         LCID              Locale,
         DWORD             dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsW(
         DATEFMT_ENUMPROCW lpDateFmtEnumProc,
         LCID              Locale,
         DWORD             dwFlags);







__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsExA(
         DATEFMT_ENUMPROCEXA lpDateFmtEnumProcEx,
         LCID                Locale,
         DWORD               dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumDateFormatsExW(
         DATEFMT_ENUMPROCEXW lpDateFmtEnumProcEx,
         LCID                Locale,
         DWORD               dwFlags);








__declspec(dllimport)
BOOL
__stdcall
IsValidLanguageGroup(
         LGRPID  LanguageGroup,
         DWORD   dwFlags);


__declspec(dllimport)
BOOL
__stdcall
GetNLSVersion(
         NLS_FUNCTION     Function,
         LCID             Locale,
         LPNLSVERSIONINFO lpVersionInformation);

__declspec(dllimport)
BOOL
__stdcall
IsNLSDefinedString(
         NLS_FUNCTION     Function,
         DWORD            dwFlags,
         LPNLSVERSIONINFO lpVersionInformation,
         LPCWSTR          lpString,
         INT              cchStr);

__declspec(dllimport)
BOOL
__stdcall
IsValidLocale(
         LCID   Locale,
         DWORD  dwFlags);

__declspec(dllimport)
int
__stdcall
GetGeoInfoA(
         GEOID       Location,
         GEOTYPE     GeoType,
           LPSTR     lpGeoData,
         int         cchData,
         LANGID      LangId);
__declspec(dllimport)
int
__stdcall
GetGeoInfoW(
         GEOID       Location,
         GEOTYPE     GeoType,
           LPWSTR     lpGeoData,
         int         cchData,
         LANGID      LangId);






__declspec(dllimport)
BOOL
__stdcall
EnumSystemGeoID(
         GEOCLASS        GeoClass,
         GEOID           ParentGeoId,
         GEO_ENUMPROC    lpGeoEnumProc);

__declspec(dllimport)
GEOID
__stdcall
GetUserGeoID(
         GEOCLASS    GeoClass);

__declspec(dllimport)
BOOL
__stdcall
SetUserGeoID(
         GEOID       GeoId);

__declspec(dllimport)
LCID
__stdcall
ConvertDefaultLocale(
         LCID   Locale);

__declspec(dllimport)
LCID
__stdcall
GetThreadLocale(void);

__declspec(dllimport)
BOOL
__stdcall
SetThreadLocale(
         LCID  Locale
    );


__declspec(dllimport)
LANGID
__stdcall
GetSystemDefaultUILanguage(void);

__declspec(dllimport)
LANGID
__stdcall
GetUserDefaultUILanguage(void);


__declspec(dllimport)
LANGID
__stdcall
GetSystemDefaultLangID(void);

__declspec(dllimport)
LANGID
__stdcall
GetUserDefaultLangID(void);

__declspec(dllimport)
LCID
__stdcall
GetSystemDefaultLCID(void);

__declspec(dllimport)
LCID
__stdcall
GetUserDefaultLCID(void);







__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExA(
         LCID     Locale,
         DWORD    dwInfoType,
         LPCSTR  lpSrcStr,
         int      cchSrc,
         LPWORD  lpCharType);
__declspec(dllimport)
BOOL
__stdcall
GetStringTypeExW(
         LCID     Locale,
         DWORD    dwInfoType,
         LPCWSTR  lpSrcStr,
         int      cchSrc,
         LPWORD  lpCharType);

















__declspec(dllimport)
BOOL
__stdcall
GetStringTypeA(
         LCID     Locale,
         DWORD    dwInfoType,
         LPCSTR   lpSrcStr,
         int      cchSrc,
         LPWORD  lpCharType);

__declspec(dllimport)
BOOL
__stdcall
GetStringTypeW(
         DWORD    dwInfoType,
         LPCWSTR  lpSrcStr,
         int      cchSrc,
         LPWORD  lpCharType);


__declspec(dllimport)
int
__stdcall
FoldStringA(
         DWORD    dwMapFlags,
         LPCSTR  lpSrcStr,
         int      cchSrc,
           LPSTR  lpDestStr,
         int      cchDest);
__declspec(dllimport)
int
__stdcall
FoldStringW(
         DWORD    dwMapFlags,
         LPCWSTR  lpSrcStr,
         int      cchSrc,
           LPWSTR  lpDestStr,
         int      cchDest);







__declspec(dllimport)
BOOL
__stdcall
EnumSystemLanguageGroupsA(
         LANGUAGEGROUP_ENUMPROCA lpLanguageGroupEnumProc,
         DWORD                   dwFlags,
         LONG_PTR                lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemLanguageGroupsW(
         LANGUAGEGROUP_ENUMPROCW lpLanguageGroupEnumProc,
         DWORD                   dwFlags,
         LONG_PTR                lParam);






__declspec(dllimport)
BOOL
__stdcall
EnumLanguageGroupLocalesA(
         LANGGROUPLOCALE_ENUMPROCA lpLangGroupLocaleEnumProc,
         LGRPID                    LanguageGroup,
         DWORD                     dwFlags,
         LONG_PTR                  lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumLanguageGroupLocalesW(
         LANGGROUPLOCALE_ENUMPROCW lpLangGroupLocaleEnumProc,
         LGRPID                    LanguageGroup,
         DWORD                     dwFlags,
         LONG_PTR                  lParam);






__declspec(dllimport)
BOOL
__stdcall
EnumUILanguagesA(
         UILANGUAGE_ENUMPROCA lpUILanguageEnumProc,
         DWORD                dwFlags,
         LONG_PTR             lParam);
__declspec(dllimport)
BOOL
__stdcall
EnumUILanguagesW(
         UILANGUAGE_ENUMPROCW lpUILanguageEnumProc,
         DWORD                dwFlags,
         LONG_PTR             lParam);







__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesA(
         LOCALE_ENUMPROCA lpLocaleEnumProc,
         DWORD            dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemLocalesW(
         LOCALE_ENUMPROCW lpLocaleEnumProc,
         DWORD            dwFlags);






__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesA(
         CODEPAGE_ENUMPROCA lpCodePageEnumProc,
         DWORD              dwFlags);
__declspec(dllimport)
BOOL
__stdcall
EnumSystemCodePagesW(
         CODEPAGE_ENUMPROCW lpCodePageEnumProc,
         DWORD              dwFlags);











}

































extern "C" {


typedef struct _COORD {
    SHORT X;
    SHORT Y;
} COORD, *PCOORD;

typedef struct _SMALL_RECT {
    SHORT Left;
    SHORT Top;
    SHORT Right;
    SHORT Bottom;
} SMALL_RECT, *PSMALL_RECT;

typedef struct _KEY_EVENT_RECORD {
    BOOL bKeyDown;
    WORD wRepeatCount;
    WORD wVirtualKeyCode;
    WORD wVirtualScanCode;
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } uChar;
    DWORD dwControlKeyState;
} KEY_EVENT_RECORD, *PKEY_EVENT_RECORD;






















typedef struct _MOUSE_EVENT_RECORD {
    COORD dwMousePosition;
    DWORD dwButtonState;
    DWORD dwControlKeyState;
    DWORD dwEventFlags;
} MOUSE_EVENT_RECORD, *PMOUSE_EVENT_RECORD;



















typedef struct _WINDOW_BUFFER_SIZE_RECORD {
    COORD dwSize;
} WINDOW_BUFFER_SIZE_RECORD, *PWINDOW_BUFFER_SIZE_RECORD;

typedef struct _MENU_EVENT_RECORD {
    UINT dwCommandId;
} MENU_EVENT_RECORD, *PMENU_EVENT_RECORD;

typedef struct _FOCUS_EVENT_RECORD {
    BOOL bSetFocus;
} FOCUS_EVENT_RECORD, *PFOCUS_EVENT_RECORD;

typedef struct _INPUT_RECORD {
    WORD EventType;
    union {
        KEY_EVENT_RECORD KeyEvent;
        MOUSE_EVENT_RECORD MouseEvent;
        WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
        MENU_EVENT_RECORD MenuEvent;
        FOCUS_EVENT_RECORD FocusEvent;
    } Event;
} INPUT_RECORD, *PINPUT_RECORD;











typedef struct _CHAR_INFO {
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } Char;
    WORD Attributes;
} CHAR_INFO, *PCHAR_INFO;
























typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD  wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
} CONSOLE_SCREEN_BUFFER_INFO, *PCONSOLE_SCREEN_BUFFER_INFO;

typedef struct _CONSOLE_CURSOR_INFO {
    DWORD  dwSize;
    BOOL   bVisible;
} CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;

typedef struct _CONSOLE_FONT_INFO {
    DWORD  nFont;
    COORD  dwFontSize;
} CONSOLE_FONT_INFO, *PCONSOLE_FONT_INFO;























typedef
BOOL
(__stdcall *PHANDLER_ROUTINE)(
    DWORD CtrlType
    );






























__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputA(
     HANDLE hConsoleInput,
     PINPUT_RECORD lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
PeekConsoleInputW(
     HANDLE hConsoleInput,
     PINPUT_RECORD lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsRead
    );






__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputA(
     HANDLE hConsoleInput,
     PINPUT_RECORD lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleInputW(
     HANDLE hConsoleInput,
     PINPUT_RECORD lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsRead
    );






__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputA(
     HANDLE hConsoleInput,
     const INPUT_RECORD *lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleInputW(
     HANDLE hConsoleInput,
     const INPUT_RECORD *lpBuffer,
     DWORD nLength,
     LPDWORD lpNumberOfEventsWritten
    );






__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputA(
     HANDLE hConsoleOutput,
     PCHAR_INFO lpBuffer,
     COORD dwBufferSize,
     COORD dwBufferCoord,
      PSMALL_RECT lpReadRegion
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputW(
     HANDLE hConsoleOutput,
     PCHAR_INFO lpBuffer,
     COORD dwBufferSize,
     COORD dwBufferCoord,
      PSMALL_RECT lpReadRegion
    );






__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputA(
     HANDLE hConsoleOutput,
     const CHAR_INFO *lpBuffer,
     COORD dwBufferSize,
     COORD dwBufferCoord,
      PSMALL_RECT lpWriteRegion
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputW(
     HANDLE hConsoleOutput,
     const CHAR_INFO *lpBuffer,
     COORD dwBufferSize,
     COORD dwBufferCoord,
      PSMALL_RECT lpWriteRegion
    );






__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterA(
     HANDLE hConsoleOutput,
     LPSTR lpCharacter,
      DWORD nLength,
     COORD dwReadCoord,
     LPDWORD lpNumberOfCharsRead
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputCharacterW(
     HANDLE hConsoleOutput,
     LPWSTR lpCharacter,
      DWORD nLength,
     COORD dwReadCoord,
     LPDWORD lpNumberOfCharsRead
    );






__declspec(dllimport)
BOOL
__stdcall
ReadConsoleOutputAttribute(
     HANDLE hConsoleOutput,
     LPWORD lpAttribute,
     DWORD nLength,
     COORD dwReadCoord,
     LPDWORD lpNumberOfAttrsRead
    );

__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterA(
     HANDLE hConsoleOutput,
     LPCSTR lpCharacter,
     DWORD nLength,
     COORD dwWriteCoord,
     LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputCharacterW(
     HANDLE hConsoleOutput,
     LPCWSTR lpCharacter,
     DWORD nLength,
     COORD dwWriteCoord,
     LPDWORD lpNumberOfCharsWritten
    );






__declspec(dllimport)
BOOL
__stdcall
WriteConsoleOutputAttribute(
     HANDLE hConsoleOutput,
     const WORD *lpAttribute,
     DWORD nLength,
     COORD dwWriteCoord,
     LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterA(
     HANDLE hConsoleOutput,
     CHAR  cCharacter,
     DWORD  nLength,
     COORD  dwWriteCoord,
     LPDWORD lpNumberOfCharsWritten
    );
__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputCharacterW(
     HANDLE hConsoleOutput,
     WCHAR  cCharacter,
     DWORD  nLength,
     COORD  dwWriteCoord,
     LPDWORD lpNumberOfCharsWritten
    );






__declspec(dllimport)
BOOL
__stdcall
FillConsoleOutputAttribute(
     HANDLE hConsoleOutput,
     WORD   wAttribute,
     DWORD  nLength,
     COORD  dwWriteCoord,
     LPDWORD lpNumberOfAttrsWritten
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleMode(
     HANDLE hConsoleHandle,
     LPDWORD lpMode
    );

__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleInputEvents(
     HANDLE hConsoleInput,
     LPDWORD lpNumberOfEvents
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleScreenBufferInfo(
     HANDLE hConsoleOutput,
     PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
    );

__declspec(dllimport)
COORD
__stdcall
GetLargestConsoleWindowSize(
     HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
GetConsoleCursorInfo(
     HANDLE hConsoleOutput,
     PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
    );





























__declspec(dllimport)
BOOL
__stdcall
GetNumberOfConsoleMouseButtons(
     LPDWORD lpNumberOfMouseButtons
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleMode(
     HANDLE hConsoleHandle,
     DWORD dwMode
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleActiveScreenBuffer(
     HANDLE hConsoleOutput
    );

__declspec(dllimport)
BOOL
__stdcall
FlushConsoleInputBuffer(
     HANDLE hConsoleInput
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleScreenBufferSize(
     HANDLE hConsoleOutput,
     COORD dwSize
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorPosition(
     HANDLE hConsoleOutput,
     COORD dwCursorPosition
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCursorInfo(
     HANDLE hConsoleOutput,
     const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
    );

__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferA(
     HANDLE hConsoleOutput,
     const SMALL_RECT *lpScrollRectangle,
     const SMALL_RECT *lpClipRectangle,
     COORD dwDestinationOrigin,
     const CHAR_INFO *lpFill
    );
__declspec(dllimport)
BOOL
__stdcall
ScrollConsoleScreenBufferW(
     HANDLE hConsoleOutput,
     const SMALL_RECT *lpScrollRectangle,
     const SMALL_RECT *lpClipRectangle,
     COORD dwDestinationOrigin,
     const CHAR_INFO *lpFill
    );






__declspec(dllimport)
BOOL
__stdcall
SetConsoleWindowInfo(
     HANDLE hConsoleOutput,
     BOOL bAbsolute,
     const SMALL_RECT *lpConsoleWindow
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleTextAttribute(
     HANDLE hConsoleOutput,
     WORD wAttributes
    );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCtrlHandler(
     PHANDLER_ROUTINE HandlerRoutine,
     BOOL Add
    );

__declspec(dllimport)
BOOL
__stdcall
GenerateConsoleCtrlEvent(
     DWORD dwCtrlEvent,
     DWORD dwProcessGroupId
    );

__declspec(dllimport)
BOOL
__stdcall
AllocConsole( void );

__declspec(dllimport)
BOOL
__stdcall
FreeConsole( void );












__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleA(
     LPSTR lpConsoleTitle,
     DWORD nSize
    );
__declspec(dllimport)
DWORD
__stdcall
GetConsoleTitleW(
     LPWSTR lpConsoleTitle,
     DWORD nSize
    );






__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleA(
     LPCSTR lpConsoleTitle
    );
__declspec(dllimport)
BOOL
__stdcall
SetConsoleTitleW(
     LPCWSTR lpConsoleTitle
    );






__declspec(dllimport)
BOOL
__stdcall
ReadConsoleA(
     HANDLE hConsoleInput,
     LPVOID lpBuffer,
     DWORD nNumberOfCharsToRead,
     LPDWORD lpNumberOfCharsRead,
     LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
ReadConsoleW(
     HANDLE hConsoleInput,
     LPVOID lpBuffer,
     DWORD nNumberOfCharsToRead,
     LPDWORD lpNumberOfCharsRead,
     LPVOID lpReserved
    );






__declspec(dllimport)
BOOL
__stdcall
WriteConsoleA(
     HANDLE hConsoleOutput,
     const void *lpBuffer,
     DWORD nNumberOfCharsToWrite,
     LPDWORD lpNumberOfCharsWritten,
     LPVOID lpReserved
    );
__declspec(dllimport)
BOOL
__stdcall
WriteConsoleW(
     HANDLE hConsoleOutput,
     const void *lpBuffer,
     DWORD nNumberOfCharsToWrite,
     LPDWORD lpNumberOfCharsWritten,
     LPVOID lpReserved
    );








__declspec(dllimport)
HANDLE
__stdcall
CreateConsoleScreenBuffer(
     DWORD dwDesiredAccess,
     DWORD dwShareMode,
     const SECURITY_ATTRIBUTES *lpSecurityAttributes,
     DWORD dwFlags,
     LPVOID lpScreenBufferData
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleCP(
     UINT wCodePageID
    );

__declspec(dllimport)
UINT
__stdcall
GetConsoleOutputCP( void );

__declspec(dllimport)
BOOL
__stdcall
SetConsoleOutputCP(
     UINT wCodePageID
    );






















































































































































}






















extern "C" {


















































































































typedef struct tagVS_FIXEDFILEINFO
{
    DWORD   dwSignature;            
    DWORD   dwStrucVersion;         
    DWORD   dwFileVersionMS;        
    DWORD   dwFileVersionLS;        
    DWORD   dwProductVersionMS;     
    DWORD   dwProductVersionLS;     
    DWORD   dwFileFlagsMask;        
    DWORD   dwFileFlags;            
    DWORD   dwFileOS;               
    DWORD   dwFileType;             
    DWORD   dwFileSubtype;          
    DWORD   dwFileDateMS;           
    DWORD   dwFileDateLS;           
} VS_FIXEDFILEINFO;



DWORD
__stdcall
VerFindFileA(
        DWORD uFlags,
        LPSTR szFileName,
        LPSTR szWinDir,
        LPSTR szAppDir,
        LPSTR szCurDir,
        PUINT lpuCurDirLen,
        LPSTR szDestDir,
        PUINT lpuDestDirLen
        );
DWORD
__stdcall
VerFindFileW(
        DWORD uFlags,
        LPWSTR szFileName,
        LPWSTR szWinDir,
        LPWSTR szAppDir,
        LPWSTR szCurDir,
        PUINT lpuCurDirLen,
        LPWSTR szDestDir,
        PUINT lpuDestDirLen
        );






DWORD
__stdcall
VerInstallFileA(
        DWORD uFlags,
        LPSTR szSrcFileName,
        LPSTR szDestFileName,
        LPSTR szSrcDir,
        LPSTR szDestDir,
        LPSTR szCurDir,
        LPSTR szTmpFile,
        PUINT lpuTmpFileLen
        );
DWORD
__stdcall
VerInstallFileW(
        DWORD uFlags,
        LPWSTR szSrcFileName,
        LPWSTR szDestFileName,
        LPWSTR szSrcDir,
        LPWSTR szDestDir,
        LPWSTR szCurDir,
        LPWSTR szTmpFile,
        PUINT lpuTmpFileLen
        );







DWORD
__stdcall
GetFileVersionInfoSizeA(
         LPCSTR lptstrFilename, 
           LPDWORD lpdwHandle
    );                      

DWORD
__stdcall
GetFileVersionInfoSizeW(
         LPCWSTR lptstrFilename, 
           LPDWORD lpdwHandle
    );                      







BOOL
__stdcall
GetFileVersionInfoA(
         LPCSTR lptstrFilename, 
         DWORD dwHandle,         
         DWORD dwLen,            
         LPVOID lpData
    );                      

BOOL
__stdcall
GetFileVersionInfoW(
         LPCWSTR lptstrFilename, 
         DWORD dwHandle,         
         DWORD dwLen,            
         LPVOID lpData
    );                      






DWORD
__stdcall
VerLanguageNameA(
        DWORD wLang,
        LPSTR szLang,
        DWORD nSize
        );
DWORD
__stdcall
VerLanguageNameW(
        DWORD wLang,
        LPWSTR szLang,
        DWORD nSize
        );






BOOL
__stdcall
VerQueryValueA(
        const LPVOID pBlock,
        LPSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );
BOOL
__stdcall
VerQueryValueW(
        const LPVOID pBlock,
        LPWSTR lpSubBlock,
        LPVOID * lplpBuffer,
        PUINT puLen
        );









}
































extern "C" {





























typedef ACCESS_MASK REGSAM;



























struct val_context {
    int valuelen;       
    LPVOID value_context;   
    LPVOID val_buff_ptr;    
};

typedef struct val_context  *PVALCONTEXT;

typedef struct pvalueA {           
    LPSTR   pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEA,  *PPVALUEA;
typedef struct pvalueW {           
    LPWSTR  pv_valuename;          
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEW,  *PPVALUEW;




typedef PVALUEA PVALUE;
typedef PPVALUEA PPVALUE;


typedef
DWORD _cdecl
QUERYHANDLER (LPVOID keycontext, PVALCONTEXT val_list, DWORD num_vals,
          LPVOID outputbuffer, DWORD  *total_outlen, DWORD input_blen);

typedef QUERYHANDLER  *PQUERYHANDLER;

typedef struct provider_info {
    PQUERYHANDLER pi_R0_1val;
    PQUERYHANDLER pi_R0_allvals;
    PQUERYHANDLER pi_R3_1val;
    PQUERYHANDLER pi_R3_allvals;
    DWORD pi_flags;    
    LPVOID pi_key_context;
}REG_PROVIDER;

typedef struct provider_info  *PPROVIDER;

typedef struct value_entA {
    LPSTR   ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
}VALENTA,  *PVALENTA;
typedef struct value_entW {
    LPWSTR  ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
}VALENTW,  *PVALENTW;




typedef VALENTA VALENT;
typedef PVALENTA PVALENT;



















__declspec(dllimport)
LONG
__stdcall
RegCloseKey (
         HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegOverridePredefKey (
         HKEY hKey,
           HKEY hNewHKey
    );

__declspec(dllimport)
LONG
__stdcall
RegOpenUserClassesRoot(
         HANDLE hToken,
      DWORD dwOptions,
         REGSAM samDesired,
         PHKEY  phkResult
    );

__declspec(dllimport)
LONG
__stdcall
RegOpenCurrentUser(
         REGSAM samDesired,
         PHKEY phkResult
    );

__declspec(dllimport)
LONG
__stdcall
RegDisablePredefinedCache(
    );

__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryA (
           LPCSTR lpMachineName,
         HKEY hKey,
         PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryW (
           LPCWSTR lpMachineName,
         HKEY hKey,
         PHKEY phkResult
    );






__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryExA (
           LPCSTR lpMachineName,
         HKEY hKey,
         ULONG Flags,
         PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegConnectRegistryExW (
           LPCWSTR lpMachineName,
         HKEY hKey,
         ULONG Flags,
         PHKEY phkResult
    );






__declspec(dllimport)
LONG
__stdcall
RegCreateKeyA (
         HKEY hKey,
           LPCSTR lpSubKey,
         PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyW (
         HKEY hKey,
           LPCWSTR lpSubKey,
         PHKEY phkResult
    );






__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExA (
         HKEY hKey,
         LPCSTR lpSubKey,
      DWORD Reserved,
           LPSTR lpClass,
         DWORD dwOptions,
         REGSAM samDesired,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
         PHKEY phkResult,
           LPDWORD lpdwDisposition
    );
__declspec(dllimport)
LONG
__stdcall
RegCreateKeyExW (
         HKEY hKey,
         LPCWSTR lpSubKey,
      DWORD Reserved,
           LPWSTR lpClass,
         DWORD dwOptions,
         REGSAM samDesired,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
         PHKEY phkResult,
           LPDWORD lpdwDisposition
    );






__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyA (
         HKEY hKey,
         LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyW (
         HKEY hKey,
         LPCWSTR lpSubKey
    );





    
__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyExA (
         HKEY hKey,
         LPCSTR lpSubKey,
         REGSAM samDesired,
      DWORD Reserved
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteKeyExW (
         HKEY hKey,
         LPCWSTR lpSubKey,
         REGSAM samDesired,
      DWORD Reserved
    );






__declspec(dllimport)
LONG
__stdcall
RegDisableReflectionKey (
         HKEY hBase
    );    

__declspec(dllimport)
LONG
__stdcall
RegEnableReflectionKey (
         HKEY hBase
    );    

__declspec(dllimport)
LONG
__stdcall
RegQueryReflectionKey (
         HKEY hBase,
         BOOL *bIsReflectionDisabled
    );    


__declspec(dllimport)
LONG
__stdcall
RegDeleteValueA (
         HKEY hKey,
           LPCSTR lpValueName
    );
__declspec(dllimport)
LONG
__stdcall
RegDeleteValueW (
         HKEY hKey,
           LPCWSTR lpValueName
    );






__declspec(dllimport)
LONG
__stdcall
RegEnumKeyA (
         HKEY hKey,
         DWORD dwIndex,
           LPSTR lpName,
         DWORD cchName
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyW (
         HKEY hKey,
         DWORD dwIndex,
           LPWSTR lpName,
         DWORD cchName
    );






__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExA (
         HKEY hKey,
         DWORD dwIndex,
           LPSTR lpName,
         LPDWORD lpcchName,
      LPDWORD lpReserved,
             LPSTR lpClass,
           LPDWORD lpcchClass,
           PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumKeyExW (
         HKEY hKey,
         DWORD dwIndex,
           LPWSTR lpName,
         LPDWORD lpcchName,
      LPDWORD lpReserved,
             LPWSTR lpClass,
           LPDWORD lpcchClass,
           PFILETIME lpftLastWriteTime
    );






__declspec(dllimport)
LONG
__stdcall
RegEnumValueA (
         HKEY hKey,
         DWORD dwIndex,
           LPSTR lpValueName,
         LPDWORD lpcchValueName,
      LPDWORD lpReserved,
           LPDWORD lpType,
           LPBYTE lpData,
           LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegEnumValueW (
         HKEY hKey,
         DWORD dwIndex,
           LPWSTR lpValueName,
         LPDWORD lpcchValueName,
      LPDWORD lpReserved,
           LPDWORD lpType,
           LPBYTE lpData,
           LPDWORD lpcbData
    );






__declspec(dllimport)
LONG
__stdcall
RegFlushKey (
         HKEY hKey
    );

__declspec(dllimport)
LONG
__stdcall
RegGetKeySecurity (
         HKEY hKey,
         SECURITY_INFORMATION SecurityInformation,
           PSECURITY_DESCRIPTOR pSecurityDescriptor,
         LPDWORD lpcbSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegLoadKeyA (
         HKEY    hKey,
           LPCSTR  lpSubKey,
         LPCSTR  lpFile
    );
__declspec(dllimport)
LONG
__stdcall
RegLoadKeyW (
         HKEY    hKey,
           LPCWSTR  lpSubKey,
         LPCWSTR  lpFile
    );






__declspec(dllimport)
LONG
__stdcall
RegNotifyChangeKeyValue (
         HKEY hKey,
         BOOL bWatchSubtree,
         DWORD dwNotifyFilter,
           HANDLE hEvent,
         BOOL fAsynchronous
    );

__declspec(dllimport)
LONG
__stdcall
RegOpenKeyA (
         HKEY hKey,
           LPCSTR lpSubKey,
         PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyW (
         HKEY hKey,
           LPCWSTR lpSubKey,
         PHKEY phkResult
    );






__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExA (
         HKEY hKey,
           LPCSTR lpSubKey,
      DWORD ulOptions,
         REGSAM samDesired,
         PHKEY phkResult
    );
__declspec(dllimport)
LONG
__stdcall
RegOpenKeyExW (
         HKEY hKey,
           LPCWSTR lpSubKey,
      DWORD ulOptions,
         REGSAM samDesired,
         PHKEY phkResult
    );






__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyA (
         HKEY hKey,
           LPSTR lpClass,
           LPDWORD lpcchClass,
      LPDWORD lpReserved,
           LPDWORD lpcSubKeys,
           LPDWORD lpcbMaxSubKeyLen,
           LPDWORD lpcbMaxClassLen,
           LPDWORD lpcValues,
           LPDWORD lpcbMaxValueNameLen,
           LPDWORD lpcbMaxValueLen,
           LPDWORD lpcbSecurityDescriptor,
           PFILETIME lpftLastWriteTime
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryInfoKeyW (
         HKEY hKey,
           LPWSTR lpClass,
           LPDWORD lpcchClass,
      LPDWORD lpReserved,
           LPDWORD lpcSubKeys,
           LPDWORD lpcbMaxSubKeyLen,
           LPDWORD lpcbMaxClassLen,
           LPDWORD lpcValues,
           LPDWORD lpcbMaxValueNameLen,
           LPDWORD lpcbMaxValueLen,
           LPDWORD lpcbSecurityDescriptor,
           PFILETIME lpftLastWriteTime
    );






__declspec(dllimport)
LONG
__stdcall
RegQueryValueA (
         HKEY hKey,
           LPCSTR lpSubKey,
           LPSTR lpData,
           PLONG lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueW (
         HKEY hKey,
           LPCWSTR lpSubKey,
           LPWSTR lpData,
           PLONG lpcbData
    );







__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesA (
         HKEY hKey,
         PVALENTA val_list,
         DWORD num_vals,
           LPSTR lpValueBuf,
           LPDWORD ldwTotsize
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryMultipleValuesW (
         HKEY hKey,
         PVALENTW val_list,
         DWORD num_vals,
           LPWSTR lpValueBuf,
           LPDWORD ldwTotsize
    );







__declspec(dllimport)
LONG
__stdcall
RegQueryValueExA (
         HKEY hKey,
           LPCSTR lpValueName,
      LPDWORD lpReserved,
           LPDWORD lpType,
           LPBYTE lpData,
           LPDWORD lpcbData
    );
__declspec(dllimport)
LONG
__stdcall
RegQueryValueExW (
         HKEY hKey,
           LPCWSTR lpValueName,
      LPDWORD lpReserved,
           LPDWORD lpType,
           LPBYTE lpData,
           LPDWORD lpcbData
    );






__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyA (
         HKEY hKey,
           LPCSTR lpSubKey,
         LPCSTR lpNewFile,
         LPCSTR lpOldFile
    );
__declspec(dllimport)
LONG
__stdcall
RegReplaceKeyW (
         HKEY hKey,
           LPCWSTR lpSubKey,
         LPCWSTR lpNewFile,
         LPCWSTR lpOldFile
    );






__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyA (
         HKEY hKey,
         LPCSTR lpFile,
         DWORD dwFlags
    );
__declspec(dllimport)
LONG
__stdcall
RegRestoreKeyW (
         HKEY hKey,
         LPCWSTR lpFile,
         DWORD dwFlags
    );






__declspec(dllimport)
LONG
__stdcall
RegSaveKeyA (
         HKEY hKey,
         LPCSTR lpFile,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
__declspec(dllimport)
LONG
__stdcall
RegSaveKeyW (
         HKEY hKey,
         LPCWSTR lpFile,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );






__declspec(dllimport)
LONG
__stdcall
RegSetKeySecurity (
         HKEY hKey,
         SECURITY_INFORMATION SecurityInformation,
         PSECURITY_DESCRIPTOR pSecurityDescriptor
    );

__declspec(dllimport)
LONG
__stdcall
RegSetValueA (
         HKEY hKey,
           LPCSTR lpSubKey,
         DWORD dwType,
             LPCSTR lpData,
         DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueW (
         HKEY hKey,
           LPCWSTR lpSubKey,
         DWORD dwType,
             LPCWSTR lpData,
         DWORD cbData
    );







__declspec(dllimport)
LONG
__stdcall
RegSetValueExA (
         HKEY hKey,
           LPCSTR lpValueName,
      DWORD Reserved,
         DWORD dwType,
             const BYTE* lpData,
         DWORD cbData
    );
__declspec(dllimport)
LONG
__stdcall
RegSetValueExW (
         HKEY hKey,
           LPCWSTR lpValueName,
      DWORD Reserved,
         DWORD dwType,
             const BYTE* lpData,
         DWORD cbData
    );






__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyA (
         HKEY    hKey,
           LPCSTR lpSubKey
    );
__declspec(dllimport)
LONG
__stdcall
RegUnLoadKeyW (
         HKEY    hKey,
           LPCWSTR lpSubKey
    );






__declspec(dllimport)
LONG
__stdcall
RegGetValueA (
         HKEY    hkey,
           LPCSTR  lpSubKey,
           LPCSTR  lpValue,
           DWORD    dwFlags,
           LPDWORD pdwType,
           PVOID   pvData,
           LPDWORD pcbData 
    );
__declspec(dllimport)
LONG
__stdcall
RegGetValueW (
         HKEY    hkey,
           LPCWSTR  lpSubKey,
           LPCWSTR  lpValue,
           DWORD    dwFlags,
           LPDWORD pdwType,
           PVOID   pvData,
           LPDWORD pcbData 
    );










__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownA(
           LPSTR lpMachineName,
           LPSTR lpMessage,
         DWORD dwTimeout,
         BOOL bForceAppsClosed,
         BOOL bRebootAfterShutdown
    );
__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownW(
           LPWSTR lpMachineName,
           LPWSTR lpMessage,
         DWORD dwTimeout,
         BOOL bForceAppsClosed,
         BOOL bRebootAfterShutdown
    );







__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownA(
           LPSTR lpMachineName
    );
__declspec(dllimport)
BOOL
__stdcall
AbortSystemShutdownW(
           LPWSTR lpMachineName
    );


















































































































































__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownExA(
           LPSTR lpMachineName,
           LPSTR lpMessage,
         DWORD dwTimeout,
         BOOL bForceAppsClosed,
         BOOL bRebootAfterShutdown,
         DWORD dwReason
    );
__declspec(dllimport)
BOOL
__stdcall
InitiateSystemShutdownExW(
           LPWSTR lpMachineName,
           LPWSTR lpMessage,
         DWORD dwTimeout,
         BOOL bForceAppsClosed,
         BOOL bRebootAfterShutdown,
         DWORD dwReason
    );







__declspec(dllimport)
LONG
__stdcall
RegSaveKeyExA (
         HKEY hKey,
         LPCSTR lpFile,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
         DWORD Flags
    );
__declspec(dllimport)
LONG
__stdcall
RegSaveKeyExW (
         HKEY hKey,
         LPCWSTR lpFile,
           LPSECURITY_ATTRIBUTES lpSecurityAttributes,
         DWORD Flags
    );






__declspec(dllimport)
LONG
__stdcall
Wow64Win32ApiEntry (
         DWORD dwFuncNumber,
         DWORD dwFlag,
         DWORD dwRes
    );


}




































extern "C" {
















































































































typedef struct  _NETRESOURCEA {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPSTR    lpLocalName;
    LPSTR    lpRemoteName;
    LPSTR    lpComment ;
    LPSTR    lpProvider;
}NETRESOURCEA, *LPNETRESOURCEA;
typedef struct  _NETRESOURCEW {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPWSTR   lpLocalName;
    LPWSTR   lpRemoteName;
    LPWSTR   lpComment ;
    LPWSTR   lpProvider;
}NETRESOURCEW, *LPNETRESOURCEW;




typedef NETRESOURCEA NETRESOURCE;
typedef LPNETRESOURCEA LPNETRESOURCE;




























DWORD __stdcall
WNetAddConnectionA(
      LPCSTR   lpRemoteName,
      LPCSTR   lpPassword,
      LPCSTR   lpLocalName
    );
DWORD __stdcall
WNetAddConnectionW(
      LPCWSTR   lpRemoteName,
      LPCWSTR   lpPassword,
      LPCWSTR   lpLocalName
    );






DWORD __stdcall
WNetAddConnection2A(
      LPNETRESOURCEA lpNetResource,
      LPCSTR       lpPassword,
      LPCSTR       lpUserName,
      DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection2W(
      LPNETRESOURCEW lpNetResource,
      LPCWSTR       lpPassword,
      LPCWSTR       lpUserName,
      DWORD          dwFlags
    );






DWORD __stdcall
WNetAddConnection3A(
      HWND           hwndOwner,
      LPNETRESOURCEA lpNetResource,
      LPCSTR       lpPassword,
      LPCSTR       lpUserName,
      DWORD          dwFlags
    );
DWORD __stdcall
WNetAddConnection3W(
      HWND           hwndOwner,
      LPNETRESOURCEW lpNetResource,
      LPCWSTR       lpPassword,
      LPCWSTR       lpUserName,
      DWORD          dwFlags
    );






DWORD __stdcall
WNetCancelConnectionA(
      LPCSTR lpName,
      BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnectionW(
      LPCWSTR lpName,
      BOOL     fForce
    );






DWORD __stdcall
WNetCancelConnection2A(
      LPCSTR lpName,
      DWORD    dwFlags,
      BOOL     fForce
    );
DWORD __stdcall
WNetCancelConnection2W(
      LPCWSTR lpName,
      DWORD    dwFlags,
      BOOL     fForce
    );






DWORD __stdcall
WNetGetConnectionA(
      LPCSTR lpLocalName,
      LPSTR  lpRemoteName,
       LPDWORD  lpnLength
    );
DWORD __stdcall
WNetGetConnectionW(
      LPCWSTR lpLocalName,
      LPWSTR  lpRemoteName,
       LPDWORD  lpnLength
    );







DWORD __stdcall
WNetRestoreConnectionA(
     HWND     hwndParent,
     LPCSTR lpDevice
    );
DWORD __stdcall
WNetRestoreConnectionW(
     HWND     hwndParent,
     LPCWSTR lpDevice
    );








DWORD __stdcall
WNetUseConnectionA(
     HWND            hwndOwner,
     LPNETRESOURCEA  lpNetResource,
     LPCSTR        lpPassword,
     LPCSTR        lpUserID,
     DWORD           dwFlags,
     LPSTR        lpAccessName,
      LPDWORD     lpBufferSize,
     LPDWORD        lpResult
    );
DWORD __stdcall
WNetUseConnectionW(
     HWND            hwndOwner,
     LPNETRESOURCEW  lpNetResource,
     LPCWSTR        lpPassword,
     LPCWSTR        lpUserID,
     DWORD           dwFlags,
     LPWSTR        lpAccessName,
      LPDWORD     lpBufferSize,
     LPDWORD        lpResult
    );












DWORD __stdcall
WNetConnectionDialog(
     HWND  hwnd,
     DWORD dwType
    );

DWORD __stdcall
WNetDisconnectDialog(
     HWND  hwnd,
     DWORD dwType
    );


typedef struct _CONNECTDLGSTRUCTA{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEA lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTA,  *LPCONNECTDLGSTRUCTA;
typedef struct _CONNECTDLGSTRUCTW{
    DWORD cbStructure;       
    HWND hwndOwner;          
    LPNETRESOURCEW lpConnRes;
    DWORD dwFlags;           
    DWORD dwDevNum;          
} CONNECTDLGSTRUCTW,  *LPCONNECTDLGSTRUCTW;




typedef CONNECTDLGSTRUCTA CONNECTDLGSTRUCT;
typedef LPCONNECTDLGSTRUCTA LPCONNECTDLGSTRUCT;















DWORD __stdcall
WNetConnectionDialog1A(
      LPCONNECTDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetConnectionDialog1W(
      LPCONNECTDLGSTRUCTW lpConnDlgStruct
    );






typedef struct _DISCDLGSTRUCTA{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPSTR           lpLocalName;      
    LPSTR           lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTA,  *LPDISCDLGSTRUCTA;
typedef struct _DISCDLGSTRUCTW{
    DWORD           cbStructure;      
    HWND            hwndOwner;        
    LPWSTR          lpLocalName;      
    LPWSTR          lpRemoteName;     
    DWORD           dwFlags;          
} DISCDLGSTRUCTW,  *LPDISCDLGSTRUCTW;




typedef DISCDLGSTRUCTA DISCDLGSTRUCT;
typedef LPDISCDLGSTRUCTA LPDISCDLGSTRUCT;





DWORD __stdcall
WNetDisconnectDialog1A(
     LPDISCDLGSTRUCTA lpConnDlgStruct
    );
DWORD __stdcall
WNetDisconnectDialog1W(
     LPDISCDLGSTRUCTW lpConnDlgStruct
    );











DWORD __stdcall
WNetOpenEnumA(
      DWORD          dwScope,
      DWORD          dwType,
      DWORD          dwUsage,
      LPNETRESOURCEA lpNetResource,
      LPHANDLE       lphEnum
    );
DWORD __stdcall
WNetOpenEnumW(
      DWORD          dwScope,
      DWORD          dwType,
      DWORD          dwUsage,
      LPNETRESOURCEW lpNetResource,
      LPHANDLE       lphEnum
    );






DWORD __stdcall
WNetEnumResourceA(
      HANDLE  hEnum,
       LPDWORD lpcCount,
      LPVOID  lpBuffer,
       LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetEnumResourceW(
      HANDLE  hEnum,
       LPDWORD lpcCount,
      LPVOID  lpBuffer,
       LPDWORD lpBufferSize
    );






DWORD __stdcall
WNetCloseEnum(
     HANDLE   hEnum
    );


DWORD __stdcall
WNetGetResourceParentA(
     LPNETRESOURCEA lpNetResource,
     LPVOID lpBuffer,
      LPDWORD lpcbBuffer
    );
DWORD __stdcall
WNetGetResourceParentW(
     LPNETRESOURCEW lpNetResource,
     LPVOID lpBuffer,
      LPDWORD lpcbBuffer
    );






DWORD __stdcall
WNetGetResourceInformationA(
     LPNETRESOURCEA  lpNetResource,
     LPVOID          lpBuffer,
      LPDWORD         lpcbBuffer,
     LPSTR         *lplpSystem
    );
DWORD __stdcall
WNetGetResourceInformationW(
     LPNETRESOURCEW  lpNetResource,
     LPVOID          lpBuffer,
      LPDWORD         lpcbBuffer,
     LPWSTR         *lplpSystem
    );














typedef struct  _UNIVERSAL_NAME_INFOA {
    LPSTR    lpUniversalName;
}UNIVERSAL_NAME_INFOA, *LPUNIVERSAL_NAME_INFOA;
typedef struct  _UNIVERSAL_NAME_INFOW {
    LPWSTR   lpUniversalName;
}UNIVERSAL_NAME_INFOW, *LPUNIVERSAL_NAME_INFOW;




typedef UNIVERSAL_NAME_INFOA UNIVERSAL_NAME_INFO;
typedef LPUNIVERSAL_NAME_INFOA LPUNIVERSAL_NAME_INFO;


typedef struct  _REMOTE_NAME_INFOA {
    LPSTR    lpUniversalName;
    LPSTR    lpConnectionName;
    LPSTR    lpRemainingPath;
}REMOTE_NAME_INFOA, *LPREMOTE_NAME_INFOA;
typedef struct  _REMOTE_NAME_INFOW {
    LPWSTR   lpUniversalName;
    LPWSTR   lpConnectionName;
    LPWSTR   lpRemainingPath;
}REMOTE_NAME_INFOW, *LPREMOTE_NAME_INFOW;




typedef REMOTE_NAME_INFOA REMOTE_NAME_INFO;
typedef LPREMOTE_NAME_INFOA LPREMOTE_NAME_INFO;


DWORD __stdcall
WNetGetUniversalNameA(
      LPCSTR lpLocalPath,
      DWORD    dwInfoLevel,
      LPVOID   lpBuffer,
       LPDWORD  lpBufferSize
     );
DWORD __stdcall
WNetGetUniversalNameW(
      LPCWSTR lpLocalPath,
      DWORD    dwInfoLevel,
      LPVOID   lpBuffer,
       LPDWORD  lpBufferSize
     );










DWORD __stdcall
WNetGetUserA(
      LPCSTR  lpName,
      LPSTR   lpUserName,
       LPDWORD   lpnLength
    );
DWORD __stdcall
WNetGetUserW(
      LPCWSTR  lpName,
      LPWSTR   lpUserName,
       LPDWORD   lpnLength
    );




















DWORD __stdcall
WNetGetProviderNameA(
     DWORD   dwNetType,
     LPSTR lpProviderName,
      LPDWORD lpBufferSize
    );
DWORD __stdcall
WNetGetProviderNameW(
     DWORD   dwNetType,
     LPWSTR lpProviderName,
      LPDWORD lpBufferSize
    );






typedef struct _NETINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwProviderVersion;
    DWORD dwStatus;
    DWORD dwCharacteristics;
    ULONG_PTR dwHandle;
    WORD  wNetType;
    DWORD dwPrinters;
    DWORD dwDrives;
} NETINFOSTRUCT,  *LPNETINFOSTRUCT;





DWORD __stdcall
WNetGetNetworkInformationA(
     LPCSTR          lpProvider,
     LPNETINFOSTRUCT   lpNetInfoStruct
    );
DWORD __stdcall
WNetGetNetworkInformationW(
     LPCWSTR          lpProvider,
     LPNETINFOSTRUCT   lpNetInfoStruct
    );










typedef UINT ( __stdcall *PFNGETPROFILEPATHA) (
    LPCSTR    pszUsername,
    LPSTR     pszBuffer,
    UINT        cbBuffer
    );
typedef UINT ( __stdcall *PFNGETPROFILEPATHW) (
    LPCWSTR    pszUsername,
    LPWSTR     pszBuffer,
    UINT        cbBuffer
    );






typedef UINT ( __stdcall *PFNRECONCILEPROFILEA) (
    LPCSTR    pszCentralFile,
    LPCSTR    pszLocalFile,
    DWORD       dwFlags
    );
typedef UINT ( __stdcall *PFNRECONCILEPROFILEW) (
    LPCWSTR    pszCentralFile,
    LPCWSTR    pszLocalFile,
    DWORD       dwFlags
    );














typedef BOOL ( __stdcall *PFNPROCESSPOLICIESA) (
    HWND        hwnd,
    LPCSTR    pszPath,
    LPCSTR    pszUsername,
    LPCSTR    pszComputerName,
    DWORD       dwFlags
    );
typedef BOOL ( __stdcall *PFNPROCESSPOLICIESW) (
    HWND        hwnd,
    LPCWSTR    pszPath,
    LPCWSTR    pszUsername,
    LPCWSTR    pszComputerName,
    DWORD       dwFlags
    );













DWORD __stdcall
WNetGetLastErrorA(
      LPDWORD    lpError,
      LPSTR    lpErrorBuf,
      DWORD      nErrorBufSize,
      LPSTR    lpNameBuf,
      DWORD      nNameBufSize
    );
DWORD __stdcall
WNetGetLastErrorW(
      LPDWORD    lpError,
      LPWSTR    lpErrorBuf,
      DWORD      nErrorBufSize,
      LPWSTR    lpNameBuf,
      DWORD      nNameBufSize
    );











































































typedef struct _NETCONNECTINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwFlags;
    DWORD dwSpeed;
    DWORD dwDelay;
    DWORD dwOptDataSize;
} NETCONNECTINFOSTRUCT,  *LPNETCONNECTINFOSTRUCT;






DWORD __stdcall
MultinetGetConnectionPerformanceA(
         LPNETRESOURCEA lpNetResource,
         LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );
DWORD __stdcall
MultinetGetConnectionPerformanceW(
         LPNETRESOURCEW lpNetResource,
         LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
        );








}























#pragma once




























































#pragma once







extern "C" {





























typedef struct {

        unsigned short bAppReturnCode:8,
                 reserved:6,
                 fBusy:1,
		 fAck:1;



} DDEACK;









typedef struct {

        unsigned short reserved:14,
                 fDeferUpd:1,
		 fAckReq:1;



	short     cfFormat;
} DDEADVISE;











typedef struct {

	unsigned short unused:12,
                 fResponse:1,
                 fRelease:1,
                 reserved:1,
                 fAckReq:1;



	short	 cfFormat;
	BYTE	 Value[1];
} DDEDATA;











typedef struct {

	unsigned short unused:13,  
                             
		 fRelease:1,
		 fReserved:2;



	short    cfFormat;
	BYTE	 Value[1];  
                            

} DDEPOKE;











typedef struct {

        unsigned short unused:13,
                 fRelease:1,
                 fDeferUpd:1,
		 fAckReq:1;



	short	 cfFormat;
} DDELN;

typedef struct {

	unsigned short unused:12,
                 fAck:1,
                 fRelease:1,
                 fReserved:1,
                 fAckReq:1;



	short	 cfFormat;
	BYTE	 rgb[1];
} DDEUP;






BOOL
__stdcall
DdeSetQualityOfService(
    HWND hwndClient,
    const SECURITY_QUALITY_OF_SERVICE *pqosNew,
    PSECURITY_QUALITY_OF_SERVICE pqosPrev);

BOOL
__stdcall
ImpersonateDdeClientWindow(
    HWND hWndClient,
    HWND hWndServer);




LPARAM __stdcall PackDDElParam(UINT msg, UINT_PTR uiLo, UINT_PTR uiHi);
BOOL   __stdcall UnpackDDElParam(UINT msg, LPARAM lParam, PUINT_PTR puiLo, PUINT_PTR puiHi);
BOOL   __stdcall FreeDDElParam(UINT msg, LPARAM lParam);
LPARAM __stdcall ReuseDDElParam(LPARAM lParam, UINT msgIn, UINT msgOut, UINT_PTR uiLo, UINT_PTR uiHi);


}





















extern "C" {




struct HCONVLIST__ { int unused; }; typedef struct HCONVLIST__ *HCONVLIST;
struct HCONV__ { int unused; }; typedef struct HCONV__ *HCONV;
struct HSZ__ { int unused; }; typedef struct HSZ__ *HSZ;
struct HDDEDATA__ { int unused; }; typedef struct HDDEDATA__ *HDDEDATA;




typedef struct tagHSZPAIR {
    HSZ hszSvc;
    HSZ hszTopic;
} HSZPAIR;
typedef HSZPAIR  *PHSZPAIR;




typedef struct tagCONVCONTEXT {
    UINT        cb;             
    UINT        wFlags;         
    UINT        wCountryID;     
    int         iCodePage;      
    DWORD       dwLangID;       
    DWORD       dwSecurity;     
    SECURITY_QUALITY_OF_SERVICE qos;  
} CONVCONTEXT;
typedef CONVCONTEXT  *PCONVCONTEXT;




typedef struct tagCONVINFO {
    DWORD   cb;            
    DWORD_PTR hUser;       
    HCONV   hConvPartner;  
    HSZ     hszSvcPartner; 
    HSZ     hszServiceReq; 
    HSZ     hszTopic;      
    HSZ     hszItem;       
    UINT    wFmt;          
    UINT    wType;         
    UINT    wStatus;       
    UINT    wConvst;       
    UINT    wLastError;    
    HCONVLIST hConvList;   
    CONVCONTEXT ConvCtxt;  
    HWND    hwnd;          
    HWND    hwndPartner;   
} CONVINFO;
typedef CONVINFO  *PCONVINFO;


































































































































typedef HDDEDATA __stdcall FNCALLBACK(UINT wType, UINT wFmt, HCONV hConv,
        HSZ hsz1, HSZ hsz2, HDDEDATA hData, ULONG_PTR dwData1, ULONG_PTR dwData2);
typedef HDDEDATA (__stdcall *PFNCALLBACK)(UINT wType, UINT wFmt, HCONV hConv,
        HSZ hsz1, HSZ hsz2, HDDEDATA hData, ULONG_PTR dwData1, ULONG_PTR dwData2);





UINT __stdcall DdeInitializeA(   LPDWORD pidInst,  PFNCALLBACK pfnCallback,
         DWORD afCmd,  DWORD ulRes);
UINT __stdcall DdeInitializeW(   LPDWORD pidInst,  PFNCALLBACK pfnCallback,
         DWORD afCmd,  DWORD ulRes);





































BOOL __stdcall DdeUninitialize(  DWORD idInst);





HCONVLIST __stdcall DdeConnectList(  DWORD idInst,  HSZ hszService,  HSZ hszTopic,
         HCONVLIST hConvList,  PCONVCONTEXT pCC);
HCONV __stdcall DdeQueryNextServer(  HCONVLIST hConvList,  HCONV hConvPrev);
BOOL __stdcall DdeDisconnectList(  HCONVLIST hConvList);





HCONV __stdcall DdeConnect(  DWORD idInst,  HSZ hszService,  HSZ hszTopic,
         PCONVCONTEXT pCC);
BOOL __stdcall DdeDisconnect(   HCONV hConv);
HCONV __stdcall DdeReconnect(  HCONV hConv);
UINT __stdcall DdeQueryConvInfo(  HCONV hConv,  DWORD idTransaction,   PCONVINFO pConvInfo);
BOOL __stdcall DdeSetUserHandle(  HCONV hConv,  DWORD id,  DWORD_PTR hUser);
BOOL __stdcall DdeAbandonTransaction(  DWORD idInst,  HCONV hConv,  DWORD idTransaction);






BOOL __stdcall DdePostAdvise(  DWORD idInst,  HSZ hszTopic,  HSZ hszItem);
BOOL __stdcall DdeEnableCallback(  DWORD idInst,  HCONV hConv,  UINT wCmd);
BOOL __stdcall DdeImpersonateClient(  HCONV hConv);






HDDEDATA __stdcall DdeNameService(  DWORD idInst,  HSZ hsz1,  HSZ hsz2,  UINT afCmd);










HDDEDATA __stdcall DdeClientTransaction(  LPBYTE pData,  DWORD cbData,
         HCONV hConv,  HSZ hszItem,  UINT wFmt,  UINT wType,
         DWORD dwTimeout,  LPDWORD pdwResult);





HDDEDATA __stdcall DdeCreateDataHandle(  DWORD idInst,  LPBYTE pSrc,  DWORD cb,
         DWORD cbOff,  HSZ hszItem,  UINT wFmt,  UINT afCmd);
HDDEDATA __stdcall DdeAddData(  HDDEDATA hData,  LPBYTE pSrc,  DWORD cb,  DWORD cbOff);
DWORD __stdcall DdeGetData(  HDDEDATA hData,  LPBYTE pDst,  DWORD cbMax,  DWORD cbOff);
LPBYTE __stdcall DdeAccessData(  HDDEDATA hData,  LPDWORD pcbDataSize);
BOOL __stdcall DdeUnaccessData(  HDDEDATA hData);
BOOL __stdcall DdeFreeDataHandle(   HDDEDATA hData);




UINT __stdcall DdeGetLastError(  DWORD idInst);


























HSZ  __stdcall DdeCreateStringHandleA(  DWORD idInst,  LPCSTR psz,  int iCodePage);
HSZ  __stdcall DdeCreateStringHandleW(  DWORD idInst,  LPCWSTR psz,  int iCodePage);





DWORD __stdcall DdeQueryStringA(  DWORD idInst,  HSZ hsz,   LPSTR psz,  DWORD cchMax,  int iCodePage);
DWORD __stdcall DdeQueryStringW(  DWORD idInst,  HSZ hsz,   LPWSTR psz,  DWORD cchMax,  int iCodePage);





BOOL __stdcall DdeFreeStringHandle(  DWORD idInst,   HSZ hsz);
BOOL __stdcall DdeKeepStringHandle(  DWORD idInst,   HSZ hsz);
int __stdcall DdeCmpStringHandles(  HSZ hsz1,  HSZ hsz2);







typedef struct tagDDEML_MSG_HOOK_DATA {    
    UINT_PTR uiLo;  
    UINT_PTR uiHi;
    DWORD cbData;   
    DWORD Data[8];  
} DDEML_MSG_HOOK_DATA, *PDDEML_MSG_HOOK_DATA;


typedef struct tagMONMSGSTRUCT {
    UINT    cb;
    HWND    hwndTo;
    DWORD   dwTime;
    HANDLE  hTask;
    UINT    wMsg;
    WPARAM  wParam;
    LPARAM  lParam;
    DDEML_MSG_HOOK_DATA dmhd;       
} MONMSGSTRUCT, *PMONMSGSTRUCT;

typedef struct tagMONCBSTRUCT {
    UINT   cb;
    DWORD  dwTime;
    HANDLE hTask;
    DWORD  dwRet;
    UINT   wType;
    UINT   wFmt;
    HCONV  hConv;
    HSZ    hsz1;
    HSZ    hsz2;
    HDDEDATA hData;
    ULONG_PTR dwData1;
    ULONG_PTR dwData2;
    CONVCONTEXT cc;                 
    DWORD  cbData;                  
    DWORD  Data[8];                 
} MONCBSTRUCT, *PMONCBSTRUCT;

typedef struct tagMONHSZSTRUCTA {
    UINT   cb;
    BOOL   fsAction;    
    DWORD  dwTime;
    HSZ    hsz;
    HANDLE hTask;
    CHAR    str[1];
} MONHSZSTRUCTA, *PMONHSZSTRUCTA;
typedef struct tagMONHSZSTRUCTW {
    UINT   cb;
    BOOL   fsAction;    
    DWORD  dwTime;
    HSZ    hsz;
    HANDLE hTask;
    WCHAR   str[1];
} MONHSZSTRUCTW, *PMONHSZSTRUCTW;




typedef MONHSZSTRUCTA MONHSZSTRUCT;
typedef PMONHSZSTRUCTA PMONHSZSTRUCT;







typedef struct tagMONERRSTRUCT {
    UINT    cb;
    UINT    wLastError;
    DWORD   dwTime;
    HANDLE  hTask;
} MONERRSTRUCT, *PMONERRSTRUCT;

typedef struct tagMONLINKSTRUCT {
    UINT    cb;
    DWORD   dwTime;
    HANDLE  hTask;
    BOOL    fEstablished;
    BOOL    fNoData;
    HSZ     hszSvc;
    HSZ     hszTopic;
    HSZ     hszItem;
    UINT    wFmt;
    BOOL    fServer;
    HCONV   hConvServer;
    HCONV   hConvClient;
} MONLINKSTRUCT, *PMONLINKSTRUCT;

typedef struct tagMONCONVSTRUCT {
    UINT    cb;
    BOOL    fConnect;
    DWORD   dwTime;
    HANDLE  hTask;
    HSZ     hszSvc;
    HSZ     hszTopic;
    HCONV   hConvClient;        
    HCONV   hConvServer;        
} MONCONVSTRUCT, *PMONCONVSTRUCT;





















}













































































































































































































































































typedef struct tagCRGB
{
    BYTE    bRed;
    BYTE    bGreen;
    BYTE    bBlue;
    BYTE    bExtra;
} CRGB;           





























extern "C" {




















INT
__stdcall
LZStart(
	void
	);

void
__stdcall
LZDone(
	void
	);

LONG
__stdcall
CopyLZFile(
	INT,
	INT
	);

LONG
__stdcall
LZCopy(
	INT,
	INT
	);

INT
__stdcall
LZInit(
	INT
	);

INT
__stdcall
GetExpandedNameA(
	LPSTR,
	LPSTR
	);
INT
__stdcall
GetExpandedNameW(
	LPWSTR,
	LPWSTR
	);






INT
__stdcall
LZOpenFileA(
	LPSTR,
	LPOFSTRUCT,
	WORD
	);
INT
__stdcall
LZOpenFileW(
	LPWSTR,
	LPOFSTRUCT,
	WORD
	);






LONG
__stdcall
LZSeek(
	INT,
	LONG,
	INT
	);

INT
__stdcall
LZRead(
	INT,
	LPSTR,
	INT
	);

void
__stdcall
LZClose(
	INT
	);


}































































#pragma warning(disable:4103)

#pragma pack(push,1)















extern "C" {            




























































typedef UINT        MMVERSION;  



typedef UINT        MMRESULT;   
                                


typedef UINT    *LPUINT;




typedef struct mmtime_tag
{
    UINT            wType;      
    union
    {
        DWORD       ms;         
        DWORD       sample;     
        DWORD       cb;         
        DWORD       ticks;      

        
        struct
        {
            BYTE    hour;       
            BYTE    min;        
            BYTE    sec;        
            BYTE    frame;      
            BYTE    fps;        
            BYTE    dummy;      

            BYTE    pad[2];

        } smpte;

        
        struct
        {
            DWORD songptrpos;   
        } midi;
    } u;
} MMTIME, *PMMTIME,  *NPMMTIME,  *LPMMTIME;

























































 
 
 
 












 


















































                                                   
                                                   












struct HDRVR__ { int unused; }; typedef struct HDRVR__ *HDRVR;











typedef struct DRVCONFIGINFOEX {
    DWORD   dwDCISize;
    LPCWSTR  lpszDCISectionName;
    LPCWSTR  lpszDCIAliasName;
    DWORD    dnDevNode;
} DRVCONFIGINFOEX, *PDRVCONFIGINFOEX,  *NPDRVCONFIGINFOEX,  *LPDRVCONFIGINFOEX;
































typedef struct tagDRVCONFIGINFO {
    DWORD   dwDCISize;
    LPCWSTR  lpszDCISectionName;
    LPCWSTR  lpszDCIAliasName;
} DRVCONFIGINFO, *PDRVCONFIGINFO,  *NPDRVCONFIGINFO,  *LPDRVCONFIGINFO;
















typedef LRESULT (__stdcall* DRIVERPROC)(DWORD_PTR, HDRVR, UINT, LPARAM, LPARAM);

__declspec(dllimport) LRESULT   __stdcall CloseDriver(  HDRVR hDriver,  LPARAM lParam1,  LPARAM lParam2);
__declspec(dllimport) HDRVR     __stdcall OpenDriver(  LPCWSTR szDriverName,  LPCWSTR szSectionName,  LPARAM lParam2);
__declspec(dllimport) LRESULT   __stdcall SendDriverMessage(  HDRVR hDriver,  UINT message,  LPARAM lParam1,  LPARAM lParam2);
__declspec(dllimport) HMODULE   __stdcall DrvGetModuleHandle(  HDRVR hDriver);
__declspec(dllimport) HMODULE   __stdcall GetDriverModuleHandle(  HDRVR hDriver);
__declspec(dllimport) LRESULT   __stdcall DefDriverProc(  DWORD_PTR dwDriverIdentifier,  HDRVR hdrvr,  UINT uMsg,  LPARAM lParam1,  LPARAM lParam2);










































typedef void (__stdcall DRVCALLBACK)(HDRVR hdrvr, UINT uMsg, DWORD_PTR dwUser, DWORD_PTR dw1, DWORD_PTR dw2);

typedef DRVCALLBACK  *LPDRVCALLBACK;

typedef DRVCALLBACK     *PDRVCALLBACK;





























__declspec(dllimport) BOOL __stdcall sndPlaySoundA(  LPCSTR pszSound,  UINT fuSound);
__declspec(dllimport) BOOL __stdcall sndPlaySoundW(  LPCWSTR pszSound,  UINT fuSound);













































__declspec(dllimport) BOOL __stdcall PlaySoundA(  LPCSTR pszSound,  HMODULE hmod,  DWORD fdwSound);
__declspec(dllimport) BOOL __stdcall PlaySoundW(  LPCWSTR pszSound,  HMODULE hmod,  DWORD fdwSound);



























struct HWAVE__ { int unused; }; typedef struct HWAVE__ *HWAVE;
struct HWAVEIN__ { int unused; }; typedef struct HWAVEIN__ *HWAVEIN;
struct HWAVEOUT__ { int unused; }; typedef struct HWAVEOUT__ *HWAVEOUT;
typedef HWAVEIN  *LPHWAVEIN;
typedef HWAVEOUT  *LPHWAVEOUT;
typedef DRVCALLBACK WAVECALLBACK;
typedef WAVECALLBACK  *LPWAVECALLBACK;






















typedef struct wavehdr_tag {
    LPSTR       lpData;                 
    DWORD       dwBufferLength;         
    DWORD       dwBytesRecorded;        
    DWORD_PTR   dwUser;                 
    DWORD       dwFlags;                
    DWORD       dwLoops;                
    struct wavehdr_tag  *lpNext;     
    DWORD_PTR   reserved;               
} WAVEHDR, *PWAVEHDR,  *NPWAVEHDR,  *LPWAVEHDR;











typedef struct tagWAVEOUTCAPSA {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
} WAVEOUTCAPSA, *PWAVEOUTCAPSA, *NPWAVEOUTCAPSA, *LPWAVEOUTCAPSA;
typedef struct tagWAVEOUTCAPSW {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
} WAVEOUTCAPSW, *PWAVEOUTCAPSW, *NPWAVEOUTCAPSW, *LPWAVEOUTCAPSW;






typedef WAVEOUTCAPSA WAVEOUTCAPS;
typedef PWAVEOUTCAPSA PWAVEOUTCAPS;
typedef NPWAVEOUTCAPSA NPWAVEOUTCAPS;
typedef LPWAVEOUTCAPSA LPWAVEOUTCAPS;

typedef struct tagWAVEOUTCAPS2A {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
    GUID    ManufacturerGuid;      
    GUID    ProductGuid;           
    GUID    NameGuid;              
} WAVEOUTCAPS2A, *PWAVEOUTCAPS2A, *NPWAVEOUTCAPS2A, *LPWAVEOUTCAPS2A;
typedef struct tagWAVEOUTCAPS2W {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    DWORD   dwFormats;             
    WORD    wChannels;             
    WORD    wReserved1;            
    DWORD   dwSupport;             
    GUID    ManufacturerGuid;      
    GUID    ProductGuid;           
    GUID    NameGuid;              
} WAVEOUTCAPS2W, *PWAVEOUTCAPS2W, *NPWAVEOUTCAPS2W, *LPWAVEOUTCAPS2W;






typedef WAVEOUTCAPS2A WAVEOUTCAPS2;
typedef PWAVEOUTCAPS2A PWAVEOUTCAPS2;
typedef NPWAVEOUTCAPS2A NPWAVEOUTCAPS2;
typedef LPWAVEOUTCAPS2A LPWAVEOUTCAPS2;


























typedef struct tagWAVEINCAPSA {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    CHAR    szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
} WAVEINCAPSA, *PWAVEINCAPSA, *NPWAVEINCAPSA, *LPWAVEINCAPSA;
typedef struct tagWAVEINCAPSW {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    WCHAR   szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
} WAVEINCAPSW, *PWAVEINCAPSW, *NPWAVEINCAPSW, *LPWAVEINCAPSW;






typedef WAVEINCAPSA WAVEINCAPS;
typedef PWAVEINCAPSA PWAVEINCAPS;
typedef NPWAVEINCAPSA NPWAVEINCAPS;
typedef LPWAVEINCAPSA LPWAVEINCAPS;

typedef struct tagWAVEINCAPS2A {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    CHAR    szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
    GUID    ManufacturerGuid;        
    GUID    ProductGuid;             
    GUID    NameGuid;                
} WAVEINCAPS2A, *PWAVEINCAPS2A, *NPWAVEINCAPS2A, *LPWAVEINCAPS2A;
typedef struct tagWAVEINCAPS2W {
    WORD    wMid;                    
    WORD    wPid;                    
    MMVERSION vDriverVersion;        
    WCHAR   szPname[32];    
    DWORD   dwFormats;               
    WORD    wChannels;               
    WORD    wReserved1;              
    GUID    ManufacturerGuid;        
    GUID    ProductGuid;             
    GUID    NameGuid;                
} WAVEINCAPS2W, *PWAVEINCAPS2W, *NPWAVEINCAPS2W, *LPWAVEINCAPS2W;






typedef WAVEINCAPS2A WAVEINCAPS2;
typedef PWAVEINCAPS2A PWAVEINCAPS2;
typedef NPWAVEINCAPS2A NPWAVEINCAPS2;
typedef LPWAVEINCAPS2A LPWAVEINCAPS2;













































typedef struct waveformat_tag {
    WORD    wFormatTag;        
    WORD    nChannels;         
    DWORD   nSamplesPerSec;    
    DWORD   nAvgBytesPerSec;   
    WORD    nBlockAlign;       
} WAVEFORMAT, *PWAVEFORMAT,  *NPWAVEFORMAT,  *LPWAVEFORMAT;






typedef struct pcmwaveformat_tag {
    WAVEFORMAT  wf;
    WORD        wBitsPerSample;
} PCMWAVEFORMAT, *PPCMWAVEFORMAT,  *NPPCMWAVEFORMAT,  *LPPCMWAVEFORMAT;









typedef struct tWAVEFORMATEX
{
    WORD        wFormatTag;         
    WORD        nChannels;          
    DWORD       nSamplesPerSec;     
    DWORD       nAvgBytesPerSec;    
    WORD        nBlockAlign;        
    WORD        wBitsPerSample;     
    WORD        cbSize;             
                                    
} WAVEFORMATEX, *PWAVEFORMATEX,  *NPWAVEFORMATEX,  *LPWAVEFORMATEX;


typedef const WAVEFORMATEX  *LPCWAVEFORMATEX;


__declspec(dllimport) UINT __stdcall waveOutGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall waveOutGetDevCapsA(  UINT_PTR uDeviceID,  LPWAVEOUTCAPSA pwoc,  UINT cbwoc);
__declspec(dllimport) MMRESULT __stdcall waveOutGetDevCapsW(  UINT_PTR uDeviceID,  LPWAVEOUTCAPSW pwoc,  UINT cbwoc);











__declspec(dllimport) MMRESULT __stdcall waveOutGetVolume(  HWAVEOUT hwo,  LPDWORD pdwVolume);
__declspec(dllimport) MMRESULT __stdcall waveOutSetVolume(  HWAVEOUT hwo,  DWORD dwVolume);







__declspec(dllimport) MMRESULT __stdcall waveOutGetErrorTextA(  MMRESULT mmrError,  LPSTR pszText,  UINT cchText);
__declspec(dllimport) MMRESULT __stdcall waveOutGetErrorTextW(  MMRESULT mmrError,  LPWSTR pszText,  UINT cchText);










__declspec(dllimport) MMRESULT __stdcall waveOutOpen(  LPHWAVEOUT phwo,  UINT uDeviceID,
     LPCWAVEFORMATEX pwfx,  DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);

__declspec(dllimport) MMRESULT __stdcall waveOutClose(   HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutPrepareHeader(  HWAVEOUT hwo,   LPWAVEHDR pwh,  UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutUnprepareHeader(  HWAVEOUT hwo,   LPWAVEHDR pwh,  UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutWrite(  HWAVEOUT hwo,   LPWAVEHDR pwh,  UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveOutPause(  HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutRestart(  HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutReset(  HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutBreakLoop(  HWAVEOUT hwo);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPosition(  HWAVEOUT hwo,   LPMMTIME pmmt,  UINT cbmmt);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPitch(  HWAVEOUT hwo,  LPDWORD pdwPitch);
__declspec(dllimport) MMRESULT __stdcall waveOutSetPitch(  HWAVEOUT hwo,  DWORD dwPitch);
__declspec(dllimport) MMRESULT __stdcall waveOutGetPlaybackRate(  HWAVEOUT hwo,  LPDWORD pdwRate);
__declspec(dllimport) MMRESULT __stdcall waveOutSetPlaybackRate(  HWAVEOUT hwo,  DWORD dwRate);
__declspec(dllimport) MMRESULT __stdcall waveOutGetID(  HWAVEOUT hwo,  LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall waveOutMessage(  HWAVEOUT hwo,  UINT uMsg,  DWORD_PTR dw1,  DWORD_PTR dw2);





__declspec(dllimport) UINT __stdcall waveInGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall waveInGetDevCapsA(  UINT_PTR uDeviceID,  LPWAVEINCAPSA pwic,  UINT cbwic);
__declspec(dllimport) MMRESULT __stdcall waveInGetDevCapsW(  UINT_PTR uDeviceID,  LPWAVEINCAPSW pwic,  UINT cbwic);












__declspec(dllimport) MMRESULT __stdcall waveInGetErrorTextA( MMRESULT mmrError,  LPSTR pszText,  UINT cchText);
__declspec(dllimport) MMRESULT __stdcall waveInGetErrorTextW( MMRESULT mmrError,  LPWSTR pszText,  UINT cchText);










__declspec(dllimport) MMRESULT __stdcall waveInOpen(  LPHWAVEIN phwi,  UINT uDeviceID,
     LPCWAVEFORMATEX pwfx,  DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);

__declspec(dllimport) MMRESULT __stdcall waveInClose(   HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInPrepareHeader(  HWAVEIN hwi,   LPWAVEHDR pwh,  UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInUnprepareHeader(  HWAVEIN hwi,   LPWAVEHDR pwh, UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInAddBuffer(  HWAVEIN hwi,   LPWAVEHDR pwh,  UINT cbwh);
__declspec(dllimport) MMRESULT __stdcall waveInStart(  HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInStop(  HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInReset(  HWAVEIN hwi);
__declspec(dllimport) MMRESULT __stdcall waveInGetPosition(  HWAVEIN hwi,   LPMMTIME pmmt,  UINT cbmmt);
__declspec(dllimport) MMRESULT __stdcall waveInGetID(  HWAVEIN hwi,  LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall waveInMessage(  HWAVEIN hwi,  UINT uMsg,  DWORD_PTR dw1,  DWORD_PTR dw2);


























struct HMIDI__ { int unused; }; typedef struct HMIDI__ *HMIDI;
struct HMIDIIN__ { int unused; }; typedef struct HMIDIIN__ *HMIDIIN;
struct HMIDIOUT__ { int unused; }; typedef struct HMIDIOUT__ *HMIDIOUT;
struct HMIDISTRM__ { int unused; }; typedef struct HMIDISTRM__ *HMIDISTRM;
typedef HMIDI  *LPHMIDI;
typedef HMIDIIN  *LPHMIDIIN;
typedef HMIDIOUT  *LPHMIDIOUT;
typedef HMIDISTRM  *LPHMIDISTRM;
typedef DRVCALLBACK MIDICALLBACK;
typedef MIDICALLBACK  *LPMIDICALLBACK;

typedef WORD PATCHARRAY[128];
typedef WORD  *LPPATCHARRAY;
typedef WORD KEYARRAY[128];
typedef WORD  *LPKEYARRAY;



































typedef struct tagMIDIOUTCAPSA {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
} MIDIOUTCAPSA, *PMIDIOUTCAPSA, *NPMIDIOUTCAPSA, *LPMIDIOUTCAPSA;
typedef struct tagMIDIOUTCAPSW {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
} MIDIOUTCAPSW, *PMIDIOUTCAPSW, *NPMIDIOUTCAPSW, *LPMIDIOUTCAPSW;






typedef MIDIOUTCAPSA MIDIOUTCAPS;
typedef PMIDIOUTCAPSA PMIDIOUTCAPS;
typedef NPMIDIOUTCAPSA NPMIDIOUTCAPS;
typedef LPMIDIOUTCAPSA LPMIDIOUTCAPS;

typedef struct tagMIDIOUTCAPS2A {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    CHAR    szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
    GUID    ManufacturerGuid;      
    GUID    ProductGuid;           
    GUID    NameGuid;              
} MIDIOUTCAPS2A, *PMIDIOUTCAPS2A, *NPMIDIOUTCAPS2A, *LPMIDIOUTCAPS2A;
typedef struct tagMIDIOUTCAPS2W {
    WORD    wMid;                  
    WORD    wPid;                  
    MMVERSION vDriverVersion;      
    WCHAR   szPname[32];  
    WORD    wTechnology;           
    WORD    wVoices;               
    WORD    wNotes;                
    WORD    wChannelMask;          
    DWORD   dwSupport;             
    GUID    ManufacturerGuid;      
    GUID    ProductGuid;           
    GUID    NameGuid;              
} MIDIOUTCAPS2W, *PMIDIOUTCAPS2W, *NPMIDIOUTCAPS2W, *LPMIDIOUTCAPS2W;






typedef MIDIOUTCAPS2A MIDIOUTCAPS2;
typedef PMIDIOUTCAPS2A PMIDIOUTCAPS2;
typedef NPMIDIOUTCAPS2A NPMIDIOUTCAPS2;
typedef LPMIDIOUTCAPS2A LPMIDIOUTCAPS2;




































typedef struct tagMIDIINCAPSA {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    CHAR        szPname[32];   

    DWORD   dwSupport;             

} MIDIINCAPSA, *PMIDIINCAPSA, *NPMIDIINCAPSA, *LPMIDIINCAPSA;
typedef struct tagMIDIINCAPSW {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    WCHAR       szPname[32];   

    DWORD   dwSupport;             

} MIDIINCAPSW, *PMIDIINCAPSW, *NPMIDIINCAPSW, *LPMIDIINCAPSW;






typedef MIDIINCAPSA MIDIINCAPS;
typedef PMIDIINCAPSA PMIDIINCAPS;
typedef NPMIDIINCAPSA NPMIDIINCAPS;
typedef LPMIDIINCAPSA LPMIDIINCAPS;

typedef struct tagMIDIINCAPS2A {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    CHAR        szPname[32];   

    DWORD       dwSupport;              

    GUID        ManufacturerGuid;       
    GUID        ProductGuid;            
    GUID        NameGuid;               
} MIDIINCAPS2A, *PMIDIINCAPS2A, *NPMIDIINCAPS2A, *LPMIDIINCAPS2A;
typedef struct tagMIDIINCAPS2W {
    WORD        wMid;                   
    WORD        wPid;                   
    MMVERSION   vDriverVersion;         
    WCHAR       szPname[32];   

    DWORD       dwSupport;              

    GUID        ManufacturerGuid;       
    GUID        ProductGuid;            
    GUID        NameGuid;               
} MIDIINCAPS2W, *PMIDIINCAPS2W, *NPMIDIINCAPS2W, *LPMIDIINCAPS2W;






typedef MIDIINCAPS2A MIDIINCAPS2;
typedef PMIDIINCAPS2A PMIDIINCAPS2;
typedef NPMIDIINCAPS2A NPMIDIINCAPS2;
typedef LPMIDIINCAPS2A LPMIDIINCAPS2;
















typedef struct midihdr_tag {
    LPSTR       lpData;               
    DWORD       dwBufferLength;       
    DWORD       dwBytesRecorded;      
    DWORD_PTR   dwUser;               
    DWORD       dwFlags;              
    struct midihdr_tag  *lpNext;   
    DWORD_PTR   reserved;             

    DWORD       dwOffset;             
    DWORD_PTR   dwReserved[8];        

} MIDIHDR, *PMIDIHDR,  *NPMIDIHDR,  *LPMIDIHDR;



typedef struct midievent_tag
{
    DWORD       dwDeltaTime;          
    DWORD       dwStreamID;           
    DWORD       dwEvent;              
    DWORD       dwParms[1];           
} MIDIEVENT;

typedef struct midistrmbuffver_tag
{
    DWORD       dwVersion;                  
    DWORD       dwMid;                      
    DWORD       dwOEMVersion;               
} MIDISTRMBUFFVER;




















































typedef struct midiproptimediv_tag
{
    DWORD       cbStruct;
    DWORD       dwTimeDiv;
} MIDIPROPTIMEDIV,  *LPMIDIPROPTIMEDIV;

typedef struct midiproptempo_tag
{
    DWORD       cbStruct;
    DWORD       dwTempo;
} MIDIPROPTEMPO,  *LPMIDIPROPTEMPO;




__declspec(dllimport) UINT __stdcall midiOutGetNumDevs(void);

__declspec(dllimport) MMRESULT __stdcall midiStreamOpen(  LPHMIDISTRM phms,  LPUINT puDeviceID,  DWORD cMidi,  DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiStreamClose(  HMIDISTRM hms);

__declspec(dllimport) MMRESULT __stdcall midiStreamProperty(  HMIDISTRM hms,  LPBYTE lppropdata,  DWORD dwProperty);
__declspec(dllimport) MMRESULT __stdcall midiStreamPosition(  HMIDISTRM hms,  LPMMTIME lpmmt,  UINT cbmmt);

__declspec(dllimport) MMRESULT __stdcall midiStreamOut(  HMIDISTRM hms,  LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiStreamPause(  HMIDISTRM hms);
__declspec(dllimport) MMRESULT __stdcall midiStreamRestart(  HMIDISTRM hms);
__declspec(dllimport) MMRESULT __stdcall midiStreamStop(  HMIDISTRM hms);


__declspec(dllimport) MMRESULT __stdcall midiConnect(  HMIDI hmi,  HMIDIOUT hmo,  LPVOID pReserved);
__declspec(dllimport) MMRESULT __stdcall midiDisconnect(  HMIDI hmi,  HMIDIOUT hmo,  LPVOID pReserved);





__declspec(dllimport) MMRESULT __stdcall midiOutGetDevCapsA(  UINT_PTR uDeviceID,  LPMIDIOUTCAPSA pmoc,  UINT cbmoc);
__declspec(dllimport) MMRESULT __stdcall midiOutGetDevCapsW(  UINT_PTR uDeviceID,  LPMIDIOUTCAPSW pmoc,  UINT cbmoc);











__declspec(dllimport) MMRESULT __stdcall midiOutGetVolume(  HMIDIOUT hmo,  LPDWORD pdwVolume);
__declspec(dllimport) MMRESULT __stdcall midiOutSetVolume(  HMIDIOUT hmo,  DWORD dwVolume);







__declspec(dllimport) MMRESULT __stdcall midiOutGetErrorTextA(  MMRESULT mmrError,  LPSTR pszText,  UINT cchText);
__declspec(dllimport) MMRESULT __stdcall midiOutGetErrorTextW(  MMRESULT mmrError,  LPWSTR pszText,  UINT cchText);










__declspec(dllimport) MMRESULT __stdcall midiOutOpen(  LPHMIDIOUT phmo,  UINT uDeviceID,
     DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiOutClose(   HMIDIOUT hmo);
__declspec(dllimport) MMRESULT __stdcall midiOutPrepareHeader(  HMIDIOUT hmo,   LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutUnprepareHeader( HMIDIOUT hmo,   LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutShortMsg(  HMIDIOUT hmo,  DWORD dwMsg);
__declspec(dllimport) MMRESULT __stdcall midiOutLongMsg( HMIDIOUT hmo,  LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiOutReset(  HMIDIOUT hmo);
__declspec(dllimport) MMRESULT __stdcall midiOutCachePatches(  HMIDIOUT hmo,  UINT uBank,  LPWORD pwpa,  UINT fuCache);
__declspec(dllimport) MMRESULT __stdcall midiOutCacheDrumPatches(  HMIDIOUT hmo,  UINT uPatch,  LPWORD pwkya,  UINT fuCache);
__declspec(dllimport) MMRESULT __stdcall midiOutGetID(  HMIDIOUT hmo,  LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall midiOutMessage(  HMIDIOUT hmo,  UINT uMsg,  DWORD_PTR dw1,  DWORD_PTR dw2);





__declspec(dllimport) UINT __stdcall midiInGetNumDevs(void);



__declspec(dllimport) MMRESULT __stdcall midiInGetDevCapsA(  UINT_PTR uDeviceID,  LPMIDIINCAPSA pmic,  UINT cbmic);
__declspec(dllimport) MMRESULT __stdcall midiInGetDevCapsW(  UINT_PTR uDeviceID,  LPMIDIINCAPSW pmic,  UINT cbmic);





__declspec(dllimport) MMRESULT __stdcall midiInGetErrorTextA(  MMRESULT mmrError,  LPSTR pszText,  UINT cchText);
__declspec(dllimport) MMRESULT __stdcall midiInGetErrorTextW(  MMRESULT mmrError,  LPWSTR pszText,  UINT cchText);











__declspec(dllimport) MMRESULT __stdcall midiInOpen(  LPHMIDIIN phmi,  UINT uDeviceID,
         DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);
__declspec(dllimport) MMRESULT __stdcall midiInClose(   HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInPrepareHeader(  HMIDIIN hmi,   LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInUnprepareHeader(  HMIDIIN hmi,   LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInAddBuffer(  HMIDIIN hmi,  LPMIDIHDR pmh,  UINT cbmh);
__declspec(dllimport) MMRESULT __stdcall midiInStart(  HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInStop(  HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInReset(  HMIDIIN hmi);
__declspec(dllimport) MMRESULT __stdcall midiInGetID(  HMIDIIN hmi,  LPUINT puDeviceID);



__declspec(dllimport) MMRESULT __stdcall midiInMessage(  HMIDIIN hmi,  UINT uMsg,  DWORD_PTR dw1,  DWORD_PTR dw2);






















typedef struct tagAUXCAPSA {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    CHAR        szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
} AUXCAPSA, *PAUXCAPSA, *NPAUXCAPSA, *LPAUXCAPSA;
typedef struct tagAUXCAPSW {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    WCHAR       szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
} AUXCAPSW, *PAUXCAPSW, *NPAUXCAPSW, *LPAUXCAPSW;






typedef AUXCAPSA AUXCAPS;
typedef PAUXCAPSA PAUXCAPS;
typedef NPAUXCAPSA NPAUXCAPS;
typedef LPAUXCAPSA LPAUXCAPS;

typedef struct tagAUXCAPS2A {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    CHAR        szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
    GUID        ManufacturerGuid;    
    GUID        ProductGuid;         
    GUID        NameGuid;            
} AUXCAPS2A, *PAUXCAPS2A, *NPAUXCAPS2A, *LPAUXCAPS2A;
typedef struct tagAUXCAPS2W {
    WORD        wMid;                
    WORD        wPid;                
    MMVERSION   vDriverVersion;      
    WCHAR       szPname[32];
    WORD        wTechnology;         
    WORD        wReserved1;          
    DWORD       dwSupport;           
    GUID        ManufacturerGuid;    
    GUID        ProductGuid;         
    GUID        NameGuid;            
} AUXCAPS2W, *PAUXCAPS2W, *NPAUXCAPS2W, *LPAUXCAPS2W;






typedef AUXCAPS2A AUXCAPS2;
typedef PAUXCAPS2A PAUXCAPS2;
typedef NPAUXCAPS2A NPAUXCAPS2;
typedef LPAUXCAPS2A LPAUXCAPS2;






















__declspec(dllimport) UINT __stdcall auxGetNumDevs(void);


__declspec(dllimport) MMRESULT __stdcall auxGetDevCapsA(  UINT_PTR uDeviceID,  LPAUXCAPSA pac,  UINT cbac);
__declspec(dllimport) MMRESULT __stdcall auxGetDevCapsW(  UINT_PTR uDeviceID,  LPAUXCAPSW pac,  UINT cbac);









__declspec(dllimport) MMRESULT __stdcall auxSetVolume(  UINT uDeviceID,  DWORD dwVolume);
__declspec(dllimport) MMRESULT __stdcall auxGetVolume(  UINT uDeviceID,  LPDWORD pdwVolume);



__declspec(dllimport) MMRESULT __stdcall auxOutMessage(  UINT uDeviceID,  UINT uMsg,  DWORD_PTR dw1,  DWORD_PTR dw2);














struct HMIXEROBJ__ { int unused; }; typedef struct HMIXEROBJ__ *HMIXEROBJ;
typedef HMIXEROBJ  *LPHMIXEROBJ;

struct HMIXER__ { int unused; }; typedef struct HMIXER__ *HMIXER;
typedef HMIXER      *LPHMIXER;




























__declspec(dllimport) UINT __stdcall mixerGetNumDevs(void);



typedef struct tagMIXERCAPSA {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    CHAR            szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
} MIXERCAPSA, *PMIXERCAPSA, *LPMIXERCAPSA;
typedef struct tagMIXERCAPSW {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    WCHAR           szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
} MIXERCAPSW, *PMIXERCAPSW, *LPMIXERCAPSW;





typedef MIXERCAPSA MIXERCAPS;
typedef PMIXERCAPSA PMIXERCAPS;
typedef LPMIXERCAPSA LPMIXERCAPS;

typedef struct tagMIXERCAPS2A {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    CHAR            szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
    GUID            ManufacturerGuid;       
    GUID            ProductGuid;            
    GUID            NameGuid;               
} MIXERCAPS2A, *PMIXERCAPS2A, *LPMIXERCAPS2A;
typedef struct tagMIXERCAPS2W {
    WORD            wMid;                   
    WORD            wPid;                   
    MMVERSION       vDriverVersion;         
    WCHAR           szPname[32];   
    DWORD           fdwSupport;             
    DWORD           cDestinations;          
    GUID            ManufacturerGuid;       
    GUID            ProductGuid;            
    GUID            NameGuid;               
} MIXERCAPS2W, *PMIXERCAPS2W, *LPMIXERCAPS2W;





typedef MIXERCAPS2A MIXERCAPS2;
typedef PMIXERCAPS2A PMIXERCAPS2;
typedef LPMIXERCAPS2A LPMIXERCAPS2;
















__declspec(dllimport) MMRESULT __stdcall mixerGetDevCapsA(  UINT_PTR uMxId,  LPMIXERCAPSA pmxcaps,  UINT cbmxcaps);
__declspec(dllimport) MMRESULT __stdcall mixerGetDevCapsW(  UINT_PTR uMxId,  LPMIXERCAPSW pmxcaps,  UINT cbmxcaps);










__declspec(dllimport) MMRESULT __stdcall mixerOpen(  LPHMIXER phmx,  UINT uMxId,  DWORD_PTR dwCallback,  DWORD_PTR dwInstance,  DWORD fdwOpen);


__declspec(dllimport) MMRESULT __stdcall mixerClose(   HMIXER hmx);

__declspec(dllimport) DWORD __stdcall mixerMessage(  HMIXER hmx,  UINT uMsg,  DWORD_PTR dwParam1,  DWORD_PTR dwParam2);



typedef struct tagMIXERLINEA {
    DWORD       cbStruct;               
    DWORD       dwDestination;          
    DWORD       dwSource;               
    DWORD       dwLineID;               
    DWORD       fdwLine;                
    DWORD_PTR   dwUser;                 
    DWORD       dwComponentType;        
    DWORD       cChannels;              
    DWORD       cConnections;           
    DWORD       cControls;              
    CHAR        szShortName[16];
    CHAR        szName[64];
    struct {
        DWORD       dwType;                 
        DWORD       dwDeviceID;             
        WORD        wMid;                   
        WORD        wPid;                   
        MMVERSION   vDriverVersion;         
        CHAR        szPname[32];   
    } Target;
} MIXERLINEA, *PMIXERLINEA, *LPMIXERLINEA;
typedef struct tagMIXERLINEW {
    DWORD       cbStruct;               
    DWORD       dwDestination;          
    DWORD       dwSource;               
    DWORD       dwLineID;               
    DWORD       fdwLine;                
    DWORD_PTR   dwUser;                 
    DWORD       dwComponentType;        
    DWORD       cChannels;              
    DWORD       cConnections;           
    DWORD       cControls;              
    WCHAR       szShortName[16];
    WCHAR       szName[64];
    struct {
        DWORD       dwType;                 
        DWORD       dwDeviceID;             
        WORD        wMid;                   
        WORD        wPid;                   
        MMVERSION   vDriverVersion;         
        WCHAR       szPname[32];   
    } Target;
} MIXERLINEW, *PMIXERLINEW, *LPMIXERLINEW;





typedef MIXERLINEA MIXERLINE;
typedef PMIXERLINEA PMIXERLINE;
typedef LPMIXERLINEA LPMIXERLINE;


















































































__declspec(dllimport) MMRESULT __stdcall mixerGetLineInfoA(  HMIXEROBJ hmxobj,  LPMIXERLINEA pmxl,  DWORD fdwInfo);
__declspec(dllimport) MMRESULT __stdcall mixerGetLineInfoW(  HMIXEROBJ hmxobj,  LPMIXERLINEW pmxl,  DWORD fdwInfo);



















__declspec(dllimport) MMRESULT __stdcall mixerGetID(  HMIXEROBJ hmxobj,  UINT  *puMxId,  DWORD fdwId);








typedef struct tagMIXERCONTROLA {
    DWORD           cbStruct;           
    DWORD           dwControlID;        
    DWORD           dwControlType;      
    DWORD           fdwControl;         
    DWORD           cMultipleItems;     
    CHAR            szShortName[16];
    CHAR            szName[64];
    union {
        struct {
            LONG    lMinimum;           
            LONG    lMaximum;           
        };
        struct {
            DWORD   dwMinimum;          
            DWORD   dwMaximum;          
        };
        DWORD       dwReserved[6];
    } Bounds;
    union {
        DWORD       cSteps;             
        DWORD       cbCustomData;       
        DWORD       dwReserved[6];      
    } Metrics;
} MIXERCONTROLA, *PMIXERCONTROLA, *LPMIXERCONTROLA;
typedef struct tagMIXERCONTROLW {
    DWORD           cbStruct;           
    DWORD           dwControlID;        
    DWORD           dwControlType;      
    DWORD           fdwControl;         
    DWORD           cMultipleItems;     
    WCHAR           szShortName[16];
    WCHAR           szName[64];
    union {
        struct {
            LONG    lMinimum;           
            LONG    lMaximum;           
        };
        struct {
            DWORD   dwMinimum;          
            DWORD   dwMaximum;          
        };
        DWORD       dwReserved[6];
    } Bounds;
    union {
        DWORD       cSteps;             
        DWORD       cbCustomData;       
        DWORD       dwReserved[6];      
    } Metrics;
} MIXERCONTROLW, *PMIXERCONTROLW, *LPMIXERCONTROLW;





typedef MIXERCONTROLA MIXERCONTROL;
typedef PMIXERCONTROLA PMIXERCONTROL;
typedef LPMIXERCONTROLA LPMIXERCONTROL;






















































































































typedef struct tagMIXERLINECONTROLSA {
    DWORD           cbStruct;       
    DWORD           dwLineID;       
    union {
        DWORD       dwControlID;    
        DWORD       dwControlType;  
    };
    DWORD           cControls;      
    DWORD           cbmxctrl;       
    LPMIXERCONTROLA pamxctrl;       
} MIXERLINECONTROLSA, *PMIXERLINECONTROLSA, *LPMIXERLINECONTROLSA;
typedef struct tagMIXERLINECONTROLSW {
    DWORD           cbStruct;       
    DWORD           dwLineID;       
    union {
        DWORD       dwControlID;    
        DWORD       dwControlType;  
    };
    DWORD           cControls;      
    DWORD           cbmxctrl;       
    LPMIXERCONTROLW pamxctrl;       
} MIXERLINECONTROLSW, *PMIXERLINECONTROLSW, *LPMIXERLINECONTROLSW;





typedef MIXERLINECONTROLSA MIXERLINECONTROLS;
typedef PMIXERLINECONTROLSA PMIXERLINECONTROLS;
typedef LPMIXERLINECONTROLSA LPMIXERLINECONTROLS;






















__declspec(dllimport) MMRESULT __stdcall mixerGetLineControlsA(  HMIXEROBJ hmxobj,   LPMIXERLINECONTROLSA pmxlc,  DWORD fdwControls);
__declspec(dllimport) MMRESULT __stdcall mixerGetLineControlsW(  HMIXEROBJ hmxobj,   LPMIXERLINECONTROLSW pmxlc,  DWORD fdwControls);

















typedef struct tMIXERCONTROLDETAILS {
    DWORD           cbStruct;       
    DWORD           dwControlID;    
    DWORD           cChannels;      
    union {
        HWND        hwndOwner;      
        DWORD       cMultipleItems; 
    };
    DWORD           cbDetails;      
    LPVOID          paDetails;      
} MIXERCONTROLDETAILS, *PMIXERCONTROLDETAILS,  *LPMIXERCONTROLDETAILS;








typedef struct tagMIXERCONTROLDETAILS_LISTTEXTA {
    DWORD           dwParam1;
    DWORD           dwParam2;
    CHAR            szName[64];
} MIXERCONTROLDETAILS_LISTTEXTA, *PMIXERCONTROLDETAILS_LISTTEXTA, *LPMIXERCONTROLDETAILS_LISTTEXTA;
typedef struct tagMIXERCONTROLDETAILS_LISTTEXTW {
    DWORD           dwParam1;
    DWORD           dwParam2;
    WCHAR           szName[64];
} MIXERCONTROLDETAILS_LISTTEXTW, *PMIXERCONTROLDETAILS_LISTTEXTW, *LPMIXERCONTROLDETAILS_LISTTEXTW;





typedef MIXERCONTROLDETAILS_LISTTEXTA MIXERCONTROLDETAILS_LISTTEXT;
typedef PMIXERCONTROLDETAILS_LISTTEXTA PMIXERCONTROLDETAILS_LISTTEXT;
typedef LPMIXERCONTROLDETAILS_LISTTEXTA LPMIXERCONTROLDETAILS_LISTTEXT;














typedef struct tMIXERCONTROLDETAILS_BOOLEAN {
    LONG            fValue;
}       MIXERCONTROLDETAILS_BOOLEAN,
      *PMIXERCONTROLDETAILS_BOOLEAN,
  *LPMIXERCONTROLDETAILS_BOOLEAN;

typedef struct tMIXERCONTROLDETAILS_SIGNED {
    LONG            lValue;
}       MIXERCONTROLDETAILS_SIGNED,
      *PMIXERCONTROLDETAILS_SIGNED,
  *LPMIXERCONTROLDETAILS_SIGNED;


typedef struct tMIXERCONTROLDETAILS_UNSIGNED {
    DWORD           dwValue;
}       MIXERCONTROLDETAILS_UNSIGNED,
      *PMIXERCONTROLDETAILS_UNSIGNED,
  *LPMIXERCONTROLDETAILS_UNSIGNED;




__declspec(dllimport) MMRESULT __stdcall mixerGetControlDetailsA(  HMIXEROBJ hmxobj,   LPMIXERCONTROLDETAILS pmxcd,  DWORD fdwDetails);
__declspec(dllimport) MMRESULT __stdcall mixerGetControlDetailsW(  HMIXEROBJ hmxobj,   LPMIXERCONTROLDETAILS pmxcd,  DWORD fdwDetails);
















__declspec(dllimport) MMRESULT __stdcall mixerSetControlDetails(  HMIXEROBJ hmxobj,  LPMIXERCONTROLDETAILS pmxcd,  DWORD fdwDetails);






















typedef void (__stdcall TIMECALLBACK)(UINT uTimerID, UINT uMsg, DWORD_PTR dwUser, DWORD_PTR dw1, DWORD_PTR dw2);

typedef TIMECALLBACK  *LPTIMECALLBACK;













                                        
                                        





typedef struct timecaps_tag {
    UINT    wPeriodMin;     
    UINT    wPeriodMax;     
} TIMECAPS, *PTIMECAPS,  *NPTIMECAPS,  *LPTIMECAPS;


__declspec(dllimport) MMRESULT __stdcall timeGetSystemTime(  LPMMTIME pmmt,  UINT cbmmt);
__declspec(dllimport) DWORD __stdcall timeGetTime(void);
__declspec(dllimport) MMRESULT __stdcall timeSetEvent(  UINT uDelay,  UINT uResolution,
     LPTIMECALLBACK fptc,  DWORD_PTR dwUser,  UINT fuEvent);
__declspec(dllimport) MMRESULT __stdcall timeKillEvent(  UINT uTimerID);
__declspec(dllimport) MMRESULT __stdcall timeGetDevCaps(  LPTIMECAPS ptc,  UINT cbtc);
__declspec(dllimport) MMRESULT __stdcall timeBeginPeriod(  UINT uPeriod);
__declspec(dllimport) MMRESULT __stdcall timeEndPeriod(  UINT uPeriod);













































































































typedef struct tagJOYCAPSA {
    WORD    wMid;                
    WORD    wPid;                
    CHAR    szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          

    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;               
    UINT    wMaxAxes;            
    UINT    wNumAxes;            
    UINT    wMaxButtons;         
    CHAR    szRegKey[32];
    CHAR    szOEMVxD[260]; 

} JOYCAPSA, *PJOYCAPSA, *NPJOYCAPSA, *LPJOYCAPSA;
typedef struct tagJOYCAPSW {
    WORD    wMid;                
    WORD    wPid;                
    WCHAR   szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          

    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;               
    UINT    wMaxAxes;            
    UINT    wNumAxes;            
    UINT    wMaxButtons;         
    WCHAR   szRegKey[32];
    WCHAR   szOEMVxD[260]; 

} JOYCAPSW, *PJOYCAPSW, *NPJOYCAPSW, *LPJOYCAPSW;






typedef JOYCAPSA JOYCAPS;
typedef PJOYCAPSA PJOYCAPS;
typedef NPJOYCAPSA NPJOYCAPS;
typedef LPJOYCAPSA LPJOYCAPS;

typedef struct tagJOYCAPS2A {
    WORD    wMid;                
    WORD    wPid;                
    CHAR    szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          
    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;               
    UINT    wMaxAxes;            
    UINT    wNumAxes;            
    UINT    wMaxButtons;         
    CHAR    szRegKey[32];
    CHAR    szOEMVxD[260]; 
    GUID    ManufacturerGuid;    
    GUID    ProductGuid;         
    GUID    NameGuid;            
} JOYCAPS2A, *PJOYCAPS2A, *NPJOYCAPS2A, *LPJOYCAPS2A;
typedef struct tagJOYCAPS2W {
    WORD    wMid;                
    WORD    wPid;                
    WCHAR   szPname[32];
    UINT    wXmin;               
    UINT    wXmax;               
    UINT    wYmin;               
    UINT    wYmax;               
    UINT    wZmin;               
    UINT    wZmax;               
    UINT    wNumButtons;         
    UINT    wPeriodMin;          
    UINT    wPeriodMax;          
    UINT    wRmin;               
    UINT    wRmax;               
    UINT    wUmin;               
    UINT    wUmax;               
    UINT    wVmin;               
    UINT    wVmax;               
    UINT    wCaps;               
    UINT    wMaxAxes;            
    UINT    wNumAxes;            
    UINT    wMaxButtons;         
    WCHAR   szRegKey[32];
    WCHAR   szOEMVxD[260]; 
    GUID    ManufacturerGuid;    
    GUID    ProductGuid;         
    GUID    NameGuid;            
} JOYCAPS2W, *PJOYCAPS2W, *NPJOYCAPS2W, *LPJOYCAPS2W;






typedef JOYCAPS2A JOYCAPS2;
typedef PJOYCAPS2A PJOYCAPS2;
typedef NPJOYCAPS2A NPJOYCAPS2;
typedef LPJOYCAPS2A LPJOYCAPS2;



































typedef struct joyinfo_tag {
    UINT wXpos;                 
    UINT wYpos;                 
    UINT wZpos;                 
    UINT wButtons;              
} JOYINFO, *PJOYINFO,  *NPJOYINFO,  *LPJOYINFO;


typedef struct joyinfoex_tag {
    DWORD dwSize;                
    DWORD dwFlags;               
    DWORD dwXpos;                
    DWORD dwYpos;                
    DWORD dwZpos;                
    DWORD dwRpos;                
    DWORD dwUpos;                
    DWORD dwVpos;                
    DWORD dwButtons;             
    DWORD dwButtonNumber;        
    DWORD dwPOV;                 
    DWORD dwReserved1;           
    DWORD dwReserved2;           
} JOYINFOEX, *PJOYINFOEX,  *NPJOYINFOEX,  *LPJOYINFOEX;



__declspec(dllimport) UINT __stdcall joyGetNumDevs(void);


__declspec(dllimport) MMRESULT __stdcall joyGetDevCapsA(  UINT_PTR uJoyID,  LPJOYCAPSA pjc,  UINT cbjc);
__declspec(dllimport) MMRESULT __stdcall joyGetDevCapsW(  UINT_PTR uJoyID,  LPJOYCAPSW pjc,  UINT cbjc);









__declspec(dllimport) MMRESULT __stdcall joyGetPos(  UINT uJoyID,  LPJOYINFO pji);


__declspec(dllimport) MMRESULT __stdcall joyGetPosEx(  UINT uJoyID,  LPJOYINFOEX pji);


__declspec(dllimport) MMRESULT __stdcall joyGetThreshold(  UINT uJoyID,  LPUINT puThreshold);
__declspec(dllimport) MMRESULT __stdcall joyReleaseCapture(  UINT uJoyID);
__declspec(dllimport) MMRESULT __stdcall joySetCapture(  HWND hwnd,  UINT uJoyID,  UINT uPeriod,
     BOOL fChanged);
__declspec(dllimport) MMRESULT __stdcall joySetThreshold(  UINT uJoyID,  UINT uThreshold);


































typedef DWORD           FOURCC;         
typedef char  *    HPSTR;          
struct HMMIO__ { int unused; }; typedef struct HMMIO__ *HMMIO;                  
typedef LRESULT (__stdcall MMIOPROC)(LPSTR lpmmioinfo, UINT uMsg,
            LPARAM lParam1, LPARAM lParam2);
typedef MMIOPROC  *LPMMIOPROC;



typedef struct _MMIOINFO
{
        
        DWORD           dwFlags;        
        FOURCC          fccIOProc;      
        LPMMIOPROC      pIOProc;        
        UINT            wErrorRet;      
        HTASK           htask;          

        
        LONG            cchBuffer;      
        HPSTR           pchBuffer;      
        HPSTR           pchNext;        
        HPSTR           pchEndRead;     
        HPSTR           pchEndWrite;    
        LONG            lBufOffset;     

        
        LONG            lDiskOffset;    
        DWORD           adwInfo[3];     

        
        DWORD           dwReserved1;    
        DWORD           dwReserved2;    
        HMMIO           hmmio;          
} MMIOINFO, *PMMIOINFO,  *NPMMIOINFO,  *LPMMIOINFO;
typedef const MMIOINFO  *LPCMMIOINFO;


typedef struct _MMCKINFO
{
        FOURCC          ckid;           
        DWORD           cksize;         
        FOURCC          fccType;        
        DWORD           dwDataOffset;   
        DWORD           dwFlags;        
} MMCKINFO, *PMMCKINFO,  *NPMMCKINFO,  *LPMMCKINFO;
typedef const MMCKINFO *LPCMMCKINFO;


















































































__declspec(dllimport) FOURCC __stdcall mmioStringToFOURCCA(  LPCSTR sz,  UINT uFlags);
__declspec(dllimport) FOURCC __stdcall mmioStringToFOURCCW(  LPCWSTR sz,  UINT uFlags);





__declspec(dllimport) LPMMIOPROC __stdcall mmioInstallIOProcA(  FOURCC fccIOProc,  LPMMIOPROC pIOProc,  DWORD dwFlags);
__declspec(dllimport) LPMMIOPROC __stdcall mmioInstallIOProcW(  FOURCC fccIOProc,  LPMMIOPROC pIOProc,  DWORD dwFlags);





__declspec(dllimport) HMMIO __stdcall mmioOpenA(   LPSTR pszFileName,   LPMMIOINFO pmmioinfo,  DWORD fdwOpen);
__declspec(dllimport) HMMIO __stdcall mmioOpenW(   LPWSTR pszFileName,   LPMMIOINFO pmmioinfo,  DWORD fdwOpen);





__declspec(dllimport) MMRESULT __stdcall mmioRenameA(  LPCSTR pszFileName,  LPCSTR pszNewFileName,  LPCMMIOINFO pmmioinfo,  DWORD fdwRename);
__declspec(dllimport) MMRESULT __stdcall mmioRenameW(  LPCWSTR pszFileName,  LPCWSTR pszNewFileName,  LPCMMIOINFO pmmioinfo,  DWORD fdwRename);














__declspec(dllimport) MMRESULT __stdcall mmioClose(  HMMIO hmmio,  UINT fuClose);
__declspec(dllimport) LONG __stdcall mmioRead(  HMMIO hmmio,  HPSTR pch,  LONG cch);
__declspec(dllimport) LONG __stdcall mmioWrite(  HMMIO hmmio,  const char * pch,  LONG cch);
__declspec(dllimport) LONG __stdcall mmioSeek(  HMMIO hmmio,  LONG lOffset,  int iOrigin);
__declspec(dllimport) MMRESULT __stdcall mmioGetInfo(  HMMIO hmmio,  LPMMIOINFO pmmioinfo,  UINT fuInfo);
__declspec(dllimport) MMRESULT __stdcall mmioSetInfo(  HMMIO hmmio,  LPCMMIOINFO pmmioinfo,  UINT fuInfo);
__declspec(dllimport) MMRESULT __stdcall mmioSetBuffer(  HMMIO hmmio,  LPSTR pchBuffer,  LONG cchBuffer,
     UINT fuBuffer);
__declspec(dllimport) MMRESULT __stdcall mmioFlush(  HMMIO hmmio,  UINT fuFlush);
__declspec(dllimport) MMRESULT __stdcall mmioAdvance(  HMMIO hmmio,   LPMMIOINFO pmmioinfo,  UINT fuAdvance);
__declspec(dllimport) LRESULT __stdcall mmioSendMessage(  HMMIO hmmio,  UINT uMsg,
     LPARAM lParam1,  LPARAM lParam2);
__declspec(dllimport) MMRESULT __stdcall mmioDescend(  HMMIO hmmio,   LPMMCKINFO pmmcki,
     const MMCKINFO * pmmckiParent,  UINT fuDescend);
__declspec(dllimport) MMRESULT __stdcall mmioAscend(  HMMIO hmmio,  LPMMCKINFO pmmcki,  UINT fuAscend);
__declspec(dllimport) MMRESULT __stdcall mmioCreateChunk( HMMIO hmmio,  LPMMCKINFO pmmcki,  UINT fuCreate);












typedef DWORD   MCIERROR;       




typedef UINT    MCIDEVICEID;    



typedef UINT (__stdcall *YIELDPROC)(MCIDEVICEID mciId, DWORD dwYieldData);




__declspec(dllimport) MCIERROR __stdcall mciSendCommandA(  MCIDEVICEID mciId,  UINT uMsg,  DWORD_PTR dwParam1,  DWORD_PTR dwParam2);
__declspec(dllimport) MCIERROR __stdcall mciSendCommandW(  MCIDEVICEID mciId,  UINT uMsg,  DWORD_PTR dwParam1,  DWORD_PTR dwParam2);





__declspec(dllimport) MCIERROR  __stdcall mciSendStringA(  LPCSTR lpstrCommand,  LPSTR lpstrReturnString,  UINT uReturnLength,  HWND hwndCallback);
__declspec(dllimport) MCIERROR  __stdcall mciSendStringW(  LPCWSTR lpstrCommand,  LPWSTR lpstrReturnString,  UINT uReturnLength,  HWND hwndCallback);





__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDA(  LPCSTR pszDevice);
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDW(  LPCWSTR pszDevice);





__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDFromElementIDA(  DWORD dwElementID,  LPCSTR lpstrType );
__declspec(dllimport) MCIDEVICEID __stdcall mciGetDeviceIDFromElementIDW(  DWORD dwElementID,  LPCWSTR lpstrType );





__declspec(dllimport) BOOL __stdcall mciGetErrorStringA(  MCIERROR mcierr,  LPSTR pszText,  UINT cchText);
__declspec(dllimport) BOOL __stdcall mciGetErrorStringW(  MCIERROR mcierr,  LPWSTR pszText,  UINT cchText);













__declspec(dllimport) BOOL __stdcall mciSetYieldProc(  MCIDEVICEID mciId,  YIELDPROC fpYieldProc,
     DWORD dwYieldData);


__declspec(dllimport) HTASK __stdcall mciGetCreatorTask(  MCIDEVICEID mciId);
__declspec(dllimport) YIELDPROC __stdcall mciGetYieldProc(  MCIDEVICEID mciId,  LPDWORD pdwYieldData);










































































































































































































































































































typedef struct tagMCI_GENERIC_PARMS {
    DWORD_PTR   dwCallback;
} MCI_GENERIC_PARMS, *PMCI_GENERIC_PARMS,  *LPMCI_GENERIC_PARMS;





typedef struct tagMCI_OPEN_PARMSA {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR     lpstrDeviceType;
    LPCSTR     lpstrElementName;
    LPCSTR     lpstrAlias;
} MCI_OPEN_PARMSA, *PMCI_OPEN_PARMSA, *LPMCI_OPEN_PARMSA;
typedef struct tagMCI_OPEN_PARMSW {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR    lpstrDeviceType;
    LPCWSTR    lpstrElementName;
    LPCWSTR    lpstrAlias;
} MCI_OPEN_PARMSW, *PMCI_OPEN_PARMSW, *LPMCI_OPEN_PARMSW;





typedef MCI_OPEN_PARMSA MCI_OPEN_PARMS;
typedef PMCI_OPEN_PARMSA PMCI_OPEN_PARMS;
typedef LPMCI_OPEN_PARMSA LPMCI_OPEN_PARMS;















typedef struct tagMCI_PLAY_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrom;
    DWORD       dwTo;
} MCI_PLAY_PARMS, *PMCI_PLAY_PARMS,  *LPMCI_PLAY_PARMS;



typedef struct tagMCI_SEEK_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwTo;
} MCI_SEEK_PARMS, *PMCI_SEEK_PARMS,  *LPMCI_SEEK_PARMS;



typedef struct tagMCI_STATUS_PARMS {
    DWORD_PTR   dwCallback;
    DWORD_PTR   dwReturn;
    DWORD       dwItem;
    DWORD       dwTrack;
} MCI_STATUS_PARMS, *PMCI_STATUS_PARMS,  * LPMCI_STATUS_PARMS;





typedef struct tagMCI_INFO_PARMSA {
    DWORD_PTR dwCallback;
    LPSTR     lpstrReturn;
    DWORD     dwRetSize;
} MCI_INFO_PARMSA, * LPMCI_INFO_PARMSA;
typedef struct tagMCI_INFO_PARMSW {
    DWORD_PTR dwCallback;
    LPWSTR    lpstrReturn;
    DWORD     dwRetSize;
} MCI_INFO_PARMSW, * LPMCI_INFO_PARMSW;




typedef MCI_INFO_PARMSA MCI_INFO_PARMS;
typedef LPMCI_INFO_PARMSA LPMCI_INFO_PARMS;












typedef struct tagMCI_GETDEVCAPS_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwReturn;
    DWORD       dwItem;
} MCI_GETDEVCAPS_PARMS, *PMCI_GETDEVCAPS_PARMS,  * LPMCI_GETDEVCAPS_PARMS;





typedef struct tagMCI_SYSINFO_PARMSA {
    DWORD_PTR   dwCallback;
    LPSTR       lpstrReturn;
    DWORD       dwRetSize;
    DWORD       dwNumber;
    UINT        wDeviceType;
} MCI_SYSINFO_PARMSA, *PMCI_SYSINFO_PARMSA, * LPMCI_SYSINFO_PARMSA;
typedef struct tagMCI_SYSINFO_PARMSW {
    DWORD_PTR   dwCallback;
    LPWSTR      lpstrReturn;
    DWORD       dwRetSize;
    DWORD       dwNumber;
    UINT        wDeviceType;
} MCI_SYSINFO_PARMSW, *PMCI_SYSINFO_PARMSW, * LPMCI_SYSINFO_PARMSW;





typedef MCI_SYSINFO_PARMSA MCI_SYSINFO_PARMS;
typedef PMCI_SYSINFO_PARMSA PMCI_SYSINFO_PARMS;
typedef LPMCI_SYSINFO_PARMSA LPMCI_SYSINFO_PARMS;














typedef struct tagMCI_SET_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwTimeFormat;
    DWORD       dwAudio;
} MCI_SET_PARMS, *PMCI_SET_PARMS,  *LPMCI_SET_PARMS;



typedef struct tagMCI_BREAK_PARMS {
    DWORD_PTR   dwCallback;

    int         nVirtKey;
    HWND        hwndBreak;






} MCI_BREAK_PARMS, *PMCI_BREAK_PARMS,  * LPMCI_BREAK_PARMS;





typedef struct tagMCI_SAVE_PARMSA {
    DWORD_PTR    dwCallback;
    LPCSTR       lpfilename;
} MCI_SAVE_PARMSA, *PMCI_SAVE_PARMSA, * LPMCI_SAVE_PARMSA;
typedef struct tagMCI_SAVE_PARMSW {
    DWORD_PTR    dwCallback;
    LPCWSTR      lpfilename;
} MCI_SAVE_PARMSW, *PMCI_SAVE_PARMSW, * LPMCI_SAVE_PARMSW;





typedef MCI_SAVE_PARMSA MCI_SAVE_PARMS;
typedef PMCI_SAVE_PARMSA PMCI_SAVE_PARMS;
typedef LPMCI_SAVE_PARMSA LPMCI_SAVE_PARMS;













typedef struct tagMCI_LOAD_PARMSA {
    DWORD_PTR    dwCallback;
    LPCSTR       lpfilename;
} MCI_LOAD_PARMSA, *PMCI_LOAD_PARMSA, * LPMCI_LOAD_PARMSA;
typedef struct tagMCI_LOAD_PARMSW {
    DWORD_PTR    dwCallback;
    LPCWSTR      lpfilename;
} MCI_LOAD_PARMSW, *PMCI_LOAD_PARMSW, * LPMCI_LOAD_PARMSW;





typedef MCI_LOAD_PARMSA MCI_LOAD_PARMS;
typedef PMCI_LOAD_PARMSA PMCI_LOAD_PARMS;
typedef LPMCI_LOAD_PARMSA LPMCI_LOAD_PARMS;











typedef struct tagMCI_RECORD_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrom;
    DWORD       dwTo;
} MCI_RECORD_PARMS,  *LPMCI_RECORD_PARMS;























































typedef struct tagMCI_VD_PLAY_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrom;
    DWORD       dwTo;
    DWORD       dwSpeed;
} MCI_VD_PLAY_PARMS, *PMCI_VD_PLAY_PARMS,  *LPMCI_VD_PLAY_PARMS;



typedef struct tagMCI_VD_STEP_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrames;
} MCI_VD_STEP_PARMS, *PMCI_VD_STEP_PARMS,  *LPMCI_VD_STEP_PARMS;





typedef struct tagMCI_VD_ESCAPE_PARMSA {
    DWORD_PTR   dwCallback;
    LPCSTR      lpstrCommand;
} MCI_VD_ESCAPE_PARMSA, *PMCI_VD_ESCAPE_PARMSA, *LPMCI_VD_ESCAPE_PARMSA;
typedef struct tagMCI_VD_ESCAPE_PARMSW {
    DWORD_PTR   dwCallback;
    LPCWSTR     lpstrCommand;
} MCI_VD_ESCAPE_PARMSW, *PMCI_VD_ESCAPE_PARMSW, *LPMCI_VD_ESCAPE_PARMSW;





typedef MCI_VD_ESCAPE_PARMSA MCI_VD_ESCAPE_PARMS;
typedef PMCI_VD_ESCAPE_PARMSA PMCI_VD_ESCAPE_PARMS;
typedef LPMCI_VD_ESCAPE_PARMSA LPMCI_VD_ESCAPE_PARMS;




























































typedef struct tagMCI_WAVE_OPEN_PARMSA {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwBufferSeconds;
} MCI_WAVE_OPEN_PARMSA, *PMCI_WAVE_OPEN_PARMSA, *LPMCI_WAVE_OPEN_PARMSA;
typedef struct tagMCI_WAVE_OPEN_PARMSW {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwBufferSeconds;
} MCI_WAVE_OPEN_PARMSW, *PMCI_WAVE_OPEN_PARMSW, *LPMCI_WAVE_OPEN_PARMSW;





typedef MCI_WAVE_OPEN_PARMSA MCI_WAVE_OPEN_PARMS;
typedef PMCI_WAVE_OPEN_PARMSA PMCI_WAVE_OPEN_PARMS;
typedef LPMCI_WAVE_OPEN_PARMSA LPMCI_WAVE_OPEN_PARMS;
















typedef struct tagMCI_WAVE_DELETE_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrom;
    DWORD       dwTo;
} MCI_WAVE_DELETE_PARMS, *PMCI_WAVE_DELETE_PARMS,  *LPMCI_WAVE_DELETE_PARMS;



typedef struct tagMCI_WAVE_SET_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwTimeFormat;
    DWORD       dwAudio;

    UINT    wInput;
    UINT    wOutput;






    WORD    wFormatTag;
    WORD    wReserved2;
    WORD    nChannels;
    WORD    wReserved3;
    DWORD   nSamplesPerSec;
    DWORD   nAvgBytesPerSec;
    WORD    nBlockAlign;
    WORD    wReserved4;
    WORD    wBitsPerSample;
    WORD    wReserved5;
} MCI_WAVE_SET_PARMS, *PMCI_WAVE_SET_PARMS,  * LPMCI_WAVE_SET_PARMS;








































typedef struct tagMCI_SEQ_SET_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwTimeFormat;
    DWORD       dwAudio;
    DWORD       dwTempo;
    DWORD       dwPort;
    DWORD       dwSlave;
    DWORD       dwMaster;
    DWORD       dwOffset;
} MCI_SEQ_SET_PARMS, *PMCI_SEQ_SET_PARMS,  * LPMCI_SEQ_SET_PARMS;






































































typedef struct tagMCI_ANIM_OPEN_PARMSA {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_ANIM_OPEN_PARMSA, *PMCI_ANIM_OPEN_PARMSA, *LPMCI_ANIM_OPEN_PARMSA;
typedef struct tagMCI_ANIM_OPEN_PARMSW {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_ANIM_OPEN_PARMSW, *PMCI_ANIM_OPEN_PARMSW, *LPMCI_ANIM_OPEN_PARMSW;





typedef MCI_ANIM_OPEN_PARMSA MCI_ANIM_OPEN_PARMS;
typedef PMCI_ANIM_OPEN_PARMSA PMCI_ANIM_OPEN_PARMS;
typedef LPMCI_ANIM_OPEN_PARMSA LPMCI_ANIM_OPEN_PARMS;


















typedef struct tagMCI_ANIM_PLAY_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrom;
    DWORD       dwTo;
    DWORD       dwSpeed;
} MCI_ANIM_PLAY_PARMS, *PMCI_ANIM_PLAY_PARMS,  *LPMCI_ANIM_PLAY_PARMS;



typedef struct tagMCI_ANIM_STEP_PARMS {
    DWORD_PTR   dwCallback;
    DWORD       dwFrames;
} MCI_ANIM_STEP_PARMS, *PMCI_ANIM_STEP_PARMS,  *LPMCI_ANIM_STEP_PARMS;





typedef struct tagMCI_ANIM_WINDOW_PARMSA {
    DWORD_PTR   dwCallback;
    HWND        hWnd;
    UINT        nCmdShow;
    LPCSTR     lpstrText;
} MCI_ANIM_WINDOW_PARMSA, *PMCI_ANIM_WINDOW_PARMSA, * LPMCI_ANIM_WINDOW_PARMSA;
typedef struct tagMCI_ANIM_WINDOW_PARMSW {
    DWORD_PTR   dwCallback;
    HWND        hWnd;
    UINT        nCmdShow;
    LPCWSTR    lpstrText;
} MCI_ANIM_WINDOW_PARMSW, *PMCI_ANIM_WINDOW_PARMSW, * LPMCI_ANIM_WINDOW_PARMSW;





typedef MCI_ANIM_WINDOW_PARMSA MCI_ANIM_WINDOW_PARMS;
typedef PMCI_ANIM_WINDOW_PARMSA PMCI_ANIM_WINDOW_PARMS;
typedef LPMCI_ANIM_WINDOW_PARMSA LPMCI_ANIM_WINDOW_PARMS;















typedef struct tagMCI_ANIM_RECT_PARMS {
    DWORD_PTR   dwCallback;




    RECT    rc;

} MCI_ANIM_RECT_PARMS;
typedef MCI_ANIM_RECT_PARMS * PMCI_ANIM_RECT_PARMS;
typedef MCI_ANIM_RECT_PARMS  * LPMCI_ANIM_RECT_PARMS;



typedef struct tagMCI_ANIM_UPDATE_PARMS {
    DWORD_PTR   dwCallback;
    RECT        rc;
    HDC         hDC;
} MCI_ANIM_UPDATE_PARMS, *PMCI_ANIM_UPDATE_PARMS,  * LPMCI_ANIM_UPDATE_PARMS;















































typedef struct tagMCI_OVLY_OPEN_PARMSA {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCSTR      lpstrDeviceType;
    LPCSTR      lpstrElementName;
    LPCSTR      lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_OVLY_OPEN_PARMSA, *PMCI_OVLY_OPEN_PARMSA, *LPMCI_OVLY_OPEN_PARMSA;
typedef struct tagMCI_OVLY_OPEN_PARMSW {
    DWORD_PTR   dwCallback;
    MCIDEVICEID wDeviceID;
    LPCWSTR     lpstrDeviceType;
    LPCWSTR     lpstrElementName;
    LPCWSTR     lpstrAlias;
    DWORD   dwStyle;
    HWND    hWndParent;
} MCI_OVLY_OPEN_PARMSW, *PMCI_OVLY_OPEN_PARMSW, *LPMCI_OVLY_OPEN_PARMSW;





typedef MCI_OVLY_OPEN_PARMSA MCI_OVLY_OPEN_PARMS;
typedef PMCI_OVLY_OPEN_PARMSA PMCI_OVLY_OPEN_PARMS;
typedef LPMCI_OVLY_OPEN_PARMSA LPMCI_OVLY_OPEN_PARMS;




















typedef struct tagMCI_OVLY_WINDOW_PARMSA {
    DWORD_PTR   dwCallback;
    HWND        hWnd;
    UINT        nCmdShow;
    LPCSTR      lpstrText;
} MCI_OVLY_WINDOW_PARMSA, *PMCI_OVLY_WINDOW_PARMSA, * LPMCI_OVLY_WINDOW_PARMSA;
typedef struct tagMCI_OVLY_WINDOW_PARMSW {
    DWORD_PTR   dwCallback;
    HWND        hWnd;
    UINT        nCmdShow;
    LPCWSTR     lpstrText;
} MCI_OVLY_WINDOW_PARMSW, *PMCI_OVLY_WINDOW_PARMSW, * LPMCI_OVLY_WINDOW_PARMSW;





typedef MCI_OVLY_WINDOW_PARMSA MCI_OVLY_WINDOW_PARMS;
typedef PMCI_OVLY_WINDOW_PARMSA PMCI_OVLY_WINDOW_PARMS;
typedef LPMCI_OVLY_WINDOW_PARMSA LPMCI_OVLY_WINDOW_PARMS;














typedef struct tagMCI_OVLY_RECT_PARMS {
    DWORD_PTR   dwCallback;




    RECT    rc;

} MCI_OVLY_RECT_PARMS, *PMCI_OVLY_RECT_PARMS,  * LPMCI_OVLY_RECT_PARMS;





typedef struct tagMCI_OVLY_SAVE_PARMSA {
    DWORD_PTR   dwCallback;
    LPCSTR      lpfilename;
    RECT        rc;
} MCI_OVLY_SAVE_PARMSA, *PMCI_OVLY_SAVE_PARMSA, * LPMCI_OVLY_SAVE_PARMSA;
typedef struct tagMCI_OVLY_SAVE_PARMSW {
    DWORD_PTR   dwCallback;
    LPCWSTR     lpfilename;
    RECT        rc;
} MCI_OVLY_SAVE_PARMSW, *PMCI_OVLY_SAVE_PARMSW, * LPMCI_OVLY_SAVE_PARMSW;





typedef MCI_OVLY_SAVE_PARMSA MCI_OVLY_SAVE_PARMS;
typedef PMCI_OVLY_SAVE_PARMSA PMCI_OVLY_SAVE_PARMS;
typedef LPMCI_OVLY_SAVE_PARMSA LPMCI_OVLY_SAVE_PARMS;













typedef struct tagMCI_OVLY_LOAD_PARMSA {
    DWORD_PTR   dwCallback;
    LPCSTR      lpfilename;
    RECT    rc;
} MCI_OVLY_LOAD_PARMSA, *PMCI_OVLY_LOAD_PARMSA, * LPMCI_OVLY_LOAD_PARMSA;
typedef struct tagMCI_OVLY_LOAD_PARMSW {
    DWORD_PTR   dwCallback;
    LPCWSTR     lpfilename;
    RECT    rc;
} MCI_OVLY_LOAD_PARMSW, *PMCI_OVLY_LOAD_PARMSW, * LPMCI_OVLY_LOAD_PARMSW;





typedef MCI_OVLY_LOAD_PARMSA MCI_OVLY_LOAD_PARMS;
typedef PMCI_OVLY_LOAD_PARMSA PMCI_OVLY_LOAD_PARMS;
typedef LPMCI_OVLY_LOAD_PARMSA LPMCI_OVLY_LOAD_PARMS;


















    

    






























}                       






























#pragma warning(disable:4103)

#pragma pack(pop)







































#pragma once



extern "C" {















typedef struct _NCB {
    UCHAR   ncb_command;            
    UCHAR   ncb_retcode;            
    UCHAR   ncb_lsn;                
    UCHAR   ncb_num;                
    PUCHAR  ncb_buffer;             
    WORD    ncb_length;             
    UCHAR   ncb_callname[16]; 
    UCHAR   ncb_name[16];     
    UCHAR   ncb_rto;                
    UCHAR   ncb_sto;                
    void (__stdcall *ncb_post)( struct _NCB * ); 
    UCHAR   ncb_lana_num;           
    UCHAR   ncb_cmd_cplt;           



    UCHAR   ncb_reserve[10];        

    HANDLE  ncb_event;              
                                    
                                    
                                    
} NCB, *PNCB;






typedef struct _ADAPTER_STATUS {
    UCHAR   adapter_address[6];
    UCHAR   rev_major;
    UCHAR   reserved0;
    UCHAR   adapter_type;
    UCHAR   rev_minor;
    WORD    duration;
    WORD    frmr_recv;
    WORD    frmr_xmit;

    WORD    iframe_recv_err;

    WORD    xmit_aborts;
    DWORD   xmit_success;
    DWORD   recv_success;

    WORD    iframe_xmit_err;

    WORD    recv_buff_unavail;
    WORD    t1_timeouts;
    WORD    ti_timeouts;
    DWORD   reserved1;
    WORD    free_ncbs;
    WORD    max_cfg_ncbs;
    WORD    max_ncbs;
    WORD    xmit_buf_unavail;
    WORD    max_dgram_size;
    WORD    pending_sess;
    WORD    max_cfg_sess;
    WORD    max_sess;
    WORD    max_sess_pkt_size;
    WORD    name_count;
} ADAPTER_STATUS, *PADAPTER_STATUS;

typedef struct _NAME_BUFFER {
    UCHAR   name[16];
    UCHAR   name_num;
    UCHAR   name_flags;
} NAME_BUFFER, *PNAME_BUFFER;





















typedef struct _SESSION_HEADER {
    UCHAR   sess_name;
    UCHAR   num_sess;
    UCHAR   rcv_dg_outstanding;
    UCHAR   rcv_any_outstanding;
} SESSION_HEADER, *PSESSION_HEADER;

typedef struct _SESSION_BUFFER {
    UCHAR   lsn;
    UCHAR   state;
    UCHAR   local_name[16];
    UCHAR   remote_name[16];
    UCHAR   rcvs_outstanding;
    UCHAR   sends_outstanding;
} SESSION_BUFFER, *PSESSION_BUFFER;

















typedef struct _LANA_ENUM {
    UCHAR   length;         
    UCHAR   lana[254+1];
} LANA_ENUM, *PLANA_ENUM;






typedef struct _FIND_NAME_HEADER {
    WORD    node_count;
    UCHAR   reserved;
    UCHAR   unique_group;
} FIND_NAME_HEADER, *PFIND_NAME_HEADER;

typedef struct _FIND_NAME_BUFFER {
    UCHAR   length;
    UCHAR   access_control;
    UCHAR   frame_control;
    UCHAR   destination_addr[6];
    UCHAR   source_addr[6];
    UCHAR   routing_info[18];
} FIND_NAME_BUFFER, *PFIND_NAME_BUFFER;






typedef struct _ACTION_HEADER {
    ULONG   transport_id;
    USHORT  action_code;
    USHORT  reserved;
} ACTION_HEADER, *PACTION_HEADER;




















































                                















































UCHAR
__stdcall
Netbios(
    PNCB pncb
    );











}



























#pragma once



extern "C" {





































typedef void * I_RPC_HANDLE;
typedef long RPC_STATUS;




























































































#pragma once



extern "C" {




























typedef  unsigned char  *RPC_CSTR;
typedef  unsigned short  *RPC_WSTR;

typedef I_RPC_HANDLE RPC_BINDING_HANDLE;
typedef RPC_BINDING_HANDLE handle_t;








typedef GUID UUID;





typedef struct _RPC_BINDING_VECTOR
{
    unsigned long Count;
    RPC_BINDING_HANDLE BindingH[1];
} RPC_BINDING_VECTOR;




typedef struct _UUID_VECTOR
{
  unsigned long Count;
  UUID *Uuid[1];
} UUID_VECTOR;




typedef void  * RPC_IF_HANDLE;



typedef struct _RPC_IF_ID
{
    UUID Uuid;
    unsigned short VersMajor;
    unsigned short VersMinor;
} RPC_IF_ID;

























































typedef struct _RPC_PROTSEQ_VECTORA
{
    unsigned int Count;
    unsigned char  * Protseq[1];
} RPC_PROTSEQ_VECTORA;

typedef struct _RPC_PROTSEQ_VECTORW
{
    unsigned int Count;
    unsigned short  * Protseq[1];
} RPC_PROTSEQ_VECTORW;
















typedef struct _RPC_POLICY {
    unsigned int Length ;
    unsigned long EndpointFlags ;
    unsigned long NICFlags ;
    } RPC_POLICY,   *PRPC_POLICY ;

typedef void __stdcall
RPC_OBJECT_INQ_FN (
     UUID  * ObjectUuid,
     UUID  * TypeUuid,
     RPC_STATUS  * Status
    );

typedef RPC_STATUS __stdcall
RPC_IF_CALLBACK_FN (
     RPC_IF_HANDLE  InterfaceUuid,
     void *Context
    ) ;

typedef void __stdcall
RPC_SECURITY_CALLBACK_FN (
     void *Context
    ) ;



typedef struct
{
    unsigned int Count;
    unsigned long Stats[1];
} RPC_STATS_VECTOR;






typedef struct
{
  unsigned long Count;
  RPC_IF_ID  * IfId[1];
} RPC_IF_ID_VECTOR;


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingCopy (
     RPC_BINDING_HANDLE SourceBinding,
     RPC_BINDING_HANDLE  * DestinationBinding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFree (
      RPC_BINDING_HANDLE  * Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetOption(  RPC_BINDING_HANDLE hBinding,
                      unsigned long      option,
                      ULONG_PTR          optionValue );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqOption(   RPC_BINDING_HANDLE hBinding,
                       unsigned long      option,
                      ULONG_PTR         *pOptionValue );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFromStringBindingA (
         RPC_CSTR StringBinding,
         RPC_BINDING_HANDLE  *Binding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingFromStringBindingW (
         RPC_WSTR StringBinding,
         RPC_BINDING_HANDLE  *Binding
    );




















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSsGetContextBinding (
     void *ContextHandle,
     RPC_BINDING_HANDLE  * Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqObject (
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingReset (
     RPC_BINDING_HANDLE Binding
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetObject (
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqDefaultProtectLevel(
      unsigned long AuthnSvc,
     unsigned long  *AuthnLevel
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingToStringBindingA (
         RPC_BINDING_HANDLE Binding,
                  RPC_CSTR  *StringBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingToStringBindingW (
         RPC_BINDING_HANDLE Binding,
                  RPC_WSTR  *StringBinding
    );




















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingVectorFree (
      RPC_BINDING_VECTOR  *  * BindingVector
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingComposeA (
           RPC_CSTR ObjUuid,
           RPC_CSTR Protseq,
           RPC_CSTR NetworkAddr,
           RPC_CSTR Endpoint,
           RPC_CSTR Options,
                    RPC_CSTR  *StringBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingComposeW (
           RPC_WSTR ObjUuid,
           RPC_WSTR Protseq,
           RPC_WSTR NetworkAddr,
           RPC_WSTR Endpoint,
           RPC_WSTR Options,
                    RPC_WSTR  *StringBinding
    );



























__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingParseA (
         RPC_CSTR StringBinding,
                    RPC_CSTR  *ObjUuid,
                    RPC_CSTR  *Protseq,
                    RPC_CSTR  *NetworkAddr,
                    RPC_CSTR  *Endpoint,
                    RPC_CSTR  *NetworkOptions
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringBindingParseW (
         RPC_WSTR StringBinding,
                    RPC_WSTR  *ObjUuid,
                    RPC_WSTR  *Protseq,
                    RPC_WSTR  *NetworkAddr,
                    RPC_WSTR  *Endpoint,
                    RPC_WSTR  *NetworkOptions
    );



























__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringFreeA (
     RPC_CSTR  *String
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcStringFreeW (
     RPC_WSTR  *String
    );



















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcIfInqId (
     RPC_IF_HANDLE RpcIfHandle,
     RPC_IF_ID  * RpcIfId
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkIsProtseqValidA (
         RPC_CSTR Protseq
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkIsProtseqValidW (
         RPC_WSTR Protseq
    );



















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqComTimeout (
     RPC_BINDING_HANDLE Binding,
     unsigned int  * Timeout
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetComTimeout (
     RPC_BINDING_HANDLE Binding,
     unsigned int Timeout
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetCancelTimeout(
    long Timeout
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkInqProtseqsA (
     RPC_PROTSEQ_VECTORA  *  * ProtseqVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNetworkInqProtseqsW (
     RPC_PROTSEQ_VECTORW  *  * ProtseqVector
    );



















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectInqType (
     UUID  * ObjUuid,
     UUID  * TypeUuid 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectSetInqFn (
     RPC_OBJECT_INQ_FN  * InquiryFn
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcObjectSetType (
     UUID  * ObjUuid,
     UUID  * TypeUuid 
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcProtseqVectorFreeA (
      RPC_PROTSEQ_VECTORA  *  * ProtseqVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcProtseqVectorFreeW (
      RPC_PROTSEQ_VECTORW  *  * ProtseqVector
    );



















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqBindings (
     RPC_BINDING_VECTOR  *  * BindingVector
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid, 
     void  *  * MgrEpv
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerListen (
     unsigned int MinimumCallThreads,
     unsigned int MaxCalls,
     unsigned int DontWait
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid ,
     void  * MgrEpv 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterIfEx (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid,
     void  * MgrEpv,
     unsigned int Flags,
     unsigned int MaxCalls,
     RPC_IF_CALLBACK_FN  *IfCallback
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterIf2 (
     RPC_IF_HANDLE IfSpec,
     UUID * MgrTypeUuid,
     void * MgrEpv,
     unsigned int Flags,
     unsigned int MaxCalls,
     unsigned int MaxRpcSize,
     RPC_IF_CALLBACK_FN *IfCallbackFn
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUnregisterIf (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid, 
     unsigned int WaitForCallsToComplete
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUnregisterIfEx (
     RPC_IF_HANDLE IfSpec,
     UUID  * MgrTypeUuid, 
     int RundownContextHandles
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqs (
     unsigned int MaxCalls,
     void  * SecurityDescriptor 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsEx (
     unsigned int MaxCalls,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsIf (
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor 
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseAllProtseqsIfEx (
     unsigned int MaxCalls,
     RPC_IF_HANDLE IfSpec,
     void  * SecurityDescriptor,
     PRPC_POLICY Policy
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqExA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqExW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );




































__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         RPC_CSTR Endpoint,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpExA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         RPC_CSTR Endpoint,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         RPC_WSTR Endpoint,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqEpExW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         RPC_WSTR Endpoint,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );






































__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         RPC_IF_HANDLE IfSpec,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfExA (
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         RPC_IF_HANDLE IfSpec,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         RPC_IF_HANDLE IfSpec,
           void  *SecurityDescriptor
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerUseProtseqIfExW (
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         RPC_IF_HANDLE IfSpec,
           void  *SecurityDescriptor,
         PRPC_POLICY Policy
    );


































__declspec(dllimport)
void
__stdcall
RpcServerYield (
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtStatsVectorFree (
     RPC_STATS_VECTOR ** StatsVector
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqStats (
     RPC_BINDING_HANDLE Binding,
     RPC_STATS_VECTOR ** Statistics
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtIsServerListening (
     RPC_BINDING_HANDLE Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtStopServerListening (
     RPC_BINDING_HANDLE Binding
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtWaitServerListen (
    void
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetServerStackSize (
     unsigned long ThreadStackSize
    );


__declspec(dllimport)
void
__stdcall
RpcSsDontSerializeContext (
    void
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEnableIdleCleanup (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqIfIds (
     RPC_BINDING_HANDLE Binding,
     RPC_IF_ID_VECTOR  *  * IfIdVector
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcIfIdVectorFree (
      RPC_IF_ID_VECTOR  *  * IfIdVector
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqServerPrincNameA (
         RPC_BINDING_HANDLE Binding,
         unsigned long AuthnSvc,
                  RPC_CSTR  *ServerPrincName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtInqServerPrincNameW (
         RPC_BINDING_HANDLE Binding,
         unsigned long AuthnSvc,
                  RPC_WSTR  *ServerPrincName
    );






















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqDefaultPrincNameA (
         unsigned long AuthnSvc,
                  RPC_CSTR  *PrincName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqDefaultPrincNameW (
         unsigned long AuthnSvc,
                  RPC_WSTR  *PrincName
    );




















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpResolveBinding (
     RPC_BINDING_HANDLE Binding,
     RPC_IF_HANDLE IfSpec
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNsBindingInqEntryNameA (
         RPC_BINDING_HANDLE Binding,
         unsigned long EntryNameSyntax,
                  RPC_CSTR  *EntryName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcNsBindingInqEntryNameW (
         RPC_BINDING_HANDLE Binding,
         unsigned long EntryNameSyntax,
                  RPC_WSTR  *EntryName
    );




















typedef void  * RPC_AUTH_IDENTITY_HANDLE;
typedef void  * RPC_AUTHZ_HANDLE;




















































typedef struct _RPC_SECURITY_QOS {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
} RPC_SECURITY_QOS, *PRPC_SECURITY_QOS;







typedef struct _SEC_WINNT_AUTH_IDENTITY_W {
  unsigned short  *User;
  unsigned long UserLength;
  unsigned short  *Domain;
  unsigned long DomainLength;
  unsigned short  *Password;
  unsigned long PasswordLength;
  unsigned long Flags;
} SEC_WINNT_AUTH_IDENTITY_W, *PSEC_WINNT_AUTH_IDENTITY_W;

typedef struct _SEC_WINNT_AUTH_IDENTITY_A {
  unsigned char  *User;
  unsigned long UserLength;
  unsigned char  *Domain;
  unsigned long DomainLength;
  unsigned char  *Password;
  unsigned long PasswordLength;
  unsigned long Flags;
} SEC_WINNT_AUTH_IDENTITY_A, *PSEC_WINNT_AUTH_IDENTITY_A;






























typedef struct _RPC_HTTP_TRANSPORT_CREDENTIALS_W
{
    SEC_WINNT_AUTH_IDENTITY_W *TransportCredentials;
    unsigned long Flags;
    unsigned long AuthenticationTarget;
    unsigned long NumberOfAuthnSchemes;
    unsigned long *AuthnSchemes;
    unsigned short  *ServerCertificateSubject;
} RPC_HTTP_TRANSPORT_CREDENTIALS_W, *PRPC_HTTP_TRANSPORT_CREDENTIALS_W;

typedef struct _RPC_HTTP_TRANSPORT_CREDENTIALS_A
{
    SEC_WINNT_AUTH_IDENTITY_A *TransportCredentials;
    unsigned long Flags;
    unsigned long AuthenticationTarget;
    unsigned long NumberOfAuthnSchemes;
    unsigned long *AuthnSchemes;
    unsigned char  *ServerCertificateSubject;
} RPC_HTTP_TRANSPORT_CREDENTIALS_A, *PRPC_HTTP_TRANSPORT_CREDENTIALS_A;

typedef struct _RPC_SECURITY_QOS_V2_W {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
  unsigned long AdditionalSecurityInfoType;
  union 
      {
      RPC_HTTP_TRANSPORT_CREDENTIALS_W *HttpCredentials;
      } u;
} RPC_SECURITY_QOS_V2_W, *PRPC_SECURITY_QOS_V2_W;

typedef struct _RPC_SECURITY_QOS_V2_A {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
  unsigned long AdditionalSecurityInfoType;
  union 
      {
      RPC_HTTP_TRANSPORT_CREDENTIALS_A *HttpCredentials;
      } u;
} RPC_SECURITY_QOS_V2_A, *PRPC_SECURITY_QOS_V2_A;



typedef struct _RPC_SECURITY_QOS_V3_W {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
  unsigned long AdditionalSecurityInfoType;
  union 
      {
      RPC_HTTP_TRANSPORT_CREDENTIALS_W *HttpCredentials;
      } u;
  void *Sid;
} RPC_SECURITY_QOS_V3_W, *PRPC_SECURITY_QOS_V3_W;

typedef struct _RPC_SECURITY_QOS_V3_A {
  unsigned long Version;
  unsigned long Capabilities;
  unsigned long IdentityTracking;
  unsigned long ImpersonationType;
  unsigned long AdditionalSecurityInfoType;
  union 
      {
      RPC_HTTP_TRANSPORT_CREDENTIALS_A *HttpCredentials;
      } u;
  void *Sid;
} RPC_SECURITY_QOS_V3_A, *PRPC_SECURITY_QOS_V3_A;

































typedef enum _RPC_HTTP_REDIRECTOR_STAGE
{
    RPCHTTP_RS_REDIRECT = 1,
    RPCHTTP_RS_ACCESS_1,
    RPCHTTP_RS_SESSION,
    RPCHTTP_RS_ACCESS_2,
    RPCHTTP_RS_INTERFACE
} RPC_HTTP_REDIRECTOR_STAGE;

typedef RPC_STATUS
(__stdcall * RPC_NEW_HTTP_PROXY_CHANNEL) (
     RPC_HTTP_REDIRECTOR_STAGE RedirectorStage,
     unsigned short  *ServerName,
     unsigned short  *ServerPort,
      unsigned short  *RemoteUser,
      unsigned short  *AuthType,
      void  *ResourceUuid,
      void  *Metadata,
      void  *SessionId,
      void  *Interface,
      void  *Reserved,
     unsigned long Flags,
      unsigned short  **NewServerName,
      unsigned short  **NewServerPort
    );

typedef void
(__stdcall * RPC_HTTP_PROXY_FREE_STRING) (
     unsigned short  *String
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
RpcImpersonateClient (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcRevertToSelfEx (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcRevertToSelf (
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientA (
           RPC_BINDING_HANDLE ClientBinding,
         RPC_AUTHZ_HANDLE  *Privs,
                    RPC_CSTR  *ServerPrincName,
           unsigned long  *AuthnLevel, 
           unsigned long  *AuthnSvc,
           unsigned long  *AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientW (
           RPC_BINDING_HANDLE ClientBinding,
         RPC_AUTHZ_HANDLE  *Privs,
                    RPC_WSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           unsigned long  *AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientExA (
           RPC_BINDING_HANDLE ClientBinding,
         RPC_AUTHZ_HANDLE  *Privs,
                    RPC_CSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           unsigned long  *AuthzSvc,
      unsigned long             Flags
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthClientExW (
           RPC_BINDING_HANDLE ClientBinding,
         RPC_AUTHZ_HANDLE  *Privs,
                    RPC_WSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           unsigned long  *AuthzSvc,
      unsigned long             Flags
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoA (
         RPC_BINDING_HANDLE Binding,
                    RPC_CSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE  *AuthIdentity,
           unsigned long  *AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoW (
         RPC_BINDING_HANDLE Binding,
                    RPC_WSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE  *AuthIdentity,
           unsigned long  *AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoA (
         RPC_BINDING_HANDLE Binding,
         RPC_CSTR ServerPrincName,
         unsigned long AuthnLevel,
         unsigned long AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE AuthIdentity,
         unsigned long AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoExA (
         RPC_BINDING_HANDLE Binding,
         RPC_CSTR ServerPrincName,
         unsigned long AuthnLevel,
         unsigned long AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE AuthIdentity,
         unsigned long AuthzSvc,
           RPC_SECURITY_QOS *SecurityQos
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoW (
         RPC_BINDING_HANDLE Binding,
         RPC_WSTR ServerPrincName,
         unsigned long AuthnLevel,
         unsigned long AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE AuthIdentity,
         unsigned long AuthzSvc
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingSetAuthInfoExW (
         RPC_BINDING_HANDLE Binding,
         RPC_WSTR ServerPrincName,
         unsigned long AuthnLevel,
         unsigned long AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE AuthIdentity,
         unsigned long AuthzSvc,
           RPC_SECURITY_QOS *SecurityQOS
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoExA (
         RPC_BINDING_HANDLE Binding,
                    RPC_CSTR  *ServerPrincName,
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE  *AuthIdentity,
           unsigned long  *AuthzSvc,
         unsigned long RpcQosVersion,
           RPC_SECURITY_QOS *SecurityQOS
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingInqAuthInfoExW (
         RPC_BINDING_HANDLE Binding,
                    RPC_WSTR  *ServerPrincName, 
           unsigned long  *AuthnLevel,
           unsigned long  *AuthnSvc,
           RPC_AUTH_IDENTITY_HANDLE  *AuthIdentity,
           unsigned long  *AuthzSvc,
         unsigned long RpcQosVersion,
           RPC_SECURITY_QOS *SecurityQOS
    );

typedef void
(__stdcall * RPC_AUTH_KEY_RETRIEVAL_FN) (
     void  * Arg,
     unsigned short  * ServerPrincName,
     unsigned long KeyVer,
     void  *  * Key,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterAuthInfoA (
         RPC_CSTR ServerPrincName,
         unsigned long AuthnSvc,
           RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn,
           void  *Arg
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerRegisterAuthInfoW (
         RPC_WSTR ServerPrincName,
         unsigned long AuthnSvc,
           RPC_AUTH_KEY_RETRIEVAL_FN GetKeyFn,
           void  *Arg
    );




























































































typedef struct {
    unsigned char  * UserName;
    unsigned char  * ComputerName;
    unsigned short Privilege;
    unsigned long AuthFlags;
} RPC_CLIENT_INFORMATION1,  * PRPC_CLIENT_INFORMATION1;


__declspec(dllimport)
RPC_STATUS
__stdcall
RpcBindingServerFromClient (
     RPC_BINDING_HANDLE ClientBinding,
     RPC_BINDING_HANDLE  * ServerBinding
    );

__declspec(dllimport)
__declspec(noreturn)
void
__stdcall
RpcRaiseException (
     RPC_STATUS exception
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcTestCancel(
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerTestCancel (
     RPC_BINDING_HANDLE BindingHandle 
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcCancelThread(
     void * Thread
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcCancelThreadEx(
     void * Thread,
     long Timeout
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidCreate (
     UUID  * Uuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidCreateSequential (
     UUID  * Uuid
    );




__declspec(dllimport)
RPC_STATUS
__stdcall
UuidToStringA (
         UUID  *Uuid,
                  RPC_CSTR  *StringUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidFromStringA (
         RPC_CSTR StringUuid,
         UUID  *Uuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidToStringW (
         UUID  *Uuid,
                  RPC_WSTR  *StringUuid
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
UuidFromStringW (
           RPC_WSTR StringUuid,
         UUID  *Uuid
    );































__declspec(dllimport)
signed int
__stdcall
UuidCompare (
     UUID  * Uuid1,
     UUID  * Uuid2,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
UuidCreateNil (
     UUID  * NilUuid
    );

__declspec(dllimport)
int
__stdcall
UuidEqual (
     UUID  * Uuid1,
     UUID  * Uuid2,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
unsigned short
__stdcall
UuidHash (
     UUID  * Uuid,
     RPC_STATUS  * Status
    );

__declspec(dllimport)
int
__stdcall
UuidIsNil (
     UUID  * Uuid,
     RPC_STATUS  * Status
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterNoReplaceA (
         RPC_IF_HANDLE IfSpec,
         RPC_BINDING_VECTOR *BindingVector,
           UUID_VECTOR *UuidVector,
           RPC_CSTR Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterNoReplaceW (
         RPC_IF_HANDLE IfSpec,
         RPC_BINDING_VECTOR *BindingVector,
           UUID_VECTOR *UuidVector,
           RPC_WSTR Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterA (
         RPC_IF_HANDLE IfSpec,
         RPC_BINDING_VECTOR *BindingVector,
           UUID_VECTOR *UuidVector,
           RPC_CSTR Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpRegisterW (
         RPC_IF_HANDLE IfSpec,
         RPC_BINDING_VECTOR *BindingVector,
           UUID_VECTOR *UuidVector,
           RPC_WSTR Annotation
    );


































__declspec(dllimport)
RPC_STATUS
__stdcall
RpcEpUnregister(
     RPC_IF_HANDLE IfSpec,
     RPC_BINDING_VECTOR *BindingVector,
     UUID_VECTOR *UuidVector
    );





__declspec(dllimport)
RPC_STATUS
__stdcall
DceErrorInqTextA (
         RPC_STATUS RpcStatus,
         RPC_CSTR ErrorText
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
DceErrorInqTextW (
         RPC_STATUS RpcStatus,
         RPC_WSTR ErrorText
    );



















typedef I_RPC_HANDLE * RPC_EP_INQ_HANDLE;












__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqBegin (
     RPC_BINDING_HANDLE EpBinding ,
     unsigned long InquiryType,
     RPC_IF_ID  * IfId ,
     unsigned long VersOption ,
     UUID  * ObjectUuid ,
     RPC_EP_INQ_HANDLE  * InquiryContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqDone (
      RPC_EP_INQ_HANDLE  * InquiryContext
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqNextA (
         RPC_EP_INQ_HANDLE InquiryContext,
         RPC_IF_ID  *IfId,
           RPC_BINDING_HANDLE  *Binding,
           UUID  *ObjectUuid,
                    RPC_CSTR  *Annotation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpEltInqNextW (
         RPC_EP_INQ_HANDLE InquiryContext,
         RPC_IF_ID  *IfId,
           RPC_BINDING_HANDLE  *Binding,
           UUID  *ObjectUuid,
                    RPC_WSTR  *Annotation
    );





















__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtEpUnregister (
     RPC_BINDING_HANDLE EpBinding ,
     RPC_IF_ID  * IfId,
     RPC_BINDING_HANDLE Binding,
     UUID  * ObjectUuid 
    );

typedef int
(__stdcall * RPC_MGMT_AUTHORIZATION_FN) (
     RPC_BINDING_HANDLE ClientBinding,
     unsigned long RequestedMgmtOperation,
     RPC_STATUS  * Status
    );







__declspec(dllimport)
RPC_STATUS
__stdcall
RpcMgmtSetAuthorizationFn (
     RPC_MGMT_AUTHORIZATION_FN AuthorizationFn
    );


































#pragma once



extern "C" {


typedef struct _RPC_VERSION {
    unsigned short MajorVersion;
    unsigned short MinorVersion;
} RPC_VERSION;

typedef struct _RPC_SYNTAX_IDENTIFIER {
    GUID SyntaxGUID;
    RPC_VERSION SyntaxVersion;
} RPC_SYNTAX_IDENTIFIER,  * PRPC_SYNTAX_IDENTIFIER;

typedef struct _RPC_MESSAGE
{
    RPC_BINDING_HANDLE Handle;
    unsigned long DataRepresentation;
    void  * Buffer;
    unsigned int BufferLength;
    unsigned int ProcNum;
    PRPC_SYNTAX_IDENTIFIER TransferSyntax;
    void  * RpcInterfaceInformation;
    void  * ReservedForRuntime;
    void  * ManagerEpv;
    void  * ImportContext;
    unsigned long RpcFlags;
} RPC_MESSAGE,  * PRPC_MESSAGE;


typedef RPC_STATUS
__stdcall RPC_FORWARD_FUNCTION(
                        UUID              * InterfaceId,
                        RPC_VERSION       * InterfaceVersion,
                        UUID              * ObjectId,
                        unsigned char          * Rpcpro,
                        void  *  * ppDestEndpoint);

enum RPC_ADDRESS_CHANGE_TYPE
{
    PROTOCOL_NOT_LOADED = 1,
    PROTOCOL_LOADED,
    PROTOCOL_ADDRESS_CHANGE
};

typedef void
__stdcall RPC_ADDRESS_CHANGE_FN(
                         void * arg
                        );







































typedef
void
(__stdcall  * RPC_DISPATCH_FUNCTION) (
      PRPC_MESSAGE Message
    );

typedef struct {
    unsigned int DispatchTableCount;
    RPC_DISPATCH_FUNCTION  * DispatchTable;
    LONG_PTR                          Reserved;
} RPC_DISPATCH_TABLE,  * PRPC_DISPATCH_TABLE;

typedef struct _RPC_PROTSEQ_ENDPOINT
{
    unsigned char  * RpcProtocolSequence;
    unsigned char  * Endpoint;
} RPC_PROTSEQ_ENDPOINT,  * PRPC_PROTSEQ_ENDPOINT;








typedef struct _RPC_SERVER_INTERFACE
{
    unsigned int Length;
    RPC_SYNTAX_IDENTIFIER InterfaceId;
    RPC_SYNTAX_IDENTIFIER TransferSyntax;
    PRPC_DISPATCH_TABLE DispatchTable;
    unsigned int RpcProtseqEndpointCount;
    PRPC_PROTSEQ_ENDPOINT RpcProtseqEndpoint;
    void  *DefaultManagerEpv;
    void const  *InterpreterInfo;
    unsigned int Flags ;
} RPC_SERVER_INTERFACE,  * PRPC_SERVER_INTERFACE;

typedef struct _RPC_CLIENT_INTERFACE
{
    unsigned int Length;
    RPC_SYNTAX_IDENTIFIER   InterfaceId;
    RPC_SYNTAX_IDENTIFIER   TransferSyntax;
    PRPC_DISPATCH_TABLE     DispatchTable;
    unsigned int            RpcProtseqEndpointCount;
    PRPC_PROTSEQ_ENDPOINT   RpcProtseqEndpoint;
    ULONG_PTR               Reserved;
    void const  *  InterpreterInfo;
    unsigned int Flags ;
} RPC_CLIENT_INTERFACE,  * PRPC_CLIENT_INTERFACE;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNegotiateTransferSyntax (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetBuffer (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetBufferWithObject (
      RPC_MESSAGE  * Message,
     UUID * ObjectUuid
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSendReceive (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcFreeBuffer (
      RPC_MESSAGE  * Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSend (
      PRPC_MESSAGE Message
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReceive (
      PRPC_MESSAGE Message,
     unsigned int Size
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcFreePipeBuffer (
      RPC_MESSAGE  * Message
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReallocPipeBuffer (
     PRPC_MESSAGE Message,
     unsigned int NewSize
    ) ;

typedef void * I_RPC_MUTEX;

__declspec(dllimport)
void
__stdcall
I_RpcRequestMutex (
      I_RPC_MUTEX * Mutex
    );

__declspec(dllimport)
void
__stdcall
I_RpcClearMutex (
     I_RPC_MUTEX Mutex
    );

__declspec(dllimport)
void
__stdcall
I_RpcDeleteMutex (
     I_RPC_MUTEX Mutex
    );

__declspec(dllimport)
void  *
__stdcall
I_RpcAllocate (
     unsigned int Size
    );

__declspec(dllimport)
void
__stdcall
I_RpcFree (
     void  * Object
    );

__declspec(dllimport)
void
__stdcall
I_RpcPauseExecution (
     unsigned long Milliseconds
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetExtendedError (
    );

typedef
void
(__stdcall  * PRPC_RUNDOWN) (
    void  * AssociationContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcMonitorAssociation (
     RPC_BINDING_HANDLE Handle,
     PRPC_RUNDOWN RundownRoutine,
     void * Context
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcStopMonitorAssociation (
     RPC_BINDING_HANDLE Handle
    );

__declspec(dllimport)
RPC_BINDING_HANDLE
__stdcall
I_RpcGetCurrentCallHandle(
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcGetAssociationContext (
     RPC_BINDING_HANDLE BindingHandle,
     void  *  * AssociationContext
    );

__declspec(dllimport)
void *
__stdcall
I_RpcGetServerContextList (
     RPC_BINDING_HANDLE BindingHandle
    );

__declspec(dllimport)
void
__stdcall
I_RpcSetServerContextList (
     RPC_BINDING_HANDLE BindingHandle,
     void * ServerContextList
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsInterfaceExported (
     unsigned long EntryNameSyntax,
     unsigned short *EntryName,
     RPC_SERVER_INTERFACE * RpcInterfaceInformation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsInterfaceUnexported (
     unsigned long EntryNameSyntax,
     unsigned short *EntryName,
     RPC_SERVER_INTERFACE * RpcInterfaceInformation
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingToStaticStringBindingW (
     RPC_BINDING_HANDLE Binding,
     unsigned short **StringBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqSecurityContext (
     RPC_BINDING_HANDLE Binding,
     void **SecurityContextHandle
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqWireIdForSnego (
         RPC_BINDING_HANDLE Binding,
         RPC_CSTR WireId
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqMarshalledTargetInfo (
         RPC_BINDING_HANDLE Binding,
         unsigned long *MarshalledTargetInfoLength,
                  RPC_CSTR *MarshalledTargetInfo
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqLocalClientPID (
     RPC_BINDING_HANDLE Binding,
     unsigned long *Pid
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingHandleToAsyncHandle (
     RPC_BINDING_HANDLE Binding,
     void **AsyncHandle
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsBindingSetEntryNameW (
         RPC_BINDING_HANDLE Binding,
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsBindingSetEntryNameA (
         RPC_BINDING_HANDLE Binding,
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUseProtseqEp2A (
         RPC_CSTR NetworkAddress,
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         RPC_CSTR Endpoint,
         void  * SecurityDescriptor,
         void *Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUseProtseqEp2W (
         RPC_WSTR NetworkAddress,
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         RPC_WSTR Endpoint,
         void  *SecurityDescriptor,
         void *Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUseProtseq2W (
         RPC_WSTR NetworkAddress,
         RPC_WSTR Protseq,
         unsigned int MaxCalls,
         void  *SecurityDescriptor,
         void *Policy
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUseProtseq2A (
         RPC_CSTR NetworkAddress,
         RPC_CSTR Protseq,
         unsigned int MaxCalls,
         void  *SecurityDescriptor,
         void *Policy
    );

















































__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqDynamicEndpointW (
         RPC_BINDING_HANDLE Binding,
                      RPC_WSTR  *DynamicEndpoint
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqDynamicEndpointA (
         RPC_BINDING_HANDLE Binding,
                      RPC_CSTR  *DynamicEndpoint
    );



















__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerCheckClientRestriction (
     RPC_BINDING_HANDLE Context
    );






__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqTransportType (
     RPC_BINDING_HANDLE Binding,
     unsigned int  * Type
    );

typedef struct _RPC_TRANSFER_SYNTAX
{
    UUID Uuid;
    unsigned short VersMajor;
    unsigned short VersMinor;
} RPC_TRANSFER_SYNTAX;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcIfInqTransferSyntaxes (
     RPC_IF_HANDLE RpcIfHandle,
     RPC_TRANSFER_SYNTAX  * TransferSyntaxes,
     unsigned int TransferSyntaxSize,
     unsigned int  * TransferSyntaxCount
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_UuidCreate (
     UUID  * Uuid
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingCopy (
     RPC_BINDING_HANDLE SourceBinding,
     RPC_BINDING_HANDLE  * DestinationBinding
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingIsClientLocal (
     RPC_BINDING_HANDLE BindingHandle ,
     unsigned int  * ClientLocalFlag
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingInqConnId (
     RPC_BINDING_HANDLE Binding,
     void **ConnId,
     int *pfFirstCall
    );

__declspec(dllimport)
void
__stdcall
I_RpcSsDontSerializeContext (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcLaunchDatagramReceiveThread(
    void  * pAddress
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerRegisterForwardFunction (
     RPC_FORWARD_FUNCTION  * pForwardFunction
    );

RPC_ADDRESS_CHANGE_FN * __stdcall
I_RpcServerInqAddressChangeFn();

RPC_STATUS __stdcall
I_RpcServerSetAddressChangeFn(
     RPC_ADDRESS_CHANGE_FN * pAddressChangeFn
    );







__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerInqLocalConnAddress (
     RPC_BINDING_HANDLE Binding,
      void *Buffer,
      unsigned long *BufferSize,
     unsigned long *AddressFormat
    );

__declspec(dllimport)
void
__stdcall
I_RpcSessionStrictContextHandle (
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcTurnOnEEInfoPropagation (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcConnectionInqSockBuffSize(
   unsigned long  * RecvBuffSize,
   unsigned long  * SendBuffSize
  );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcConnectionSetSockBuffSize(
    unsigned long RecvBuffSize,
    unsigned long SendBuffSize
   );

typedef
void
(*RPCLT_PDU_FILTER_FUNC) (
     void *Buffer,
     unsigned int BufferLength,
     int fDatagram
    );

typedef
void
(__cdecl *RPC_SETFILTER_FUNC) (
     RPCLT_PDU_FILTER_FUNC pfnFilter
    );


__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerStartListening(
    void * hWnd
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerStopListening(
    ) ;

typedef RPC_STATUS (*RPC_BLOCKING_FN) (
     void * hWnd,
     void * Context,
      void * hSyncEvent
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcBindingSetAsync(
     RPC_BINDING_HANDLE Binding,
     RPC_BLOCKING_FN BlockingFn,
     unsigned long ServerTid
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcSetThreadParams(
     int fClientFree,
      void *Context,
      void * hWndClient
    );

__declspec(dllimport)
unsigned int
__stdcall
I_RpcWindowProc(
     void * hWnd,
     unsigned int Message,
     unsigned int wParam,
     unsigned long lParam
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUnregisterEndpointA (
         RPC_CSTR Protseq,
         RPC_CSTR Endpoint
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerUnregisterEndpointW (
         RPC_WSTR Protseq,
         RPC_WSTR Endpoint
    );








__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcServerInqTransportType(
     unsigned int  * Type
    ) ;

__declspec(dllimport)
long
__stdcall
I_RpcMapWin32Status (
     RPC_STATUS Status
    );

typedef struct _RPC_C_OPT_METADATA_DESCRIPTOR
{
    unsigned long BufferSize;   
    char *Buffer;               
} RPC_C_OPT_METADATA_DESCRIPTOR;

typedef struct _RDR_CALLOUT_STATE
{
    
    RPC_STATUS LastError;
    void *LastEEInfo;

    RPC_HTTP_REDIRECTOR_STAGE LastCalledStage;

    
    unsigned short *ServerName;   
    unsigned short *ServerPort;   
    unsigned short *RemoteUser;   
    unsigned short *AuthType;     
    unsigned char ResourceTypePresent;
    unsigned char MetadataPresent;
    unsigned char SessionIdPresent;
    unsigned char InterfacePresent;
    UUID ResourceType;
    RPC_C_OPT_METADATA_DESCRIPTOR Metadata;     
    UUID SessionId;
    RPC_SYNTAX_IDENTIFIER Interface;
    void *CertContext;            
                                  
                                  
} RDR_CALLOUT_STATE;

typedef RPC_STATUS
(__stdcall *I_RpcProxyIsValidMachineFn)
        (
         char *pszMachine,
         char *pszDotMachine,
         unsigned long dwPortNumber        
        );

typedef RPC_STATUS
(__stdcall *I_RpcProxyGetClientAddressFn)
        (
         void *Context,
         char *Buffer,
         unsigned long *BufferLength
        );

typedef RPC_STATUS
(__stdcall *I_RpcProxyGetConnectionTimeoutFn)
        (
         unsigned long *ConnectionTimeout
        );

typedef RPC_STATUS
(__stdcall *I_RpcPerformCalloutFn) 
    (
     void *Context,
     RDR_CALLOUT_STATE *CallOutState,
     RPC_HTTP_REDIRECTOR_STAGE Stage
    );

typedef void
(__stdcall *I_RpcFreeCalloutStateFn)
    (
     RDR_CALLOUT_STATE *CallOutState
    );

typedef struct tagI_RpcProxyCallbackInterface
{
    I_RpcProxyIsValidMachineFn IsValidMachineFn;
    I_RpcProxyGetClientAddressFn GetClientAddressFn;
    I_RpcProxyGetConnectionTimeoutFn GetConnectionTimeoutFn;
    I_RpcPerformCalloutFn PerformCalloutFn;
    I_RpcFreeCalloutStateFn FreeCalloutStateFn;
} I_RpcProxyCallbackInterface;




__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcProxyNewConnection (
     unsigned long ConnectionType,
     unsigned short *ServerAddress,
     unsigned short *ServerPort,
     unsigned short *MinConnTimeout,
     void *ConnectionParameter,
      RDR_CALLOUT_STATE *CallOutState, 
     I_RpcProxyCallbackInterface *ProxyCallbackInterface
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReplyToClientWithStatus (
     void *ConnectionParameter,
     RPC_STATUS RpcStatus
    );

__declspec(dllimport)
void
__stdcall
I_RpcRecordCalloutFailure (
     RPC_STATUS RpcStatus,
     RDR_CALLOUT_STATE *CallOutState,
     unsigned short *DllName
    );


}






}

























#pragma once


typedef void  * RPC_NS_HANDLE;















__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingExportA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           RPC_BINDING_VECTOR  *BindingVec,
           UUID_VECTOR  *ObjectUuidVec
    );


__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingUnexportA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR  *ObjectUuidVec
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingExportW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           RPC_BINDING_VECTOR  *BindingVec,
           UUID_VECTOR  *ObjectUuidVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingUnexportW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR  *ObjectUuidVec
    );





RPC_STATUS __stdcall
RpcNsBindingExportPnPA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR *ObjectVector
    );

RPC_STATUS __stdcall
RpcNsBindingUnexportPnPA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR *ObjectVector
    );



RPC_STATUS __stdcall
RpcNsBindingExportPnPW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR *ObjectVector
    );

RPC_STATUS __stdcall
RpcNsBindingUnexportPnPW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID_VECTOR *ObjectVector
    );





__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupBeginA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID  *ObjUuid,
         unsigned long BindingMaxCount,
         RPC_NS_HANDLE  *LookupContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupBeginW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID  *ObjUuid,
         unsigned long BindingMaxCount,
         RPC_NS_HANDLE  *LookupContext
    );


__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupNext(
      RPC_NS_HANDLE LookupContext,
     RPC_BINDING_VECTOR  *  * BindingVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingLookupDone(
      RPC_NS_HANDLE  * LookupContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupDeleteA(
         unsigned long GroupNameSyntax,
           RPC_CSTR GroupName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrAddA(
         unsigned long GroupNameSyntax,
         RPC_CSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_CSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrRemoveA(
         unsigned long GroupNameSyntax,
         RPC_CSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_CSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqBeginA(
         unsigned long GroupNameSyntax,
         RPC_CSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_NS_HANDLE  *InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqNextA(
         RPC_NS_HANDLE InquiryContext,
                  RPC_CSTR  *MemberName
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupDeleteW(
         unsigned long GroupNameSyntax,
           RPC_WSTR GroupName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrAddW(
         unsigned long GroupNameSyntax,
         RPC_WSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_WSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrRemoveW(
         unsigned long GroupNameSyntax,
         RPC_WSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_WSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqBeginW(
         unsigned long GroupNameSyntax,
         RPC_WSTR GroupName,
         unsigned long MemberNameSyntax,
         RPC_NS_HANDLE  *InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqNextW(
         RPC_NS_HANDLE InquiryContext,
                  RPC_WSTR  *MemberName
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsGroupMbrInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileDeleteA(
         unsigned long ProfileNameSyntax,
         RPC_CSTR ProfileName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltAddA(
         unsigned long ProfileNameSyntax,
         RPC_CSTR ProfileName,
           RPC_IF_ID  *IfId,
         unsigned long MemberNameSyntax,
         RPC_CSTR MemberName,
         unsigned long Priority,
           RPC_CSTR Annotation
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltRemoveA(
         unsigned long ProfileNameSyntax,
         RPC_CSTR ProfileName,
           RPC_IF_ID  *IfId,
         unsigned long MemberNameSyntax,
         RPC_CSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqBeginA(
         unsigned long ProfileNameSyntax,
         RPC_CSTR ProfileName,
         unsigned long InquiryType,
           RPC_IF_ID  *IfId,
         unsigned long VersOption,
         unsigned long MemberNameSyntax,
           RPC_CSTR MemberName,
         RPC_NS_HANDLE  *InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqNextA(
         RPC_NS_HANDLE InquiryContext,
           RPC_IF_ID  *IfId,
         RPC_CSTR  *MemberName,
         unsigned long  *Priority,
         RPC_CSTR  *Annotation
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileDeleteW(
         unsigned long ProfileNameSyntax,
         RPC_WSTR ProfileName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltAddW(
         unsigned long ProfileNameSyntax,
         RPC_WSTR ProfileName,
           RPC_IF_ID  *IfId,
         unsigned long MemberNameSyntax,
         RPC_WSTR MemberName,
         unsigned long Priority,
           RPC_WSTR Annotation
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltRemoveW(
         unsigned long ProfileNameSyntax,
         RPC_WSTR ProfileName,
           RPC_IF_ID  *IfId,
         unsigned long MemberNameSyntax,
         RPC_WSTR MemberName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqBeginW(
         unsigned long ProfileNameSyntax,
         RPC_WSTR ProfileName,
         unsigned long InquiryType,
           RPC_IF_ID  *IfId,
         unsigned long VersOption,
         unsigned long MemberNameSyntax,
           RPC_WSTR MemberName,
         RPC_NS_HANDLE  *InquiryContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqNextW(
         RPC_NS_HANDLE InquiryContext,
           RPC_IF_ID  *IfId,
         RPC_WSTR  *MemberName,
         unsigned long  *Priority,
         RPC_WSTR  *Annotation
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsProfileEltInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqBeginA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName,
         RPC_NS_HANDLE  *InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqBeginW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName,
         RPC_NS_HANDLE  *InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqNext(
      RPC_NS_HANDLE InquiryContext,
     UUID  * ObjUuid
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryObjectInqDone(
      RPC_NS_HANDLE  * InquiryContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryExpandNameA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName,
         RPC_CSTR  *ExpandedName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtBindingUnexportA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName,
           RPC_IF_ID  *IfId,
         unsigned long VersOption,
           UUID_VECTOR  *ObjectUuidVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryCreateA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryDeleteA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryInqIfIdsA(
         unsigned long EntryNameSyntax,
         RPC_CSTR EntryName,
         RPC_IF_ID_VECTOR  *  *IfIdVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtHandleSetExpAge(
     RPC_NS_HANDLE NsHandle,
     unsigned long ExpirationAge
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtInqExpAge(
     unsigned long  * ExpirationAge
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtSetExpAge(
     unsigned long ExpirationAge
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsEntryExpandNameW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName,
         RPC_WSTR  *ExpandedName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtBindingUnexportW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName,
           RPC_IF_ID  *IfId,
         unsigned long VersOption,
           UUID_VECTOR  *ObjectUuidVec
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryCreateW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryDeleteW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsMgmtEntryInqIfIdsW(
         unsigned long EntryNameSyntax,
         RPC_WSTR EntryName,
         RPC_IF_ID_VECTOR  *  *IfIdVec
    );





__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportBeginA(
         unsigned long EntryNameSyntax,
           RPC_CSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID  *ObjUuid,
         RPC_NS_HANDLE  *ImportContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportBeginW(
         unsigned long EntryNameSyntax,
           RPC_WSTR EntryName,
           RPC_IF_HANDLE IfSpec,
           UUID  *ObjUuid,
         RPC_NS_HANDLE  *ImportContext
    );



__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportNext(
     RPC_NS_HANDLE ImportContext,
     RPC_BINDING_HANDLE   * Binding
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingImportDone(
      RPC_NS_HANDLE  * ImportContext
    );

__declspec(dllimport) RPC_STATUS __stdcall
RpcNsBindingSelect(
      RPC_BINDING_VECTOR  * BindingVec,
     RPC_BINDING_HANDLE   * Binding
    );







































































#pragma once

























































































#pragma once







extern "C" {




typedef
enum _RPC_NOTIFICATION_TYPES
{
    RpcNotificationTypeNone,
    RpcNotificationTypeEvent,
    RpcNotificationTypeApc,
    RpcNotificationTypeIoc,
    RpcNotificationTypeHwnd,
    RpcNotificationTypeCallback
} RPC_NOTIFICATION_TYPES;

typedef
enum _RPC_ASYNC_EVENT {
    RpcCallComplete,
    RpcSendComplete,
    RpcReceiveComplete
    } RPC_ASYNC_EVENT;

struct _RPC_ASYNC_STATE;

typedef void __stdcall
RPCNOTIFICATION_ROUTINE (
                  struct _RPC_ASYNC_STATE *pAsync,
                  void *Context,
                  RPC_ASYNC_EVENT Event);
typedef RPCNOTIFICATION_ROUTINE *PFN_RPCNOTIFICATION_ROUTINE;

typedef struct _RPC_ASYNC_STATE {
    unsigned int    Size; 
    unsigned long   Signature;
    long   Lock;
    unsigned long   Flags;
    void           *StubInfo;
    void           *UserInfo;
    void           *RuntimeInfo;
    RPC_ASYNC_EVENT Event;

    RPC_NOTIFICATION_TYPES NotificationType;
    union {
        
        
        
        struct {
            PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
            HANDLE hThread;
            } APC;

        
        
        
        struct {
            HANDLE hIOPort;
            DWORD dwNumberOfBytesTransferred;
            DWORD_PTR dwCompletionKey;
            LPOVERLAPPED lpOverlapped;
            } IOC;

        
        
        
        struct {
            HWND hWnd;
            UINT Msg;
            } HWND;


        
        
        
        HANDLE hEvent;

        
        
        
        
        
        PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
        } u;

    LONG_PTR Reserved[4];
    } RPC_ASYNC_STATE, *PRPC_ASYNC_STATE;







__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncInitializeHandle (
    PRPC_ASYNC_STATE pAsync,
    unsigned int     Size
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncRegisterInfo (
    PRPC_ASYNC_STATE pAsync
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncGetCallStatus (
    PRPC_ASYNC_STATE pAsync
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncCompleteCall (
    PRPC_ASYNC_STATE pAsync,
    void *Reply
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncAbortCall (
    PRPC_ASYNC_STATE pAsync,
    unsigned long ExceptionCode
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncCancelCall (
     PRPC_ASYNC_STATE pAsync,
     BOOL fAbort
    ) ;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcAsyncCleanupThread (
     DWORD dwTimeout
    );

typedef enum tagExtendedErrorParamTypes
{
    eeptAnsiString = 1,
    eeptUnicodeString,
    eeptLongVal,
    eeptShortVal,
    eeptPointerVal,
    eeptNone,
    eeptBinary
} ExtendedErrorParamTypes;




typedef struct tagBinaryParam
{
    void *Buffer;
    short Size;
} BinaryParam;

typedef struct tagRPC_EE_INFO_PARAM
{
    ExtendedErrorParamTypes ParameterType;
    union
        {
        LPSTR AnsiString;
        LPWSTR UnicodeString;
        long LVal;
        short SVal;
        ULONGLONG PVal;
        BinaryParam BVal;
        } u;
} RPC_EE_INFO_PARAM;








typedef struct tagRPC_EXTENDED_ERROR_INFO
{
    ULONG Version;
    LPWSTR ComputerName;
    ULONG ProcessID;
    union
        {
        SYSTEMTIME SystemTime;
        FILETIME FileTime;
        } u;
    ULONG GeneratingComponent;
    ULONG Status;
    USHORT DetectionLocation;
    USHORT Flags;
    int NumberOfParameters;
    RPC_EE_INFO_PARAM Parameters[4];
} RPC_EXTENDED_ERROR_INFO;

typedef struct tagRPC_ERROR_ENUM_HANDLE
{
    ULONG Signature;
    void *CurrentPos;
    void *Head;
} RPC_ERROR_ENUM_HANDLE;

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorStartEnumeration (
      RPC_ERROR_ENUM_HANDLE *EnumHandle
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorGetNextRecord (
     RPC_ERROR_ENUM_HANDLE *EnumHandle, 
     BOOL CopyStrings, 
     RPC_EXTENDED_ERROR_INFO *ErrorInfo
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorEndEnumeration (
      RPC_ERROR_ENUM_HANDLE *EnumHandle
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorResetEnumeration (
      RPC_ERROR_ENUM_HANDLE *EnumHandle
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorGetNumberOfRecords (
     RPC_ERROR_ENUM_HANDLE *EnumHandle, 
     int *Records
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorSaveErrorInfo (
     RPC_ERROR_ENUM_HANDLE *EnumHandle, 
     PVOID *ErrorBlob, 
     size_t *BlobSize
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorLoadErrorInfo (
     PVOID ErrorBlob, 
     size_t BlobSize, 
     RPC_ERROR_ENUM_HANDLE *EnumHandle
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcErrorAddRecord (
     RPC_EXTENDED_ERROR_INFO *ErrorInfo
    );

__declspec(dllimport)
void 
__stdcall
RpcErrorClearInformation (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcGetAuthorizationContextForClient (
     RPC_BINDING_HANDLE ClientBinding ,
     BOOL ImpersonateOnReturn,
     PVOID Reserved1,
     PLARGE_INTEGER pExpirationTime ,
     LUID Reserved2,
     DWORD Reserved3,
     PVOID Reserved4,
     PVOID *pAuthzClientContext
    );

__declspec(dllimport)
RPC_STATUS 
__stdcall
RpcFreeAuthorizationContext (
      PVOID *pAuthzClientContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSsContextLockExclusive (
     RPC_BINDING_HANDLE ServerBindingHandle,
     PVOID UserContext
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSsContextLockShared (
     RPC_BINDING_HANDLE ServerBindingHandle,
     PVOID UserContext
    );





typedef struct tagRPC_CALL_ATTRIBUTES_V1_W
{
    unsigned int Version;
    unsigned long Flags;
    unsigned long ServerPrincipalNameBufferLength;
    unsigned short *ServerPrincipalName;
    unsigned long ClientPrincipalNameBufferLength;
    unsigned short *ClientPrincipalName;
    unsigned long AuthenticationLevel;
    unsigned long AuthenticationService;
    BOOL NullSession;
} RPC_CALL_ATTRIBUTES_V1_W;

typedef struct tagRPC_CALL_ATTRIBUTES_V1_A
{
    unsigned int Version;
    unsigned long Flags;
    unsigned long ServerPrincipalNameBufferLength;
    unsigned char *ServerPrincipalName;
    unsigned long ClientPrincipalNameBufferLength;
    unsigned char *ClientPrincipalName;
    unsigned long AuthenticationLevel;
    unsigned long AuthenticationService;
    BOOL NullSession;
} RPC_CALL_ATTRIBUTES_V1_A;

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqCallAttributesW (
     RPC_BINDING_HANDLE ClientBinding, 
      void *RpcCallAttributes
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcServerInqCallAttributesA (
     RPC_BINDING_HANDLE ClientBinding, 
      void *RpcCallAttributes
    );









typedef RPC_CALL_ATTRIBUTES_V1_A RPC_CALL_ATTRIBUTES;




RPC_STATUS __stdcall
I_RpcAsyncSetHandle (
      PRPC_MESSAGE Message,
      PRPC_ASYNC_STATE pAsync
    );

RPC_STATUS __stdcall
I_RpcAsyncAbortCall (
     PRPC_ASYNC_STATE pAsync,
     unsigned long ExceptionCode
    ) ;

int 
__stdcall
I_RpcExceptionFilter (
    unsigned long ExceptionCode
    );


}

















}







 




































































#pragma warning(disable:4103)

#pragma pack(push,1)











extern "C" {            




struct HDROP__ { int unused; }; typedef struct HDROP__ *HDROP;

extern "C" __declspec(dllimport) UINT __stdcall DragQueryFileA(HDROP,UINT,LPSTR,UINT);
extern "C" __declspec(dllimport) UINT __stdcall DragQueryFileW(HDROP,UINT,LPWSTR,UINT);





extern "C" __declspec(dllimport) BOOL __stdcall DragQueryPoint(HDROP,LPPOINT);
extern "C" __declspec(dllimport) void __stdcall DragFinish(HDROP);
extern "C" __declspec(dllimport) void __stdcall DragAcceptFiles(HWND,BOOL);

extern "C" __declspec(dllimport) HINSTANCE __stdcall ShellExecuteA(HWND hwnd, LPCSTR lpOperation, LPCSTR lpFile, LPCSTR lpParameters, LPCSTR lpDirectory, INT nShowCmd);
extern "C" __declspec(dllimport) HINSTANCE __stdcall ShellExecuteW(HWND hwnd, LPCWSTR lpOperation, LPCWSTR lpFile, LPCWSTR lpParameters, LPCWSTR lpDirectory, INT nShowCmd);





extern "C" __declspec(dllimport) HINSTANCE __stdcall FindExecutableA(LPCSTR lpFile, LPCSTR lpDirectory, LPSTR lpResult);
extern "C" __declspec(dllimport) HINSTANCE __stdcall FindExecutableW(LPCWSTR lpFile, LPCWSTR lpDirectory, LPWSTR lpResult);





extern "C" __declspec(dllimport) LPWSTR * __stdcall  CommandLineToArgvW(LPCWSTR lpCmdLine, int*pNumArgs);

extern "C" __declspec(dllimport) INT __stdcall ShellAboutA(HWND hWnd, LPCSTR szApp, LPCSTR szOtherStuff, HICON hIcon);
extern "C" __declspec(dllimport) INT __stdcall ShellAboutW(HWND hWnd, LPCWSTR szApp, LPCWSTR szOtherStuff, HICON hIcon);





extern "C" __declspec(dllimport) HICON __stdcall DuplicateIcon(HINSTANCE hInst, HICON hIcon);
extern "C" __declspec(dllimport) HICON __stdcall ExtractAssociatedIconA(HINSTANCE hInst, LPSTR lpIconPath, LPWORD lpiIcon);
extern "C" __declspec(dllimport) HICON __stdcall ExtractAssociatedIconW(HINSTANCE hInst, LPWSTR lpIconPath, LPWORD lpiIcon);














extern "C" __declspec(dllimport) HICON __stdcall ExtractIconA(HINSTANCE hInst, LPCSTR lpszExeFileName, UINT nIconIndex);
extern "C" __declspec(dllimport) HICON __stdcall ExtractIconW(HINSTANCE hInst, LPCWSTR lpszExeFileName, UINT nIconIndex);







typedef struct _DRAGINFOA {
    UINT uSize;                 
    POINT pt;
    BOOL fNC;
    LPSTR   lpFileList;
    DWORD grfKeyState;
} DRAGINFOA, *LPDRAGINFOA;
typedef struct _DRAGINFOW {
    UINT uSize;                 
    POINT pt;
    BOOL fNC;
    LPWSTR  lpFileList;
    DWORD grfKeyState;
} DRAGINFOW, *LPDRAGINFOW;




typedef DRAGINFOA DRAGINFO;
typedef LPDRAGINFOA LPDRAGINFO;















                                        
                                        


















typedef struct _AppBarData
{
    DWORD cbSize;
    HWND hWnd;
    UINT uCallbackMessage;
    UINT uEdge;
    RECT rc;
    LPARAM lParam; 
} APPBARDATA, *PAPPBARDATA;


extern "C" __declspec(dllimport) UINT_PTR __stdcall SHAppBarMessage(DWORD dwMessage, PAPPBARDATA pData);





extern "C" __declspec(dllimport) DWORD __stdcall   DoEnvironmentSubstA(LPSTR szString, UINT cchString);
extern "C" __declspec(dllimport) DWORD __stdcall   DoEnvironmentSubstW(LPWSTR szString, UINT cchString);







extern "C" __declspec(dllimport) UINT __stdcall ExtractIconExA(LPCSTR lpszFile, int nIconIndex, HICON *phiconLarge, HICON *phiconSmall, UINT nIcons);
extern "C" __declspec(dllimport) UINT __stdcall ExtractIconExW(LPCWSTR lpszFile, int nIconIndex, HICON *phiconLarge, HICON *phiconSmall, UINT nIcons);























                                      















typedef WORD FILEOP_FLAGS;




                                
                                
                                
                                




typedef WORD PRINTEROP_FLAGS;










typedef struct _SHFILEOPSTRUCTA
{
        HWND            hwnd;
        UINT            wFunc;
        LPCSTR          pFrom;
        LPCSTR          pTo;
        FILEOP_FLAGS    fFlags;
        BOOL            fAnyOperationsAborted;
        LPVOID          hNameMappings;
        LPCSTR           lpszProgressTitle; 
} SHFILEOPSTRUCTA, *LPSHFILEOPSTRUCTA;
typedef struct _SHFILEOPSTRUCTW
{
        HWND            hwnd;
        UINT            wFunc;
        LPCWSTR         pFrom;
        LPCWSTR         pTo;
        FILEOP_FLAGS    fFlags;
        BOOL            fAnyOperationsAborted;
        LPVOID          hNameMappings;
        LPCWSTR          lpszProgressTitle; 
} SHFILEOPSTRUCTW, *LPSHFILEOPSTRUCTW;




typedef SHFILEOPSTRUCTA SHFILEOPSTRUCT;
typedef LPSHFILEOPSTRUCTA LPSHFILEOPSTRUCT;


extern "C" __declspec(dllimport) int __stdcall SHFileOperationA(LPSHFILEOPSTRUCTA lpFileOp);
extern "C" __declspec(dllimport) int __stdcall SHFileOperationW(LPSHFILEOPSTRUCTW lpFileOp);





extern "C" __declspec(dllimport) void __stdcall SHFreeNameMappings(HANDLE hNameMappings);

typedef struct _SHNAMEMAPPINGA
{
    LPSTR   pszOldPath;
    LPSTR   pszNewPath;
    int   cchOldPath;
    int   cchNewPath;
} SHNAMEMAPPINGA, *LPSHNAMEMAPPINGA;
typedef struct _SHNAMEMAPPINGW
{
    LPWSTR  pszOldPath;
    LPWSTR  pszNewPath;
    int   cchOldPath;
    int   cchNewPath;
} SHNAMEMAPPINGW, *LPSHNAMEMAPPINGW;




typedef SHNAMEMAPPINGA SHNAMEMAPPING;
typedef LPSHNAMEMAPPINGA LPSHNAMEMAPPING;
















































































typedef struct _SHELLEXECUTEINFOA
{
        DWORD cbSize;
        ULONG fMask;
        HWND hwnd;
        LPCSTR   lpVerb;
        LPCSTR   lpFile;
        LPCSTR   lpParameters;
        LPCSTR   lpDirectory;
        int nShow;
        HINSTANCE hInstApp;
        
        LPVOID lpIDList;
        LPCSTR   lpClass;
        HKEY hkeyClass;
        DWORD dwHotKey;
        union {
        HANDLE hIcon;
        HANDLE hMonitor;
        } ;
        HANDLE hProcess;
} SHELLEXECUTEINFOA, *LPSHELLEXECUTEINFOA;
typedef struct _SHELLEXECUTEINFOW
{
        DWORD cbSize;
        ULONG fMask;
        HWND hwnd;
        LPCWSTR  lpVerb;
        LPCWSTR  lpFile;
        LPCWSTR  lpParameters;
        LPCWSTR  lpDirectory;
        int nShow;
        HINSTANCE hInstApp;
        
        LPVOID lpIDList;
        LPCWSTR  lpClass;
        HKEY hkeyClass;
        DWORD dwHotKey;
        union {
        HANDLE hIcon;
        HANDLE hMonitor;
        } ;
        HANDLE hProcess;
} SHELLEXECUTEINFOW, *LPSHELLEXECUTEINFOW;




typedef SHELLEXECUTEINFOA SHELLEXECUTEINFO;
typedef LPSHELLEXECUTEINFOA LPSHELLEXECUTEINFO;


extern "C" __declspec(dllimport) BOOL __stdcall ShellExecuteExA(LPSHELLEXECUTEINFOA lpExecInfo);
extern "C" __declspec(dllimport) BOOL __stdcall ShellExecuteExW(LPSHELLEXECUTEINFOW lpExecInfo);





extern "C" __declspec(dllimport) void __stdcall WinExecErrorA(HWND hwnd, int error, LPCSTR lpstrFileName, LPCSTR lpstrTitle);
extern "C" __declspec(dllimport) void __stdcall WinExecErrorW(HWND hwnd, int error, LPCWSTR lpstrFileName, LPCWSTR lpstrTitle);








typedef struct _SHCREATEPROCESSINFOW
{
        DWORD cbSize;
        ULONG fMask;
        HWND hwnd;
        LPCWSTR  pszFile;
        LPCWSTR  pszParameters;
        LPCWSTR  pszCurrentDirectory;
         HANDLE hUserToken;
         LPSECURITY_ATTRIBUTES lpProcessAttributes;
         LPSECURITY_ATTRIBUTES lpThreadAttributes;
         BOOL bInheritHandles;
         DWORD dwCreationFlags;
         LPSTARTUPINFOW lpStartupInfo;
         LPPROCESS_INFORMATION lpProcessInformation;
} SHCREATEPROCESSINFOW, *PSHCREATEPROCESSINFOW;

extern "C" __declspec(dllimport) BOOL __stdcall SHCreateProcessAsUserW(PSHCREATEPROCESSINFOW pscpi);










typedef struct _SHQUERYRBINFO {
    DWORD   cbSize;

    __int64 i64Size;
    __int64 i64NumItems;




} SHQUERYRBINFO, *LPSHQUERYRBINFO;









extern "C" __declspec(dllimport) HRESULT __stdcall SHQueryRecycleBinA(LPCSTR pszRootPath, LPSHQUERYRBINFO pSHQueryRBInfo);
extern "C" __declspec(dllimport) HRESULT __stdcall SHQueryRecycleBinW(LPCWSTR pszRootPath, LPSHQUERYRBINFO pSHQueryRBInfo);





extern "C" __declspec(dllimport) HRESULT __stdcall SHEmptyRecycleBinA(HWND hwnd, LPCSTR pszRootPath, DWORD dwFlags);
extern "C" __declspec(dllimport) HRESULT __stdcall SHEmptyRecycleBinW(HWND hwnd, LPCWSTR pszRootPath, DWORD dwFlags);














typedef struct _NOTIFYICONDATAA {
        DWORD cbSize;
        HWND hWnd;
        UINT uID;
        UINT uFlags;
        UINT uCallbackMessage;
        HICON hIcon;

        CHAR   szTip[64];

















} NOTIFYICONDATAA, *PNOTIFYICONDATAA;
typedef struct _NOTIFYICONDATAW {
        DWORD cbSize;
        HWND hWnd;
        UINT uID;
        UINT uFlags;
        UINT uCallbackMessage;
        HICON hIcon;

        WCHAR  szTip[64];

















} NOTIFYICONDATAW, *PNOTIFYICONDATAW;




typedef NOTIFYICONDATAA NOTIFYICONDATA;
typedef PNOTIFYICONDATAA PNOTIFYICONDATA;












































































extern "C" __declspec(dllimport) BOOL __stdcall Shell_NotifyIconA(DWORD dwMessage, PNOTIFYICONDATAA lpData);
extern "C" __declspec(dllimport) BOOL __stdcall Shell_NotifyIconW(DWORD dwMessage, PNOTIFYICONDATAW lpData);

































typedef struct _SHFILEINFOA
{
        HICON       hIcon;                      
        int         iIcon;                      
        DWORD       dwAttributes;               
        CHAR        szDisplayName[260];    
        CHAR        szTypeName[80];             
} SHFILEINFOA;
typedef struct _SHFILEINFOW
{
        HICON       hIcon;                      
        int         iIcon;                      
        DWORD       dwAttributes;               
        WCHAR       szDisplayName[260];    
        WCHAR       szTypeName[80];             
} SHFILEINFOW;



typedef SHFILEINFOA SHFILEINFO;





























extern "C" __declspec(dllimport) DWORD_PTR __stdcall SHGetFileInfoA(LPCSTR pszPath, DWORD dwFileAttributes, SHFILEINFOA *psfi, UINT cbFileInfo, UINT uFlags);
extern "C" __declspec(dllimport) DWORD_PTR __stdcall SHGetFileInfoW(LPCWSTR pszPath, DWORD dwFileAttributes, SHFILEINFOW *psfi, UINT cbFileInfo, UINT uFlags);









extern "C" __declspec(dllimport) BOOL __stdcall SHGetDiskFreeSpaceExA(LPCSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);
extern "C" __declspec(dllimport) BOOL __stdcall SHGetDiskFreeSpaceExW(LPCWSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);





extern "C" __declspec(dllimport) BOOL __stdcall SHGetNewLinkInfoA(LPCSTR pszLinkTo, LPCSTR pszDir, LPSTR pszName, BOOL *pfMustCopy, UINT uFlags);
extern "C" __declspec(dllimport) BOOL __stdcall SHGetNewLinkInfoW(LPCWSTR pszLinkTo, LPCWSTR pszDir, LPWSTR pszName, BOOL *pfMustCopy, UINT uFlags);






























extern "C" __declspec(dllimport) BOOL __stdcall SHInvokePrinterCommandA(HWND hwnd, UINT uAction, LPCSTR lpBuf1, LPCSTR lpBuf2, BOOL fModal);
extern "C" __declspec(dllimport) BOOL __stdcall SHInvokePrinterCommandW(HWND hwnd, UINT uAction, LPCWSTR lpBuf1, LPCWSTR lpBuf2, BOOL fModal);
























































extern "C" __declspec(dllimport) HRESULT __stdcall SHSetLocalizedName(LPWSTR pszPath, LPCWSTR pszResModule, int idsRes);








































































































}






























#pragma warning(disable:4103)

#pragma pack(pop)




















































#pragma once


























#pragma warning(disable:4103)

#pragma pack(push,8)

























typedef struct _PERF_DATA_BLOCK {
    WCHAR           Signature[4];       
    DWORD           LittleEndian;       
    DWORD           Version;            
                                        
    DWORD           Revision;           
                                        
    DWORD           TotalByteLength;    
    DWORD           HeaderLength;       
    DWORD           NumObjectTypes;     
                                        
    LONG            DefaultObject;      
                                        
                                        
                                        
                                        
    SYSTEMTIME      SystemTime;         
                                        
    LARGE_INTEGER   PerfTime;           
                                        
    LARGE_INTEGER   PerfFreq;           
                                        
    LARGE_INTEGER   PerfTime100nSec;    
                                        
    DWORD           SystemNameLength;   
    DWORD           SystemNameOffset;   
                                        
                                        
} PERF_DATA_BLOCK, *PPERF_DATA_BLOCK;









typedef struct _PERF_OBJECT_TYPE {
    DWORD           TotalByteLength;    
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           DefinitionLength;   
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           HeaderLength;       
                                        
                                        
                                        
    DWORD           ObjectNameTitleIndex;
                                        



    LPWSTR          ObjectNameTitle;    
                                        
                                        

    DWORD           ObjectHelpTitleIndex;
                                        



    LPWSTR          ObjectHelpTitle;    
                                        
                                        

    DWORD           DetailLevel;        
                                        
                                        
                                        
    DWORD           NumCounters;        
                                        
                                        
    LONG            DefaultCounter;     
                                        
                                        
                                        
    LONG            NumInstances;       
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
    DWORD           CodePage;           
                                        
                                        
    LARGE_INTEGER   PerfTime;           
                                        
    LARGE_INTEGER   PerfFreq;           
                                        
} PERF_OBJECT_TYPE, *PPERF_OBJECT_TYPE;


























                                            
























































































































































































































































































                                        




































































typedef struct _PERF_COUNTER_DEFINITION {
    DWORD           ByteLength;         
    DWORD           CounterNameTitleIndex;
                                        
                                        



    LPWSTR          CounterNameTitle;   
                                        
                                        

    DWORD           CounterHelpTitleIndex;
                                        
                                        



    LPWSTR          CounterHelpTitle;   
                                        
                                        

    LONG            DefaultScale;       
                                        
                                        
    DWORD           DetailLevel;        
                                        
    DWORD           CounterType;        
    DWORD           CounterSize;        
    DWORD           CounterOffset;      
                                        
                                        
} PERF_COUNTER_DEFINITION, *PPERF_COUNTER_DEFINITION;














typedef struct _PERF_INSTANCE_DEFINITION {
    DWORD           ByteLength;         
                                        
    DWORD           ParentObjectTitleIndex;
                                        
                                        
                                        
                                        
                                        
    DWORD           ParentObjectInstance;
                                        
                                        
                                        
    LONG            UniqueID;           
                                        
                                        
    DWORD           NameOffset;         
                                        
                                        
    DWORD           NameLength;         
                                        
                                        
                                        
                                        
                                        
} PERF_INSTANCE_DEFINITION, *PPERF_INSTANCE_DEFINITION;













typedef struct _PERF_COUNTER_BLOCK {
    DWORD           ByteLength;         
                                        
} PERF_COUNTER_BLOCK, *PPERF_COUNTER_BLOCK;
















typedef DWORD (__stdcall PM_OPEN_PROC) (LPWSTR);
typedef DWORD (__stdcall PM_COLLECT_PROC) (LPWSTR, LPVOID *, LPDWORD, LPDWORD);
typedef DWORD (__stdcall PM_CLOSE_PROC) (void);
typedef DWORD (__stdcall PM_QUERY_PROC) (LPDWORD, LPVOID *, LPDWORD, LPDWORD);











































#pragma warning(disable:4103)

#pragma pack(pop)





























#pragma once












typedef unsigned char   u_char;
typedef unsigned short  u_short;
typedef unsigned int    u_int;
typedef unsigned long   u_long;






typedef UINT_PTR        SOCKET;













typedef struct fd_set {
        u_int   fd_count;               
        SOCKET  fd_array[64];   
} fd_set;


extern "C" {


extern int __stdcall  __WSAFDIsSet(SOCKET, fd_set  *);


}






























struct timeval {
        long    tv_sec;         
        long    tv_usec;        
};



























                                        
























struct  hostent {
        char     * h_name;           
        char     *  * h_aliases;  
        short   h_addrtype;             
        short   h_length;               
        char     *  * h_addr_list; 

};





struct  netent {
        char     * n_name;           
        char     *  * n_aliases;  
        short   n_addrtype;             
        u_long  n_net;                  
};

struct  servent {
        char     * s_name;           
        char     *  * s_aliases;  




        short   s_port;                 
        char     * s_proto;          

};

struct  protoent {
        char     * p_name;           
        char     *  * p_aliases;  
        short   p_proto;                
};





























































                                        


















struct in_addr {
        union {
                struct { u_char s_b1,s_b2,s_b3,s_b4; } S_un_b;
                struct { u_short s_w1,s_w2; } S_un_w;
                u_long S_addr;
        } S_un;

                                

                                

                                

                                

                                

                                
};
































struct sockaddr_in {
        short   sin_family;
        u_short sin_port;
        struct  in_addr sin_addr;
        char    sin_zero[8];
};




typedef struct WSAData {
        WORD                    wVersion;
        WORD                    wHighVersion;







        char                    szDescription[256+1];
        char                    szSystemStatus[128+1];
        unsigned short          iMaxSockets;
        unsigned short          iMaxUdpDg;
        char  *              lpVendorInfo;

} WSADATA;

typedef WSADATA  *LPWSADATA;






















struct ip_mreq {
        struct in_addr  imr_multiaddr;  
        struct in_addr  imr_interface;  
};






















































































































struct sockaddr {
        u_short sa_family;              
        char    sa_data[14];            
};





struct sockproto {
        u_short sp_family;              
        u_short sp_protocol;            
};

































struct  linger {
        u_short l_onoff;                
        u_short l_linger;               
};





































































































































































































extern "C" {


SOCKET __stdcall  accept (
                           SOCKET s,
                           struct sockaddr  *addr,
                            int  *addrlen);

int __stdcall  bind (
                      SOCKET s,
                      const struct sockaddr  *addr,
                      int namelen);

int __stdcall  closesocket (  SOCKET s);

int __stdcall  connect (
                         SOCKET s,
                         const struct sockaddr  *name,
                         int namelen);

int __stdcall  ioctlsocket (
                             SOCKET s,
                             long cmd,
                              u_long  *argp);

int __stdcall  getpeername (
                             SOCKET s,
                             struct sockaddr  *name,
                              int  * namelen);

int __stdcall  getsockname (
                             SOCKET s,
                             struct sockaddr  *name,
                              int  * namelen);

int __stdcall  getsockopt (
                            SOCKET s,
                            int level,
                            int optname,
                            char  * optval,
                             int  *optlen);

u_long __stdcall  htonl (  u_long hostlong);

u_short __stdcall  htons ( u_short hostshort);

unsigned long __stdcall  inet_addr ( const char  * cp);

char  * __stdcall  inet_ntoa ( struct in_addr in);

int __stdcall  listen (
                        SOCKET s,
                        int backlog);

u_long __stdcall  ntohl ( u_long netlong);

u_short __stdcall  ntohs ( u_short netshort);

int __stdcall  recv (
                      SOCKET s,
                      char  * buf,
                      int len,
                      int flags);

int __stdcall  recvfrom (
                          SOCKET s,
                          char  * buf,
                          int len,
                          int flags,
                          struct sockaddr  *from,
                           int  * fromlen);

int __stdcall  select (
                         int nfds,
                          fd_set  *readfds,
                          fd_set  *writefds,
                          fd_set  *exceptfds,
                         const struct timeval  *timeout);

int __stdcall  send (
                      SOCKET s,
                      const char  * buf,
                      int len,
                      int flags);

int __stdcall  sendto (
                        SOCKET s,
                        const char  * buf,
                        int len,
                        int flags,
                        const struct sockaddr  *to,
                        int tolen);

int __stdcall  setsockopt (
                            SOCKET s,
                            int level,
                            int optname,
                            const char  * optval,
                            int optlen);

int __stdcall  shutdown (
                          SOCKET s,
                          int how);

SOCKET __stdcall  socket (
                           int af,
                           int type,
                           int protocol);



struct hostent  * __stdcall  gethostbyaddr(
                                               const char  * addr,
                                               int len,
                                               int type);

struct hostent  * __stdcall  gethostbyname( const char  * name);

int __stdcall  gethostname (
                             char  * name,
                             int namelen);

struct servent  * __stdcall  getservbyport(
                                               int port,
                                               const char  * proto);

struct servent  * __stdcall  getservbyname(
                                               const char  * name,
                                               const char  * proto);

struct protoent  * __stdcall  getprotobynumber( int proto);

struct protoent  * __stdcall  getprotobyname( const char  * name);



int __stdcall  WSAStartup(
                           WORD wVersionRequired,
                           LPWSADATA lpWSAData);

int __stdcall  WSACleanup(void);

void __stdcall  WSASetLastError( int iError);

int __stdcall  WSAGetLastError(void);

BOOL __stdcall  WSAIsBlocking(void);

int __stdcall  WSAUnhookBlockingHook(void);

FARPROC __stdcall  WSASetBlockingHook( FARPROC lpBlockFunc);

int __stdcall  WSACancelBlockingCall(void);

HANDLE __stdcall  WSAAsyncGetServByName(
                                         HWND hWnd,
                                         u_int wMsg,
                                         const char  * name,
                                         const char  * proto,
                                         char  * buf,
                                         int buflen);

HANDLE __stdcall  WSAAsyncGetServByPort(
                                         HWND hWnd,
                                         u_int wMsg,
                                         int port,
                                         const char  * proto,
                                         char  * buf,
                                         int buflen);

HANDLE __stdcall  WSAAsyncGetProtoByName(
                                          HWND hWnd,
                                          u_int wMsg,
                                          const char  * name,
                                          char  * buf,
                                          int buflen);

HANDLE __stdcall  WSAAsyncGetProtoByNumber(
                                            HWND hWnd,
                                            u_int wMsg,
                                            int number,
                                            char  * buf,
                                            int buflen);

HANDLE __stdcall  WSAAsyncGetHostByName(
                                         HWND hWnd,
                                         u_int wMsg,
                                         const char  * name,
                                         char  * buf,
                                         int buflen);

HANDLE __stdcall  WSAAsyncGetHostByAddr(
                                         HWND hWnd,
                                         u_int wMsg,
                                         const char  * addr,
                                         int len,
                                         int type,
                                         char  * buf,
                                         int buflen);

int __stdcall  WSACancelAsyncRequest( HANDLE hAsyncTaskHandle);

int __stdcall  WSAAsyncSelect(
                               SOCKET s,
                               HWND hWnd,
                               u_int wMsg,
                               long lEvent);

int __stdcall  WSARecvEx (
                           SOCKET s,
                           char  * buf,
                           int len,
                            int  *flags);

typedef struct _TRANSMIT_FILE_BUFFERS {
    PVOID Head;
    DWORD HeadLength;
    PVOID Tail;
    DWORD TailLength;
} TRANSMIT_FILE_BUFFERS, *PTRANSMIT_FILE_BUFFERS, *LPTRANSMIT_FILE_BUFFERS;





BOOL
__stdcall 
TransmitFile (
     SOCKET hSocket,
     HANDLE hFile,
     DWORD nNumberOfBytesToWrite,
     DWORD nNumberOfBytesPerSend,
     LPOVERLAPPED lpOverlapped,
     LPTRANSMIT_FILE_BUFFERS lpTransmitBuffers,
     DWORD dwReserved
    );

BOOL
__stdcall 
AcceptEx (
     SOCKET sListenSocket,
     SOCKET sAcceptSocket,
     PVOID lpOutputBuffer,
     DWORD dwReceiveDataLength,
     DWORD dwLocalAddressLength,
     DWORD dwRemoteAddressLength,
     LPDWORD lpdwBytesReceived,
     LPOVERLAPPED lpOverlapped
    );

void
__stdcall 
GetAcceptExSockaddrs (
     PVOID lpOutputBuffer,
     DWORD dwReceiveDataLength,
     DWORD dwLocalAddressLength,
     DWORD dwRemoteAddressLength,
     struct sockaddr **LocalSockaddr,
     LPINT LocalSockaddrLength,
     struct sockaddr **RemoteSockaddr,
     LPINT RemoteSockaddrLength
    );


}



typedef struct sockaddr SOCKADDR;
typedef struct sockaddr *PSOCKADDR;
typedef struct sockaddr  *LPSOCKADDR;

typedef struct sockaddr_in SOCKADDR_IN;
typedef struct sockaddr_in *PSOCKADDR_IN;
typedef struct sockaddr_in  *LPSOCKADDR_IN;

typedef struct linger LINGER;
typedef struct linger *PLINGER;
typedef struct linger  *LPLINGER;

typedef struct in_addr IN_ADDR;
typedef struct in_addr *PIN_ADDR;
typedef struct in_addr  *LPIN_ADDR;

typedef struct fd_set FD_SET;
typedef struct fd_set *PFD_SET;
typedef struct fd_set  *LPFD_SET;

typedef struct hostent HOSTENT;
typedef struct hostent *PHOSTENT;
typedef struct hostent  *LPHOSTENT;

typedef struct servent SERVENT;
typedef struct servent *PSERVENT;
typedef struct servent  *LPSERVENT;

typedef struct protoent PROTOENT;
typedef struct protoent *PPROTOENT;
typedef struct protoent  *LPPROTOENT;

typedef struct timeval TIMEVAL;
typedef struct timeval *PTIMEVAL;
typedef struct timeval  *LPTIMEVAL;



































































#pragma warning(push)

#pragma warning(disable:4201)    



#pragma once






extern "C" {







































































































































































typedef unsigned int ALG_ID;
















































typedef ULONG_PTR HCRYPTPROV;
typedef ULONG_PTR HCRYPTKEY;
typedef ULONG_PTR HCRYPTHASH;






































                                            
                                            

























































































































































































































































































































































































































typedef struct _CMS_KEY_INFO {
    DWORD       dwVersion;                      
    ALG_ID  Algid;                              
    BYTE    *pbOID;                             
    DWORD   cbOID;                              
} CMS_KEY_INFO, *PCMS_KEY_INFO;


typedef struct _HMAC_Info {
    ALG_ID  HashAlgid;
    BYTE    *pbInnerString;
    DWORD   cbInnerString;
    BYTE    *pbOuterString;
    DWORD   cbOuterString;
} HMAC_INFO, *PHMAC_INFO;


typedef struct _SCHANNEL_ALG {
    DWORD   dwUse;
    ALG_ID  Algid;
    DWORD   cBits;
    DWORD   dwFlags;
    DWORD   dwReserved;
} SCHANNEL_ALG, *PSCHANNEL_ALG;








typedef struct _PROV_ENUMALGS {
    ALG_ID    aiAlgid;
    DWORD     dwBitLen;
    DWORD     dwNameLen;
    CHAR      szName[20];
} PROV_ENUMALGS;

typedef struct _PROV_ENUMALGS_EX {
    ALG_ID    aiAlgid;
    DWORD     dwDefaultLen;
    DWORD     dwMinLen;
    DWORD     dwMaxLen;
    DWORD     dwProtocols;
    DWORD     dwNameLen;
    CHAR      szName[20];
    DWORD     dwLongNameLen;
    CHAR      szLongName[40];
} PROV_ENUMALGS_EX;

typedef struct _PUBLICKEYSTRUC {
        BYTE    bType;
        BYTE    bVersion;
        WORD    reserved;
        ALG_ID  aiKeyAlg;
} BLOBHEADER, PUBLICKEYSTRUC;

typedef struct _RSAPUBKEY {
        DWORD   magic;                  
        DWORD   bitlen;                 
        DWORD   pubexp;                 
                                        
} RSAPUBKEY;

typedef struct _PUBKEY {
        DWORD   magic;
        DWORD   bitlen;                 
} DHPUBKEY, DSSPUBKEY, KEAPUBKEY, TEKPUBKEY;

typedef struct _DSSSEED {
        DWORD   counter;
        BYTE    seed[20];
} DSSSEED;

typedef struct _PUBKEYVER3 {
        DWORD   magic;
        DWORD   bitlenP;                
        DWORD   bitlenQ;                
        DWORD   bitlenJ;                
        DSSSEED DSSSeed;
} DHPUBKEY_VER3, DSSPUBKEY_VER3;

typedef struct _PRIVKEYVER3 {
        DWORD   magic;
        DWORD   bitlenP;                
        DWORD   bitlenQ;                
        DWORD   bitlenJ;                
        DWORD   bitlenX;                
        DSSSEED DSSSeed;
} DHPRIVKEY_VER3, DSSPRIVKEY_VER3;

typedef struct _KEY_TYPE_SUBTYPE {
        DWORD   dwKeySpec;
        GUID    Type;
        GUID    Subtype;
} KEY_TYPE_SUBTYPE, *PKEY_TYPE_SUBTYPE;

typedef struct _CERT_FORTEZZA_DATA_PROP {
    unsigned char   SerialNumber[8];
    int             CertIndex;
    unsigned char   CertLabel[36];
} CERT_FORTEZZA_DATA_PROP;

typedef struct _CRYPT_RC4_KEY_STATE {
    unsigned char Key[16];
    unsigned char SBox[256];
    unsigned char i;
    unsigned char j;
} CRYPT_RC4_KEY_STATE, *PCRYPT_RC4_KEY_STATE;

typedef struct _CRYPT_DES_KEY_STATE {
    unsigned char Key[8];
    unsigned char IV[8];
    unsigned char Feedback[8];
} CRYPT_DES_KEY_STATE, *PCRYPT_DES_KEY_STATE;

typedef struct _CRYPT_3DES_KEY_STATE {
    unsigned char Key[24];
    unsigned char IV[8];
    unsigned char Feedback[8];
} CRYPT_3DES_KEY_STATE, *PCRYPT_3DES_KEY_STATE;





typedef struct _CRYPTOAPI_BLOB {
    DWORD   cbData;
    BYTE    *pbData;
} CRYPT_INTEGER_BLOB, *PCRYPT_INTEGER_BLOB,
CRYPT_UINT_BLOB, *PCRYPT_UINT_BLOB,
CRYPT_OBJID_BLOB, *PCRYPT_OBJID_BLOB,
CERT_NAME_BLOB, *PCERT_NAME_BLOB,
CERT_RDN_VALUE_BLOB, *PCERT_RDN_VALUE_BLOB,
CERT_BLOB, *PCERT_BLOB,
CRL_BLOB, *PCRL_BLOB,
DATA_BLOB, *PDATA_BLOB,
CRYPT_DATA_BLOB, *PCRYPT_DATA_BLOB,
CRYPT_HASH_BLOB, *PCRYPT_HASH_BLOB,
CRYPT_DIGEST_BLOB, *PCRYPT_DIGEST_BLOB,
CRYPT_DER_BLOB, *PCRYPT_DER_BLOB,
CRYPT_ATTR_BLOB, *PCRYPT_ATTR_BLOB;


typedef struct _CMS_DH_KEY_INFO {
    DWORD               dwVersion;                      
    ALG_ID          Algid;                              
    LPSTR           pszContentEncObjId; 
    CRYPT_DATA_BLOB PubInfo;            
    void            *pReserved;         
} CMS_DH_KEY_INFO, *PCMS_DH_KEY_INFO;


__declspec(dllimport)
BOOL
__stdcall
CryptAcquireContextA(
    HCRYPTPROV *phProv,
    LPCSTR szContainer,
    LPCSTR szProvider,
    DWORD dwProvType,
    DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
CryptAcquireContextW(
    HCRYPTPROV *phProv,
    LPCWSTR szContainer,
    LPCWSTR szProvider,
    DWORD dwProvType,
    DWORD dwFlags
    );






__declspec(dllimport)
BOOL
__stdcall
CryptReleaseContext(
    HCRYPTPROV hProv,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGenKey(
    HCRYPTPROV hProv,
    ALG_ID Algid,
    DWORD dwFlags,
    HCRYPTKEY *phKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDeriveKey(
    HCRYPTPROV hProv,
    ALG_ID Algid,
    HCRYPTHASH hBaseData,
    DWORD dwFlags,
    HCRYPTKEY *phKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDestroyKey(
    HCRYPTKEY hKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptSetKeyParam(
    HCRYPTKEY hKey,
    DWORD dwParam,
    const BYTE *pbData,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGetKeyParam(
    HCRYPTKEY hKey,
    DWORD dwParam,
    BYTE *pbData,
    DWORD *pdwDataLen,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptSetHashParam(
    HCRYPTHASH hHash,
    DWORD dwParam,
    const BYTE *pbData,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGetHashParam(
    HCRYPTHASH hHash,
    DWORD dwParam,
    BYTE *pbData,
    DWORD *pdwDataLen,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptSetProvParam(
    HCRYPTPROV hProv,
    DWORD dwParam,
    const BYTE *pbData,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGetProvParam(
    HCRYPTPROV hProv,
    DWORD dwParam,
    BYTE *pbData,
    DWORD *pdwDataLen,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGenRandom(
    HCRYPTPROV hProv,
    DWORD dwLen,
    BYTE *pbBuffer
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGetUserKey(
    HCRYPTPROV hProv,
    DWORD dwKeySpec,
    HCRYPTKEY *phUserKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptExportKey(
    HCRYPTKEY hKey,
    HCRYPTKEY hExpKey,
    DWORD dwBlobType,
    DWORD dwFlags,
    BYTE *pbData,
    DWORD *pdwDataLen
    );

__declspec(dllimport)
BOOL
__stdcall
CryptImportKey(
    HCRYPTPROV hProv,
    const BYTE *pbData,
    DWORD dwDataLen,
    HCRYPTKEY hPubKey,
    DWORD dwFlags,
    HCRYPTKEY *phKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptEncrypt(
    HCRYPTKEY hKey,
    HCRYPTHASH hHash,
    BOOL Final,
    DWORD dwFlags,
    BYTE *pbData,
    DWORD *pdwDataLen,
    DWORD dwBufLen
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDecrypt(
    HCRYPTKEY hKey,
    HCRYPTHASH hHash,
    BOOL Final,
    DWORD dwFlags,
    BYTE *pbData,
    DWORD *pdwDataLen
    );

__declspec(dllimport)
BOOL
__stdcall
CryptCreateHash(
    HCRYPTPROV hProv,
    ALG_ID Algid,
    HCRYPTKEY hKey,
    DWORD dwFlags,
    HCRYPTHASH *phHash
    );

__declspec(dllimport)
BOOL
__stdcall
CryptHashData(
    HCRYPTHASH hHash,
    const BYTE *pbData,
    DWORD dwDataLen,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptHashSessionKey(
    HCRYPTHASH hHash,
    HCRYPTKEY hKey,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDestroyHash(
    HCRYPTHASH hHash
    );

__declspec(dllimport)
BOOL
__stdcall
CryptSignHashA(
    HCRYPTHASH hHash,
    DWORD dwKeySpec,
    LPCSTR szDescription,
    DWORD dwFlags,
    BYTE *pbSignature,
    DWORD *pdwSigLen
    );
__declspec(dllimport)
BOOL
__stdcall
CryptSignHashW(
    HCRYPTHASH hHash,
    DWORD dwKeySpec,
    LPCWSTR szDescription,
    DWORD dwFlags,
    BYTE *pbSignature,
    DWORD *pdwSigLen
    );






__declspec(dllimport)
BOOL
__stdcall
CryptVerifySignatureA(
    HCRYPTHASH hHash,
    const BYTE *pbSignature,
    DWORD dwSigLen,
    HCRYPTKEY hPubKey,
    LPCSTR szDescription,
    DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
CryptVerifySignatureW(
    HCRYPTHASH hHash,
    const BYTE *pbSignature,
    DWORD dwSigLen,
    HCRYPTKEY hPubKey,
    LPCWSTR szDescription,
    DWORD dwFlags
    );






__declspec(dllimport)
BOOL
__stdcall
CryptSetProviderA(
    LPCSTR pszProvName,
    DWORD dwProvType
    );
__declspec(dllimport)
BOOL
__stdcall
CryptSetProviderW(
    LPCWSTR pszProvName,
    DWORD dwProvType
    );






__declspec(dllimport)
BOOL
__stdcall
CryptSetProviderExA(
    LPCSTR pszProvName,
    DWORD dwProvType,
    DWORD *pdwReserved,
    DWORD dwFlags
    );
__declspec(dllimport)
BOOL
__stdcall
CryptSetProviderExW(
    LPCWSTR pszProvName,
    DWORD dwProvType,
    DWORD *pdwReserved,
    DWORD dwFlags
    );






__declspec(dllimport)
BOOL
__stdcall
CryptGetDefaultProviderA(
    DWORD dwProvType,
    DWORD *pdwReserved,
    DWORD dwFlags,
    LPSTR pszProvName,
    DWORD *pcbProvName
    );
__declspec(dllimport)
BOOL
__stdcall
CryptGetDefaultProviderW(
    DWORD dwProvType,
    DWORD *pdwReserved,
    DWORD dwFlags,
    LPWSTR pszProvName,
    DWORD *pcbProvName
    );






__declspec(dllimport)
BOOL
__stdcall
CryptEnumProviderTypesA(
    DWORD dwIndex,
    DWORD *pdwReserved,
    DWORD dwFlags,
    DWORD *pdwProvType,
    LPSTR szTypeName,
    DWORD *pcbTypeName
    );
__declspec(dllimport)
BOOL
__stdcall
CryptEnumProviderTypesW(
    DWORD dwIndex,
    DWORD *pdwReserved,
    DWORD dwFlags,
    DWORD *pdwProvType,
    LPWSTR szTypeName,
    DWORD *pcbTypeName
    );






__declspec(dllimport)
BOOL
__stdcall
CryptEnumProvidersA(
    DWORD dwIndex,
    DWORD *pdwReserved,
    DWORD dwFlags,
    DWORD *pdwProvType,
    LPSTR szProvName,
    DWORD *pcbProvName
    );
__declspec(dllimport)
BOOL
__stdcall
CryptEnumProvidersW(
    DWORD dwIndex,
    DWORD *pdwReserved,
    DWORD dwFlags,
    DWORD *pdwProvType,
    LPWSTR szProvName,
    DWORD *pcbProvName
    );






__declspec(dllimport)
BOOL
__stdcall
CryptContextAddRef(
    HCRYPTPROV hProv,
    DWORD *pdwReserved,
    DWORD dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDuplicateKey(
    HCRYPTKEY hKey,
    DWORD *pdwReserved,
    DWORD dwFlags,
    HCRYPTKEY *phKey
    );

__declspec(dllimport)
BOOL
__stdcall
CryptDuplicateHash(
    HCRYPTHASH hHash,
    DWORD *pdwReserved,
    DWORD dwFlags,
    HCRYPTHASH *phHash
    );







BOOL 
__cdecl 
GetEncSChannel(
    BYTE **pData, 
    DWORD *dwDecSize
    );





typedef struct _CRYPT_BIT_BLOB {
    DWORD   cbData;
    BYTE    *pbData;
    DWORD   cUnusedBits;
} CRYPT_BIT_BLOB, *PCRYPT_BIT_BLOB;







typedef struct _CRYPT_ALGORITHM_IDENTIFIER {
    LPSTR               pszObjId;
    CRYPT_OBJID_BLOB    Parameters;
} CRYPT_ALGORITHM_IDENTIFIER, *PCRYPT_ALGORITHM_IDENTIFIER;


















































































































































typedef struct _CRYPT_OBJID_TABLE {
    DWORD   dwAlgId;
    LPCSTR  pszObjId;
} CRYPT_OBJID_TABLE, *PCRYPT_OBJID_TABLE;





typedef struct _CRYPT_HASH_INFO {
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    CRYPT_HASH_BLOB             Hash;
} CRYPT_HASH_INFO, *PCRYPT_HASH_INFO;






typedef struct _CERT_EXTENSION {
    LPSTR               pszObjId;
    BOOL                fCritical;
    CRYPT_OBJID_BLOB    Value;
} CERT_EXTENSION, *PCERT_EXTENSION;






typedef struct _CRYPT_ATTRIBUTE_TYPE_VALUE {
    LPSTR               pszObjId;
    CRYPT_OBJID_BLOB    Value;
} CRYPT_ATTRIBUTE_TYPE_VALUE, *PCRYPT_ATTRIBUTE_TYPE_VALUE;






typedef struct _CRYPT_ATTRIBUTE {
    LPSTR               pszObjId;
    DWORD               cValue;
    PCRYPT_ATTR_BLOB    rgValue;
} CRYPT_ATTRIBUTE, *PCRYPT_ATTRIBUTE;

typedef struct _CRYPT_ATTRIBUTES {
     DWORD                cAttr;
     PCRYPT_ATTRIBUTE     rgAttr;
} CRYPT_ATTRIBUTES, *PCRYPT_ATTRIBUTES;







typedef struct _CERT_RDN_ATTR {
    LPSTR                   pszObjId;
    DWORD                   dwValueType;
    CERT_RDN_VALUE_BLOB     Value;
} CERT_RDN_ATTR, *PCERT_RDN_ATTR;




































































































































































typedef struct _CERT_RDN {
    DWORD           cRDNAttr;
    PCERT_RDN_ATTR  rgRDNAttr;
} CERT_RDN, *PCERT_RDN;





typedef struct _CERT_NAME_INFO {
    DWORD       cRDN;
    PCERT_RDN   rgRDN;
} CERT_NAME_INFO, *PCERT_NAME_INFO;







typedef struct _CERT_NAME_VALUE {
    DWORD               dwValueType;
    CERT_RDN_VALUE_BLOB Value;
} CERT_NAME_VALUE, *PCERT_NAME_VALUE;







typedef struct _CERT_PUBLIC_KEY_INFO {
    CRYPT_ALGORITHM_IDENTIFIER    Algorithm;
    CRYPT_BIT_BLOB                PublicKey;
} CERT_PUBLIC_KEY_INFO, *PCERT_PUBLIC_KEY_INFO;









typedef struct _CRYPT_PRIVATE_KEY_INFO{
    DWORD                       Version;
    CRYPT_ALGORITHM_IDENTIFIER  Algorithm;
    CRYPT_DER_BLOB              PrivateKey;
    PCRYPT_ATTRIBUTES           pAttributes;
}  CRYPT_PRIVATE_KEY_INFO, *PCRYPT_PRIVATE_KEY_INFO;





typedef struct _CRYPT_ENCRYPTED_PRIVATE_KEY_INFO{
    CRYPT_ALGORITHM_IDENTIFIER  EncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedPrivateKey;
} CRYPT_ENCRYPTED_PRIVATE_KEY_INFO, *PCRYPT_ENCRYPTED_PRIVATE_KEY_INFO;

















typedef BOOL (__stdcall *PCRYPT_DECRYPT_PRIVATE_KEY_FUNC)(
                                                        CRYPT_ALGORITHM_IDENTIFIER  Algorithm,
                                                        CRYPT_DATA_BLOB             EncryptedPrivateKey,
                                                        BYTE                        *pbClearTextKey,
                                                        DWORD                       *pcbClearTextKey,
                                                        LPVOID                      pVoidDecryptFunc);

















typedef BOOL (__stdcall *PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC)(
                                                        CRYPT_ALGORITHM_IDENTIFIER* pAlgorithm,
                                                        CRYPT_DATA_BLOB*            pClearTextPrivateKey,
                                                        BYTE                        *pbEncryptedKey,
                                                        DWORD                       *pcbEncryptedKey,
                                                        LPVOID                      pVoidEncryptFunc);













typedef BOOL (__stdcall *PCRYPT_RESOLVE_HCRYPTPROV_FUNC)(
                                                       CRYPT_PRIVATE_KEY_INFO      *pPrivateKeyInfo,
                                                       HCRYPTPROV                  *phCryptProv,
                                                       LPVOID                      pVoidResolveFunc);










typedef struct _CRYPT_PKCS8_IMPORT_PARAMS{
    CRYPT_DIGEST_BLOB               PrivateKey;             
    PCRYPT_RESOLVE_HCRYPTPROV_FUNC  pResolvehCryptProvFunc; 
    LPVOID                          pVoidResolveFunc;       
    PCRYPT_DECRYPT_PRIVATE_KEY_FUNC pDecryptPrivateKeyFunc;
    LPVOID                          pVoidDecryptFunc;
} CRYPT_PKCS8_IMPORT_PARAMS, *PCRYPT_PKCS8_IMPORT_PARAMS, CRYPT_PRIVATE_KEY_BLOB_AND_PARAMS, *PCRYPT_PRIVATE_KEY_BLOB_AND_PARAMS;









typedef struct _CRYPT_PKCS8_EXPORT_PARAMS{
    HCRYPTPROV                      hCryptProv;
    DWORD                           dwKeySpec;
    LPSTR                           pszPrivateKeyObjId;

    PCRYPT_ENCRYPT_PRIVATE_KEY_FUNC pEncryptPrivateKeyFunc;
    LPVOID                          pVoidEncryptFunc;
} CRYPT_PKCS8_EXPORT_PARAMS, *PCRYPT_PKCS8_EXPORT_PARAMS;







typedef struct _CERT_INFO {
    DWORD                       dwVersion;
    CRYPT_INTEGER_BLOB          SerialNumber;
    CRYPT_ALGORITHM_IDENTIFIER  SignatureAlgorithm;
    CERT_NAME_BLOB              Issuer;
    FILETIME                    NotBefore;
    FILETIME                    NotAfter;
    CERT_NAME_BLOB              Subject;
    CERT_PUBLIC_KEY_INFO        SubjectPublicKeyInfo;
    CRYPT_BIT_BLOB              IssuerUniqueId;
    CRYPT_BIT_BLOB              SubjectUniqueId;
    DWORD                       cExtension;
    PCERT_EXTENSION             rgExtension;
} CERT_INFO, *PCERT_INFO;




























typedef struct _CRL_ENTRY {
    CRYPT_INTEGER_BLOB  SerialNumber;
    FILETIME            RevocationDate;
    DWORD               cExtension;
    PCERT_EXTENSION     rgExtension;
} CRL_ENTRY, *PCRL_ENTRY;







typedef struct _CRL_INFO {
    DWORD                       dwVersion;
    CRYPT_ALGORITHM_IDENTIFIER  SignatureAlgorithm;
    CERT_NAME_BLOB              Issuer;
    FILETIME                    ThisUpdate;
    FILETIME                    NextUpdate;
    DWORD                       cCRLEntry;
    PCRL_ENTRY                  rgCRLEntry;
    DWORD                       cExtension;
    PCERT_EXTENSION             rgExtension;
} CRL_INFO, *PCRL_INFO;














typedef struct _CERT_REQUEST_INFO {
    DWORD                   dwVersion;
    CERT_NAME_BLOB          Subject;
    CERT_PUBLIC_KEY_INFO    SubjectPublicKeyInfo;
    DWORD                   cAttribute;
    PCRYPT_ATTRIBUTE        rgAttribute;
} CERT_REQUEST_INFO, *PCERT_REQUEST_INFO;









typedef struct _CERT_KEYGEN_REQUEST_INFO {
    DWORD                   dwVersion;
    CERT_PUBLIC_KEY_INFO    SubjectPublicKeyInfo;
    LPWSTR                  pwszChallengeString;        
} CERT_KEYGEN_REQUEST_INFO, *PCERT_KEYGEN_REQUEST_INFO;











typedef struct _CERT_SIGNED_CONTENT_INFO {
    CRYPT_DER_BLOB              ToBeSigned;
    CRYPT_ALGORITHM_IDENTIFIER  SignatureAlgorithm;
    CRYPT_BIT_BLOB              Signature;
} CERT_SIGNED_CONTENT_INFO, *PCERT_SIGNED_CONTENT_INFO;









typedef struct _CTL_USAGE {
    DWORD               cUsageIdentifier;
    LPSTR               *rgpszUsageIdentifier;      
} CTL_USAGE, *PCTL_USAGE,
CERT_ENHKEY_USAGE, *PCERT_ENHKEY_USAGE;





typedef struct _CTL_ENTRY {
    CRYPT_DATA_BLOB     SubjectIdentifier;          
    DWORD               cAttribute;
    PCRYPT_ATTRIBUTE    rgAttribute;                
} CTL_ENTRY, *PCTL_ENTRY;




typedef struct _CTL_INFO {
    DWORD                       dwVersion;
    CTL_USAGE                   SubjectUsage;
    CRYPT_DATA_BLOB             ListIdentifier;     
    CRYPT_INTEGER_BLOB          SequenceNumber;     
    FILETIME                    ThisUpdate;
    FILETIME                    NextUpdate;         
    CRYPT_ALGORITHM_IDENTIFIER  SubjectAlgorithm;
    DWORD                       cCTLEntry;
    PCTL_ENTRY                  rgCTLEntry;         
    DWORD                       cExtension;
    PCERT_EXTENSION             rgExtension;        
} CTL_INFO, *PCTL_INFO;














typedef struct _CRYPT_TIME_STAMP_REQUEST_INFO {
    LPSTR                   pszTimeStampAlgorithm;   
    LPSTR                   pszContentType;          
    CRYPT_OBJID_BLOB        Content;
    DWORD                   cAttribute;
    PCRYPT_ATTRIBUTE        rgAttribute;
} CRYPT_TIME_STAMP_REQUEST_INFO, *PCRYPT_TIME_STAMP_REQUEST_INFO;




typedef struct _CRYPT_ENROLLMENT_NAME_VALUE_PAIR {
    LPWSTR      pwszName;
    LPWSTR      pwszValue;
} CRYPT_ENROLLMENT_NAME_VALUE_PAIR, * PCRYPT_ENROLLMENT_NAME_VALUE_PAIR;




typedef struct _CRYPT_CSP_PROVIDER {
    DWORD           dwKeySpec;
    LPWSTR          pwszProviderName;
    CRYPT_BIT_BLOB  Signature;
} CRYPT_CSP_PROVIDER, * PCRYPT_CSP_PROVIDER;












































__declspec(dllimport)
BOOL
__stdcall
CryptFormatObject(
     DWORD dwCertEncodingType,
     DWORD dwFormatType,
     DWORD dwFormatStrType,
     void  *pFormatStruct,
     LPCSTR lpszStructType,
     const BYTE *pbEncoded,
     DWORD cbEncoded,
     void *pbFormat,
      DWORD *pcbFormat
    );





































































typedef LPVOID (__stdcall *PFN_CRYPT_ALLOC)(
     size_t cbSize
    );

typedef void (__stdcall *PFN_CRYPT_FREE)(
     LPVOID pv
    );


typedef struct _CRYPT_ENCODE_PARA {
    DWORD                   cbSize;
    PFN_CRYPT_ALLOC         pfnAlloc;           
    PFN_CRYPT_FREE          pfnFree;            
} CRYPT_ENCODE_PARA, *PCRYPT_ENCODE_PARA;


__declspec(dllimport)
BOOL
__stdcall
CryptEncodeObjectEx(
     DWORD dwCertEncodingType,
     LPCSTR lpszStructType,
     const void *pvStructInfo,
     DWORD dwFlags,
      PCRYPT_ENCODE_PARA pEncodePara,
     void *pvEncoded,
      DWORD *pcbEncoded
    );

__declspec(dllimport)
BOOL
__stdcall
CryptEncodeObject(
     DWORD        dwCertEncodingType,
     LPCSTR       lpszStructType,
     const void   *pvStructInfo,
     BYTE        *pbEncoded,
      DWORD    *pcbEncoded
    );























































typedef struct _CRYPT_DECODE_PARA {
    DWORD                   cbSize;
    PFN_CRYPT_ALLOC         pfnAlloc;           
    PFN_CRYPT_FREE          pfnFree;            
} CRYPT_DECODE_PARA, *PCRYPT_DECODE_PARA;

__declspec(dllimport)
BOOL
__stdcall
CryptDecodeObjectEx(
     DWORD dwCertEncodingType,
     LPCSTR lpszStructType,
     const BYTE *pbEncoded,
     DWORD cbEncoded,
     DWORD dwFlags,
      PCRYPT_DECODE_PARA pDecodePara,
      void *pvStructInfo,
      DWORD *pcbStructInfo
    );


__declspec(dllimport)
BOOL
__stdcall
CryptDecodeObject(
     DWORD        dwCertEncodingType,
     LPCSTR       lpszStructType,
     const BYTE   *pbEncoded,
     DWORD        cbEncoded,
     DWORD        dwFlags,
     void        *pvStructInfo,
      DWORD    *pcbStructInfo
    );
















































































































































































































































































































































































































































































































































































typedef struct _CERT_EXTENSIONS {
    DWORD           cExtension;
    PCERT_EXTENSION rgExtension;
} CERT_EXTENSIONS, *PCERT_EXTENSIONS;


































































































































































typedef struct _CERT_AUTHORITY_KEY_ID_INFO {
    CRYPT_DATA_BLOB     KeyId;
    CERT_NAME_BLOB      CertIssuer;
    CRYPT_INTEGER_BLOB  CertSerialNumber;
} CERT_AUTHORITY_KEY_ID_INFO, *PCERT_AUTHORITY_KEY_ID_INFO;







typedef struct _CERT_PRIVATE_KEY_VALIDITY {
    FILETIME            NotBefore;
    FILETIME            NotAfter;
} CERT_PRIVATE_KEY_VALIDITY, *PCERT_PRIVATE_KEY_VALIDITY;

typedef struct _CERT_KEY_ATTRIBUTES_INFO {
    CRYPT_DATA_BLOB             KeyId;
    CRYPT_BIT_BLOB              IntendedKeyUsage;
    PCERT_PRIVATE_KEY_VALIDITY  pPrivateKeyUsagePeriod;     
} CERT_KEY_ATTRIBUTES_INFO, *PCERT_KEY_ATTRIBUTES_INFO;




















typedef struct _CERT_POLICY_ID {
    DWORD                   cCertPolicyElementId;
    LPSTR                   *rgpszCertPolicyElementId;  
} CERT_POLICY_ID, *PCERT_POLICY_ID;

typedef struct _CERT_KEY_USAGE_RESTRICTION_INFO {
    DWORD                   cCertPolicyId;
    PCERT_POLICY_ID         rgCertPolicyId;
    CRYPT_BIT_BLOB          RestrictedKeyUsage;
} CERT_KEY_USAGE_RESTRICTION_INFO, *PCERT_KEY_USAGE_RESTRICTION_INFO;













typedef struct _CERT_OTHER_NAME {
    LPSTR               pszObjId;
    CRYPT_OBJID_BLOB    Value;
} CERT_OTHER_NAME, *PCERT_OTHER_NAME;

typedef struct _CERT_ALT_NAME_ENTRY {
    DWORD   dwAltNameChoice;
    union {
        PCERT_OTHER_NAME            pOtherName;         
        LPWSTR                      pwszRfc822Name;     
        LPWSTR                      pwszDNSName;        
        
        CERT_NAME_BLOB              DirectoryName;      
        
        LPWSTR                      pwszURL;            
        CRYPT_DATA_BLOB             IPAddress;          
        LPSTR                       pszRegisteredID;    
    };
} CERT_ALT_NAME_ENTRY, *PCERT_ALT_NAME_ENTRY;












typedef struct _CERT_ALT_NAME_INFO {
    DWORD                   cAltEntry;
    PCERT_ALT_NAME_ENTRY    rgAltEntry;
} CERT_ALT_NAME_INFO, *PCERT_ALT_NAME_INFO;






























typedef struct _CERT_BASIC_CONSTRAINTS_INFO {
    CRYPT_BIT_BLOB          SubjectType;
    BOOL                    fPathLenConstraint;
    DWORD                   dwPathLenConstraint;
    DWORD                   cSubtreesConstraint;
    CERT_NAME_BLOB          *rgSubtreesConstraint;
} CERT_BASIC_CONSTRAINTS_INFO, *PCERT_BASIC_CONSTRAINTS_INFO;










typedef struct _CERT_BASIC_CONSTRAINTS2_INFO {
    BOOL                    fCA;
    BOOL                    fPathLenConstraint;
    DWORD                   dwPathLenConstraint;
} CERT_BASIC_CONSTRAINTS2_INFO, *PCERT_BASIC_CONSTRAINTS2_INFO;



















typedef struct _CERT_POLICY_QUALIFIER_INFO {
    LPSTR                       pszPolicyQualifierId;   
    CRYPT_OBJID_BLOB            Qualifier;              
} CERT_POLICY_QUALIFIER_INFO, *PCERT_POLICY_QUALIFIER_INFO;

typedef struct _CERT_POLICY_INFO {
    LPSTR                       pszPolicyIdentifier;    
    DWORD                       cPolicyQualifier;       
    CERT_POLICY_QUALIFIER_INFO  *rgPolicyQualifier;
} CERT_POLICY_INFO, *PCERT_POLICY_INFO;

typedef struct _CERT_POLICIES_INFO {
    DWORD                       cPolicyInfo;
    CERT_POLICY_INFO            *rgPolicyInfo;
} CERT_POLICIES_INFO, *PCERT_POLICIES_INFO;








typedef struct _CERT_POLICY_QUALIFIER_NOTICE_REFERENCE {
    LPSTR   pszOrganization;
    DWORD   cNoticeNumbers;
    int     *rgNoticeNumbers;
} CERT_POLICY_QUALIFIER_NOTICE_REFERENCE, *PCERT_POLICY_QUALIFIER_NOTICE_REFERENCE;

typedef struct _CERT_POLICY_QUALIFIER_USER_NOTICE {
    CERT_POLICY_QUALIFIER_NOTICE_REFERENCE  *pNoticeReference;  
    LPWSTR                                  pszDisplayText;     
} CERT_POLICY_QUALIFIER_USER_NOTICE, *PCERT_POLICY_QUALIFIER_USER_NOTICE;







typedef struct _CPS_URLS {
    LPWSTR                      pszURL;
    CRYPT_ALGORITHM_IDENTIFIER  *pAlgorithm; 
    CRYPT_DATA_BLOB             *pDigest;    
} CPS_URLS, *PCPS_URLS;

typedef struct _CERT_POLICY95_QUALIFIER1 {
    LPWSTR      pszPracticesReference;      
    LPSTR       pszNoticeIdentifier;        
    LPSTR       pszNSINoticeIdentifier;     
    DWORD       cCPSURLs;
    CPS_URLS    *rgCPSURLs;                 
} CERT_POLICY95_QUALIFIER1, *PCERT_POLICY95_QUALIFIER1;









typedef struct _CERT_POLICY_MAPPING {
    LPSTR                       pszIssuerDomainPolicy;      
    LPSTR                       pszSubjectDomainPolicy;     
} CERT_POLICY_MAPPING, *PCERT_POLICY_MAPPING;

typedef struct _CERT_POLICY_MAPPINGS_INFO {
    DWORD                       cPolicyMapping;
    PCERT_POLICY_MAPPING        rgPolicyMapping;
} CERT_POLICY_MAPPINGS_INFO, *PCERT_POLICY_MAPPINGS_INFO;







typedef struct _CERT_POLICY_CONSTRAINTS_INFO {
    BOOL                        fRequireExplicitPolicy;
    DWORD                       dwRequireExplicitPolicySkipCerts;

    BOOL                        fInhibitPolicyMapping;
    DWORD                       dwInhibitPolicyMappingSkipCerts;
} CERT_POLICY_CONSTRAINTS_INFO, *PCERT_POLICY_CONSTRAINTS_INFO;

























































typedef struct _CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY {
    LPSTR               pszObjId;
    DWORD               cValue;
    PCRYPT_DER_BLOB     rgValue;
} CRYPT_CONTENT_INFO_SEQUENCE_OF_ANY, *PCRYPT_CONTENT_INFO_SEQUENCE_OF_ANY;









typedef struct _CRYPT_CONTENT_INFO {
    LPSTR               pszObjId;
    CRYPT_DER_BLOB      Content;
} CRYPT_CONTENT_INFO, *PCRYPT_CONTENT_INFO;






















































typedef struct _CRYPT_SEQUENCE_OF_ANY {
    DWORD               cValue;
    PCRYPT_DER_BLOB     rgValue;
} CRYPT_SEQUENCE_OF_ANY, *PCRYPT_SEQUENCE_OF_ANY;













typedef struct _CERT_AUTHORITY_KEY_ID2_INFO {
    CRYPT_DATA_BLOB     KeyId;
    CERT_ALT_NAME_INFO  AuthorityCertIssuer;    
                                                
    CRYPT_INTEGER_BLOB  AuthorityCertSerialNumber;
} CERT_AUTHORITY_KEY_ID2_INFO, *PCERT_AUTHORITY_KEY_ID2_INFO;
























typedef struct _CERT_ACCESS_DESCRIPTION {
    LPSTR               pszAccessMethod;        
    CERT_ALT_NAME_ENTRY AccessLocation;
} CERT_ACCESS_DESCRIPTION, *PCERT_ACCESS_DESCRIPTION;


typedef struct _CERT_AUTHORITY_INFO_ACCESS {
    DWORD                       cAccDescr;
    PCERT_ACCESS_DESCRIPTION    rgAccDescr;
} CERT_AUTHORITY_INFO_ACCESS, *PCERT_AUTHORITY_INFO_ACCESS;













































typedef struct _CRL_DIST_POINT_NAME {
    DWORD   dwDistPointNameChoice;
    union {
        CERT_ALT_NAME_INFO      FullName;       
        
    };
} CRL_DIST_POINT_NAME, *PCRL_DIST_POINT_NAME;





typedef struct _CRL_DIST_POINT {
    CRL_DIST_POINT_NAME     DistPointName;      
    CRYPT_BIT_BLOB          ReasonFlags;        
    CERT_ALT_NAME_INFO      CRLIssuer;          
} CRL_DIST_POINT, *PCRL_DIST_POINT;









typedef struct _CRL_DIST_POINTS_INFO {
    DWORD                   cDistPoint;
    PCRL_DIST_POINT         rgDistPoint;
} CRL_DIST_POINTS_INFO, *PCRL_DIST_POINTS_INFO;



























typedef struct _CROSS_CERT_DIST_POINTS_INFO {
    
    DWORD                   dwSyncDeltaTime;

    DWORD                   cDistPoint;
    PCERT_ALT_NAME_INFO     rgDistPoint;
} CROSS_CERT_DIST_POINTS_INFO, *PCROSS_CERT_DIST_POINTS_INFO;





















typedef struct _CERT_PAIR {
   CERT_BLOB    Forward;        
   CERT_BLOB    Reverse;        
} CERT_PAIR, *PCERT_PAIR;





























typedef struct _CRL_ISSUING_DIST_POINT {
    CRL_DIST_POINT_NAME     DistPointName;              
    BOOL                    fOnlyContainsUserCerts;
    BOOL                    fOnlyContainsCACerts;
    CRYPT_BIT_BLOB          OnlySomeReasonFlags;        
    BOOL                    fIndirectCRL;
} CRL_ISSUING_DIST_POINT, *PCRL_ISSUING_DIST_POINT;
























typedef struct _CERT_GENERAL_SUBTREE {
    CERT_ALT_NAME_ENTRY     Base;
    DWORD                   dwMinimum;
    BOOL                    fMaximum;
    DWORD                   dwMaximum;
} CERT_GENERAL_SUBTREE, *PCERT_GENERAL_SUBTREE;

typedef struct _CERT_NAME_CONSTRAINTS_INFO {
    DWORD                   cPermittedSubtree;
    PCERT_GENERAL_SUBTREE   rgPermittedSubtree;
    DWORD                   cExcludedSubtree;
    PCERT_GENERAL_SUBTREE   rgExcludedSubtree;
} CERT_NAME_CONSTRAINTS_INFO, *PCERT_NAME_CONSTRAINTS_INFO;
























































































typedef struct _CERT_DSS_PARAMETERS {
    CRYPT_UINT_BLOB     p;
    CRYPT_UINT_BLOB     q;
    CRYPT_UINT_BLOB     g;
} CERT_DSS_PARAMETERS, *PCERT_DSS_PARAMETERS;


























typedef struct _CERT_DH_PARAMETERS {
    CRYPT_UINT_BLOB     p;
    CRYPT_UINT_BLOB     g;
} CERT_DH_PARAMETERS, *PCERT_DH_PARAMETERS;








typedef struct _CERT_X942_DH_VALIDATION_PARAMS {
    CRYPT_BIT_BLOB      seed;
    DWORD               pgenCounter;
} CERT_X942_DH_VALIDATION_PARAMS, *PCERT_X942_DH_VALIDATION_PARAMS;

typedef struct _CERT_X942_DH_PARAMETERS {
    CRYPT_UINT_BLOB     p;          
    CRYPT_UINT_BLOB     g;          
    CRYPT_UINT_BLOB     q;          
    CRYPT_UINT_BLOB     j;          
    PCERT_X942_DH_VALIDATION_PARAMS pValidationParams;  
} CERT_X942_DH_PARAMETERS, *PCERT_X942_DH_PARAMETERS;











typedef struct _CRYPT_X942_OTHER_INFO {
    LPSTR               pszContentEncryptionObjId;
    BYTE                rgbCounter[4];
    BYTE                rgbKeyLength[4];
    CRYPT_DATA_BLOB     PubInfo;    
} CRYPT_X942_OTHER_INFO, *PCRYPT_X942_OTHER_INFO;








typedef struct _CRYPT_RC2_CBC_PARAMETERS {
    DWORD               dwVersion;
    BOOL                fIV;            
    BYTE                rgbIV[8];
} CRYPT_RC2_CBC_PARAMETERS, *PCRYPT_RC2_CBC_PARAMETERS;


















typedef struct _CRYPT_SMIME_CAPABILITY {
    LPSTR               pszObjId;
    CRYPT_OBJID_BLOB    Parameters;
} CRYPT_SMIME_CAPABILITY, *PCRYPT_SMIME_CAPABILITY;

typedef struct _CRYPT_SMIME_CAPABILITIES {
    DWORD                   cCapability;
    PCRYPT_SMIME_CAPABILITY rgCapability;
} CRYPT_SMIME_CAPABILITIES, *PCRYPT_SMIME_CAPABILITIES;













































































































































































































































































typedef struct _CMC_TAGGED_ATTRIBUTE {
    DWORD               dwBodyPartID;
    CRYPT_ATTRIBUTE     Attribute;
} CMC_TAGGED_ATTRIBUTE, *PCMC_TAGGED_ATTRIBUTE;

typedef struct _CMC_TAGGED_CERT_REQUEST {
    DWORD               dwBodyPartID;
    CRYPT_DER_BLOB      SignedCertRequest;
} CMC_TAGGED_CERT_REQUEST, *PCMC_TAGGED_CERT_REQUEST;

typedef struct _CMC_TAGGED_REQUEST {
    DWORD               dwTaggedRequestChoice;
    union {
        
        PCMC_TAGGED_CERT_REQUEST   pTaggedCertRequest;
    };
} CMC_TAGGED_REQUEST, *PCMC_TAGGED_REQUEST;



typedef struct _CMC_TAGGED_CONTENT_INFO {
    DWORD               dwBodyPartID;
    CRYPT_DER_BLOB      EncodedContentInfo;
} CMC_TAGGED_CONTENT_INFO, *PCMC_TAGGED_CONTENT_INFO;

typedef struct _CMC_TAGGED_OTHER_MSG {
    DWORD               dwBodyPartID;
    LPSTR               pszObjId;
    CRYPT_OBJID_BLOB    Value;
} CMC_TAGGED_OTHER_MSG, *PCMC_TAGGED_OTHER_MSG;



typedef struct _CMC_DATA_INFO {
    DWORD                       cTaggedAttribute;
    PCMC_TAGGED_ATTRIBUTE       rgTaggedAttribute;
    DWORD                       cTaggedRequest;
    PCMC_TAGGED_REQUEST         rgTaggedRequest;
    DWORD                       cTaggedContentInfo;
    PCMC_TAGGED_CONTENT_INFO    rgTaggedContentInfo;
    DWORD                       cTaggedOtherMsg;
    PCMC_TAGGED_OTHER_MSG       rgTaggedOtherMsg;
} CMC_DATA_INFO, *PCMC_DATA_INFO;



typedef struct _CMC_RESPONSE_INFO {
    DWORD                       cTaggedAttribute;
    PCMC_TAGGED_ATTRIBUTE       rgTaggedAttribute;
    DWORD                       cTaggedContentInfo;
    PCMC_TAGGED_CONTENT_INFO    rgTaggedContentInfo;
    DWORD                       cTaggedOtherMsg;
    PCMC_TAGGED_OTHER_MSG       rgTaggedOtherMsg;
} CMC_RESPONSE_INFO, *PCMC_RESPONSE_INFO;









typedef struct _CMC_PEND_INFO {
    CRYPT_DATA_BLOB             PendToken;
    FILETIME                    PendTime;
} CMC_PEND_INFO, *PCMC_PEND_INFO;

typedef struct _CMC_STATUS_INFO {
    DWORD                       dwStatus;
    DWORD                       cBodyList;
    DWORD                       *rgdwBodyList;
    LPWSTR                      pwszStatusString;   
    DWORD                       dwOtherInfoChoice;
    union  {
        
        
        
        DWORD                       dwFailInfo;
        
        PCMC_PEND_INFO              pPendInfo;
    };
} CMC_STATUS_INFO, *PCMC_STATUS_INFO;













































































typedef struct _CMC_ADD_EXTENSIONS_INFO {
    DWORD                       dwCmcDataReference;
    DWORD                       cCertReference;
    DWORD                       *rgdwCertReference;
    DWORD                       cExtension;
    PCERT_EXTENSION             rgExtension;
} CMC_ADD_EXTENSIONS_INFO, *PCMC_ADD_EXTENSIONS_INFO;










typedef struct _CMC_ADD_ATTRIBUTES_INFO {
    DWORD                       dwCmcDataReference;
    DWORD                       cCertReference;
    DWORD                       *rgdwCertReference;
    DWORD                       cAttribute;
    PCRYPT_ATTRIBUTE            rgAttribute;
} CMC_ADD_ATTRIBUTES_INFO, *PCMC_ADD_ATTRIBUTES_INFO;









typedef struct _CERT_TEMPLATE_EXT {
    LPSTR               pszObjId;
    DWORD               dwMajorVersion;
    BOOL                fMinorVersion;      
    DWORD               dwMinorVersion;
} CERT_TEMPLATE_EXT, *PCERT_TEMPLATE_EXT;






typedef void *HCRYPTOIDFUNCSET;
typedef void *HCRYPTOIDFUNCADDR;











































































typedef struct _CRYPT_OID_FUNC_ENTRY {
    LPCSTR  pszOID;
    void    *pvFuncAddr;
} CRYPT_OID_FUNC_ENTRY, *PCRYPT_OID_FUNC_ENTRY;




















__declspec(dllimport)
BOOL
__stdcall
CryptInstallOIDFunctionAddress(
     HMODULE hModule,         
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     DWORD cFuncEntry,
     const CRYPT_OID_FUNC_ENTRY rgFuncEntry[],
     DWORD dwFlags
    );







__declspec(dllimport)
HCRYPTOIDFUNCSET
__stdcall
CryptInitOIDFunctionSet(
     LPCSTR pszFuncName,
     DWORD dwFlags
    );



















__declspec(dllimport)
BOOL
__stdcall
CryptGetOIDFunctionAddress(
     HCRYPTOIDFUNCSET hFuncSet,
     DWORD dwEncodingType,
     LPCSTR pszOID,
     DWORD dwFlags,
     void **ppvFuncAddr,
     HCRYPTOIDFUNCADDR *phFuncAddr
    );












__declspec(dllimport)
BOOL
__stdcall
CryptGetDefaultOIDDllList(
     HCRYPTOIDFUNCSET hFuncSet,
     DWORD dwEncodingType,
     LPWSTR pwszDllList,
      DWORD *pcchDllList
    );
























__declspec(dllimport)
BOOL
__stdcall
CryptGetDefaultOIDFunctionAddress(
     HCRYPTOIDFUNCSET hFuncSet,
     DWORD dwEncodingType,
      LPCWSTR pwszDll,
     DWORD dwFlags,
     void **ppvFuncAddr,
      HCRYPTOIDFUNCADDR *phFuncAddr
    );













__declspec(dllimport)
BOOL
__stdcall
CryptFreeOIDFunctionAddress(
     HCRYPTOIDFUNCADDR hFuncAddr,
     DWORD dwFlags
    );















__declspec(dllimport)
BOOL
__stdcall
CryptRegisterOIDFunction(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCSTR pszOID,
      LPCWSTR pwszDll,
      LPCSTR pszOverrideFuncName
    );





__declspec(dllimport)
BOOL
__stdcall
CryptUnregisterOIDFunction(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCSTR pszOID
    );
















__declspec(dllimport)
BOOL
__stdcall
CryptRegisterDefaultOIDFunction(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     DWORD dwIndex,
     LPCWSTR pwszDll
    );








__declspec(dllimport)
BOOL
__stdcall
CryptUnregisterDefaultOIDFunction(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCWSTR pwszDll
    );









__declspec(dllimport)
BOOL
__stdcall
CryptSetOIDFunctionValue(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCSTR pszOID,
     LPCWSTR pwszValueName,
     DWORD dwValueType,
     const BYTE *pbValueData,
     DWORD cbValueData
    );









__declspec(dllimport)
BOOL
__stdcall
CryptGetOIDFunctionValue(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCSTR pszOID,
     LPCWSTR pwszValueName,
     DWORD *pdwValueType,
     BYTE *pbValueData,
      DWORD *pcbValueData
    );

typedef BOOL (__stdcall *PFN_CRYPT_ENUM_OID_FUNC)(
     DWORD dwEncodingType,
     LPCSTR pszFuncName,
     LPCSTR pszOID,
     DWORD cValue,
     const DWORD rgdwValueType[],
     LPCWSTR const rgpwszValueName[],
     const BYTE * const rgpbValueData[],
     const DWORD rgcbValueData[],
     void *pvArg
    );














__declspec(dllimport)
BOOL
__stdcall
CryptEnumOIDFunction(
     DWORD dwEncodingType,
      LPCSTR pszFuncName,
      LPCSTR pszOID,
     DWORD dwFlags,
     void *pvArg,
     PFN_CRYPT_ENUM_OID_FUNC pfnEnumOIDFunc
    );











typedef struct _CRYPT_OID_INFO {
    DWORD           cbSize;
    LPCSTR          pszOID;
    LPCWSTR         pwszName;
    DWORD           dwGroupId;
    union {
        DWORD       dwValue;
        ALG_ID      Algid;
        DWORD       dwLength;
    };
    CRYPT_DATA_BLOB ExtraInfo;
} CRYPT_OID_INFO, *PCRYPT_OID_INFO;
typedef const CRYPT_OID_INFO CCRYPT_OID_INFO, *PCCRYPT_OID_INFO;




































































__declspec(dllimport)
PCCRYPT_OID_INFO
__stdcall
CryptFindOIDInfo(
     DWORD dwKeyType,
     void *pvKey,
     DWORD dwGroupId
    );

















__declspec(dllimport)
BOOL
__stdcall
CryptRegisterOIDInfo(
     PCCRYPT_OID_INFO pInfo,
     DWORD dwFlags
    );







__declspec(dllimport)
BOOL
__stdcall
CryptUnregisterOIDInfo(
     PCCRYPT_OID_INFO pInfo
    );


typedef BOOL (__stdcall *PFN_CRYPT_ENUM_OID_INFO)(
     PCCRYPT_OID_INFO pInfo,
     void *pvArg
    );











__declspec(dllimport)
BOOL
__stdcall
CryptEnumOIDInfo(
     DWORD dwGroupId,
     DWORD dwFlags,
     void *pvArg,
     PFN_CRYPT_ENUM_OID_INFO pfnEnumOIDInfo
    );
























__declspec(dllimport)
LPCWSTR
__stdcall
CryptFindLocalizedName(
     LPCWSTR pwszCryptName
    );








typedef void *HCRYPTMSG;




































typedef struct _CERT_ISSUER_SERIAL_NUMBER {
    CERT_NAME_BLOB      Issuer;
    CRYPT_INTEGER_BLOB  SerialNumber;
} CERT_ISSUER_SERIAL_NUMBER, *PCERT_ISSUER_SERIAL_NUMBER;




typedef struct _CERT_ID {
    DWORD   dwIdChoice;
    union {
        
        CERT_ISSUER_SERIAL_NUMBER   IssuerSerialNumber;
        
        CRYPT_HASH_BLOB             KeyId;
        
        CRYPT_HASH_BLOB             HashId;
    };
} CERT_ID, *PCERT_ID;




















































typedef struct _CMSG_SIGNER_ENCODE_INFO {
    DWORD                       cbSize;
    PCERT_INFO                  pCertInfo;
    HCRYPTPROV                  hCryptProv;
    DWORD                       dwKeySpec;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    void                        *pvHashAuxInfo;
    DWORD                       cAuthAttr;
    PCRYPT_ATTRIBUTE            rgAuthAttr;
    DWORD                       cUnauthAttr;
    PCRYPT_ATTRIBUTE            rgUnauthAttr;






} CMSG_SIGNER_ENCODE_INFO, *PCMSG_SIGNER_ENCODE_INFO;

typedef struct _CMSG_SIGNED_ENCODE_INFO {
    DWORD                       cbSize;
    DWORD                       cSigners;
    PCMSG_SIGNER_ENCODE_INFO    rgSigners;
    DWORD                       cCertEncoded;
    PCERT_BLOB                  rgCertEncoded;
    DWORD                       cCrlEncoded;
    PCRL_BLOB                   rgCrlEncoded;





} CMSG_SIGNED_ENCODE_INFO, *PCMSG_SIGNED_ENCODE_INFO;





































typedef struct _CMSG_RECIPIENT_ENCODE_INFO CMSG_RECIPIENT_ENCODE_INFO,
    *PCMSG_RECIPIENT_ENCODE_INFO;

typedef struct _CMSG_ENVELOPED_ENCODE_INFO {
    DWORD                       cbSize;
    HCRYPTPROV                  hCryptProv;
    CRYPT_ALGORITHM_IDENTIFIER  ContentEncryptionAlgorithm;
    void                        *pvEncryptionAuxInfo;
    DWORD                       cRecipients;

    
    
    
    PCERT_INFO                  *rgpRecipients;














} CMSG_ENVELOPED_ENCODE_INFO, *PCMSG_ENVELOPED_ENCODE_INFO;


















typedef struct _CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO {
    DWORD                       cbSize;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    void                        *pvKeyEncryptionAuxInfo;
    HCRYPTPROV                  hCryptProv;
    CRYPT_BIT_BLOB              RecipientPublicKey;
    CERT_ID                     RecipientId;
} CMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO, *PCMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO;






































typedef struct _CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO {
    DWORD                       cbSize;
    CRYPT_BIT_BLOB              RecipientPublicKey;
    CERT_ID                     RecipientId;

    
    
    FILETIME                    Date;
    PCRYPT_ATTRIBUTE_TYPE_VALUE pOtherAttr;
} CMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO,
    *PCMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO;

typedef struct _CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO {
    DWORD                       cbSize;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    void                        *pvKeyEncryptionAuxInfo;
    CRYPT_ALGORITHM_IDENTIFIER  KeyWrapAlgorithm;
    void                        *pvKeyWrapAuxInfo;

    
    
    
    
    
    HCRYPTPROV                  hCryptProv;
    DWORD                       dwKeySpec;

    DWORD                       dwKeyChoice;
    union {
        
        
        
        PCRYPT_ALGORITHM_IDENTIFIER pEphemeralAlgorithm;

        
        
        
        PCERT_ID                    pSenderId;
    };
    CRYPT_DATA_BLOB             UserKeyingMaterial;     

    DWORD                                       cRecipientEncryptedKeys;
    PCMSG_RECIPIENT_ENCRYPTED_KEY_ENCODE_INFO   *rgpRecipientEncryptedKeys;
} CMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO, *PCMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO;





















typedef struct _CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO {
    DWORD                       cbSize;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    void                        *pvKeyEncryptionAuxInfo;
    HCRYPTPROV                  hCryptProv;
    DWORD                       dwKeyChoice;
    union {
        
        HCRYPTKEY                   hKeyEncryptionKey;
        
        void                        *pvKeyEncryptionKey;
    };
    CRYPT_DATA_BLOB             KeyId;

    
    FILETIME                    Date;
    PCRYPT_ATTRIBUTE_TYPE_VALUE pOtherAttr;
} CMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO, *PCMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO;








struct _CMSG_RECIPIENT_ENCODE_INFO {
    DWORD   dwRecipientChoice;
    union {
        
        PCMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO   pKeyTrans;
        
        PCMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO   pKeyAgree;
        
        PCMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO   pMailList;
    };
};





















typedef struct _CMSG_RC2_AUX_INFO {
    DWORD                       cbSize;
    DWORD                       dwBitLen;
} CMSG_RC2_AUX_INFO, *PCMSG_RC2_AUX_INFO;












typedef struct _CMSG_SP3_COMPATIBLE_AUX_INFO {
    DWORD                       cbSize;
    DWORD                       dwFlags;
} CMSG_SP3_COMPATIBLE_AUX_INFO, *PCMSG_SP3_COMPATIBLE_AUX_INFO;
















typedef struct _CMSG_RC4_AUX_INFO {
    DWORD                       cbSize;
    DWORD                       dwBitLen;
} CMSG_RC4_AUX_INFO, *PCMSG_RC4_AUX_INFO;










typedef struct _CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO {
    DWORD                       cbSize;
    CMSG_SIGNED_ENCODE_INFO     SignedInfo;
    CMSG_ENVELOPED_ENCODE_INFO  EnvelopedInfo;
} CMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO, *PCMSG_SIGNED_AND_ENVELOPED_ENCODE_INFO;














typedef struct _CMSG_HASHED_ENCODE_INFO {
    DWORD                       cbSize;
    HCRYPTPROV                  hCryptProv;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    void                        *pvHashAuxInfo;
} CMSG_HASHED_ENCODE_INFO, *PCMSG_HASHED_ENCODE_INFO;











typedef struct _CMSG_ENCRYPTED_ENCODE_INFO {
    DWORD                       cbSize;
    CRYPT_ALGORITHM_IDENTIFIER  ContentEncryptionAlgorithm;
    void                        *pvEncryptionAuxInfo;
} CMSG_ENCRYPTED_ENCODE_INFO, *PCMSG_ENCRYPTED_ENCODE_INFO;
















typedef BOOL (__stdcall *PFN_CMSG_STREAM_OUTPUT)(
     const void *pvArg,
     BYTE *pbData,
     DWORD cbData,
     BOOL fFinal
    );



typedef struct _CMSG_STREAM_INFO {
    DWORD                   cbContent;
    PFN_CMSG_STREAM_OUTPUT  pfnStreamOutput;
    void                    *pvArg;
} CMSG_STREAM_INFO, *PCMSG_STREAM_INFO;
































__declspec(dllimport)
HCRYPTMSG
__stdcall
CryptMsgOpenToEncode(
     DWORD dwMsgEncodingType,
     DWORD dwFlags,
     DWORD dwMsgType,
     void const *pvMsgEncodeInfo,
      LPSTR pszInnerContentObjID,
      PCMSG_STREAM_INFO pStreamInfo
    );









__declspec(dllimport)
DWORD
__stdcall
CryptMsgCalculateEncodedLength(
     DWORD dwMsgEncodingType,
     DWORD dwFlags,
     DWORD dwMsgType,
     void const *pvMsgEncodeInfo,
      LPSTR pszInnerContentObjID,
     DWORD cbData
    );













__declspec(dllimport)
HCRYPTMSG
__stdcall
CryptMsgOpenToDecode(
     DWORD dwMsgEncodingType,
     DWORD dwFlags,
     DWORD dwMsgType,
     HCRYPTPROV hCryptProv,
      PCERT_INFO pRecipientInfo,
      PCMSG_STREAM_INFO pStreamInfo
    );




__declspec(dllimport)
HCRYPTMSG
__stdcall
CryptMsgDuplicate(
     HCRYPTMSG hCryptMsg
    );






__declspec(dllimport)
BOOL
__stdcall
CryptMsgClose(
     HCRYPTMSG hCryptMsg
    );










__declspec(dllimport)
BOOL
__stdcall
CryptMsgUpdate(
     HCRYPTMSG hCryptMsg,
     const BYTE *pbData,
     DWORD cbData,
     BOOL fFinal
    );

























__declspec(dllimport)
BOOL
__stdcall
CryptMsgGetParam(
     HCRYPTMSG hCryptMsg,
     DWORD dwParamType,
     DWORD dwIndex,
     void *pvData,
      DWORD *pcbData
    );





























































































































typedef struct _CMSG_SIGNER_INFO {
    DWORD                       dwVersion;
    CERT_NAME_BLOB              Issuer;
    CRYPT_INTEGER_BLOB          SerialNumber;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    CRYPT_ALGORITHM_IDENTIFIER  HashEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedHash;
    CRYPT_ATTRIBUTES            AuthAttrs;
    CRYPT_ATTRIBUTES            UnauthAttrs;
} CMSG_SIGNER_INFO, *PCMSG_SIGNER_INFO;






















typedef struct _CMSG_CMS_SIGNER_INFO {
    DWORD                       dwVersion;
    CERT_ID                     SignerId;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    CRYPT_ALGORITHM_IDENTIFIER  HashEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedHash;
    CRYPT_ATTRIBUTES            AuthAttrs;
    CRYPT_ATTRIBUTES            UnauthAttrs;
} CMSG_CMS_SIGNER_INFO, *PCMSG_CMS_SIGNER_INFO;





















typedef CRYPT_ATTRIBUTES CMSG_ATTR;
typedef CRYPT_ATTRIBUTES *PCMSG_ATTR;















































































































































































































































typedef struct _CMSG_KEY_TRANS_RECIPIENT_INFO {
    DWORD                       dwVersion;

    
    CERT_ID                     RecipientId;

    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedKey;
} CMSG_KEY_TRANS_RECIPIENT_INFO, *PCMSG_KEY_TRANS_RECIPIENT_INFO;

typedef struct _CMSG_RECIPIENT_ENCRYPTED_KEY_INFO {
    
    CERT_ID                     RecipientId;

    CRYPT_DATA_BLOB             EncryptedKey;

    
    FILETIME                    Date;
    PCRYPT_ATTRIBUTE_TYPE_VALUE pOtherAttr;
} CMSG_RECIPIENT_ENCRYPTED_KEY_INFO, *PCMSG_RECIPIENT_ENCRYPTED_KEY_INFO;

typedef struct _CMSG_KEY_AGREE_RECIPIENT_INFO {
    DWORD                       dwVersion;
    DWORD                       dwOriginatorChoice;
    union {
        
        CERT_ID                     OriginatorCertId;
        
        CERT_PUBLIC_KEY_INFO        OriginatorPublicKeyInfo;
    };
    CRYPT_DATA_BLOB             UserKeyingMaterial;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;

    DWORD                                cRecipientEncryptedKeys;
    PCMSG_RECIPIENT_ENCRYPTED_KEY_INFO   *rgpRecipientEncryptedKeys;
} CMSG_KEY_AGREE_RECIPIENT_INFO, *PCMSG_KEY_AGREE_RECIPIENT_INFO;





typedef struct _CMSG_MAIL_LIST_RECIPIENT_INFO {
    DWORD                       dwVersion;
    CRYPT_DATA_BLOB             KeyId;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedKey;

    
    FILETIME                    Date;
    PCRYPT_ATTRIBUTE_TYPE_VALUE pOtherAttr;
} CMSG_MAIL_LIST_RECIPIENT_INFO, *PCMSG_MAIL_LIST_RECIPIENT_INFO;

typedef struct _CMSG_CMS_RECIPIENT_INFO {
    DWORD   dwRecipientChoice;
    union {
        
        PCMSG_KEY_TRANS_RECIPIENT_INFO   pKeyTrans;
        
        PCMSG_KEY_AGREE_RECIPIENT_INFO   pKeyAgree;
        
        PCMSG_MAIL_LIST_RECIPIENT_INFO   pMailList;
    };
} CMSG_CMS_RECIPIENT_INFO, *PCMSG_CMS_RECIPIENT_INFO;
































__declspec(dllimport)
BOOL
__stdcall
CryptMsgControl(
     HCRYPTMSG hCryptMsg,
     DWORD dwFlags,
     DWORD dwCtrlType,
     void const *pvCtrlPara
    );





































































typedef struct _CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA {
    DWORD               cbSize;
    HCRYPTPROV          hCryptProv;
    DWORD               dwSignerIndex;
    DWORD               dwSignerType;
    void                *pvSigner;
} CMSG_CTRL_VERIFY_SIGNATURE_EX_PARA, *PCMSG_CTRL_VERIFY_SIGNATURE_EX_PARA;



    

    

    

    
























typedef struct _CMSG_CTRL_DECRYPT_PARA {
    DWORD       cbSize;
    HCRYPTPROV  hCryptProv;
    DWORD       dwKeySpec;
    DWORD       dwRecipientIndex;
} CMSG_CTRL_DECRYPT_PARA, *PCMSG_CTRL_DECRYPT_PARA;























typedef struct _CMSG_CTRL_KEY_TRANS_DECRYPT_PARA {
    DWORD                           cbSize;
    HCRYPTPROV                      hCryptProv;
    DWORD                           dwKeySpec;
    PCMSG_KEY_TRANS_RECIPIENT_INFO  pKeyTrans;
    DWORD                           dwRecipientIndex;
} CMSG_CTRL_KEY_TRANS_DECRYPT_PARA, *PCMSG_CTRL_KEY_TRANS_DECRYPT_PARA;



























typedef struct _CMSG_CTRL_KEY_AGREE_DECRYPT_PARA {
    DWORD                           cbSize;
    HCRYPTPROV                      hCryptProv;
    DWORD                           dwKeySpec;
    PCMSG_KEY_AGREE_RECIPIENT_INFO  pKeyAgree;
    DWORD                           dwRecipientIndex;
    DWORD                           dwRecipientEncryptedKeyIndex;
    CRYPT_BIT_BLOB                  OriginatorPublicKey;
} CMSG_CTRL_KEY_AGREE_DECRYPT_PARA, *PCMSG_CTRL_KEY_AGREE_DECRYPT_PARA;

























typedef struct _CMSG_CTRL_MAIL_LIST_DECRYPT_PARA {
    DWORD                           cbSize;
    HCRYPTPROV                      hCryptProv;
    PCMSG_MAIL_LIST_RECIPIENT_INFO  pMailList;
    DWORD                           dwRecipientIndex;
    DWORD                           dwKeyChoice;
    union {
        
        HCRYPTKEY                       hKeyEncryptionKey;
        
        void                            *pvKeyEncryptionKey;
    };
} CMSG_CTRL_MAIL_LIST_DECRYPT_PARA, *PCMSG_CTRL_MAIL_LIST_DECRYPT_PARA;

















































typedef struct _CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA {
    DWORD               cbSize;
    DWORD               dwSignerIndex;
    CRYPT_DATA_BLOB     blob;
} CMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA, *PCMSG_CTRL_ADD_SIGNER_UNAUTH_ATTR_PARA;











typedef struct _CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA {
    DWORD               cbSize;
    DWORD               dwSignerIndex;
    DWORD               dwUnauthAttrIndex;
} CMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA, *PCMSG_CTRL_DEL_SIGNER_UNAUTH_ATTR_PARA;


































































BOOL
__stdcall
CryptMsgVerifyCountersignatureEncoded(
     HCRYPTPROV   hCryptProv,
     DWORD        dwEncodingType,
     PBYTE        pbSignerInfo,
     DWORD        cbSignerInfo,
     PBYTE        pbSignerInfoCountersignature,
     DWORD        cbSignerInfoCountersignature,
     PCERT_INFO   pciCountersigner
    );












BOOL
__stdcall
CryptMsgVerifyCountersignatureEncodedEx(
     HCRYPTPROV   hCryptProv,
     DWORD        dwEncodingType,
     PBYTE        pbSignerInfo,
     DWORD        cbSignerInfo,
     PBYTE        pbSignerInfoCountersignature,
     DWORD        cbSignerInfoCountersignature,
     DWORD        dwSignerType,
     void         *pvSigner,
     DWORD        dwFlags,
      void *pvReserved
    );










BOOL
__stdcall
CryptMsgCountersign(
      HCRYPTMSG            hCryptMsg,
     DWORD                    dwIndex,
     DWORD                    cCountersigners,
     PCMSG_SIGNER_ENCODE_INFO rgCountersigners
    );







BOOL
__stdcall
CryptMsgCountersignEncoded(
     DWORD                    dwEncodingType,
     PBYTE                    pbSignerInfo,
     DWORD                    cbSignerInfo,
     DWORD                    cCountersigners,
     PCMSG_SIGNER_ENCODE_INFO rgCountersigners,
     PBYTE                   pbCountersignature,
      PDWORD               pcbCountersignature
    );








typedef void * (__stdcall *PFN_CMSG_ALLOC) (
     size_t cb
    );

typedef void (__stdcall *PFN_CMSG_FREE)(
     void *pv
    );














typedef BOOL (__stdcall *PFN_CMSG_GEN_ENCRYPT_KEY) (
      HCRYPTPROV               *phCryptProv,
     PCRYPT_ALGORITHM_IDENTIFIER  paiEncrypt,
     PVOID                        pvEncryptAuxInfo,
     PCERT_PUBLIC_KEY_INFO        pPublicKeyInfo,
     PFN_CMSG_ALLOC               pfnAlloc,
     HCRYPTKEY                   *phEncryptKey,
     PBYTE                       *ppbEncryptParameters,
     PDWORD                      pcbEncryptParameters
    );


typedef BOOL (__stdcall *PFN_CMSG_EXPORT_ENCRYPT_KEY) (
     HCRYPTPROV                   hCryptProv,
     HCRYPTKEY                    hEncryptKey,
     PCERT_PUBLIC_KEY_INFO        pPublicKeyInfo,
     PBYTE                       pbData,
      PDWORD                   pcbData
    );


typedef BOOL (__stdcall *PFN_CMSG_IMPORT_ENCRYPT_KEY) (
     HCRYPTPROV                   hCryptProv,
     DWORD                        dwKeySpec,
     PCRYPT_ALGORITHM_IDENTIFIER  paiEncrypt,
     PCRYPT_ALGORITHM_IDENTIFIER  paiPubKey,
     PBYTE                        pbEncodedKey,
     DWORD                        cbEncodedKey,
     HCRYPTKEY                   *phEncryptKey
    );
















typedef struct _CMSG_CONTENT_ENCRYPT_INFO {
    DWORD                       cbSize;
    HCRYPTPROV                  hCryptProv;
    CRYPT_ALGORITHM_IDENTIFIER  ContentEncryptionAlgorithm;
    void                        *pvEncryptionAuxInfo;
    DWORD                       cRecipients;
    PCMSG_RECIPIENT_ENCODE_INFO rgCmsRecipients;
    PFN_CMSG_ALLOC              pfnAlloc;
    PFN_CMSG_FREE               pfnFree;
    DWORD                       dwEncryptFlags;
    HCRYPTKEY                   hContentEncryptKey;
    DWORD                       dwFlags;
} CMSG_CONTENT_ENCRYPT_INFO, *PCMSG_CONTENT_ENCRYPT_INFO;










































typedef BOOL (__stdcall *PFN_CMSG_GEN_CONTENT_ENCRYPT_KEY) (
      PCMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo,
     DWORD dwFlags,
      void *pvReserved
    );







typedef struct _CMSG_KEY_TRANS_ENCRYPT_INFO {
    DWORD                       cbSize;
    DWORD                       dwRecipientIndex;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedKey;
    DWORD                       dwFlags;
} CMSG_KEY_TRANS_ENCRYPT_INFO, *PCMSG_KEY_TRANS_ENCRYPT_INFO;


























typedef BOOL (__stdcall *PFN_CMSG_EXPORT_KEY_TRANS) (
     PCMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo,
     PCMSG_KEY_TRANS_RECIPIENT_ENCODE_INFO pKeyTransEncodeInfo,
      PCMSG_KEY_TRANS_ENCRYPT_INFO pKeyTransEncryptInfo,
     DWORD dwFlags,
      void *pvReserved
    );








typedef struct _CMSG_KEY_AGREE_KEY_ENCRYPT_INFO {
    DWORD                       cbSize;
    CRYPT_DATA_BLOB             EncryptedKey;
} CMSG_KEY_AGREE_KEY_ENCRYPT_INFO, *PCMSG_KEY_AGREE_KEY_ENCRYPT_INFO;







typedef struct _CMSG_KEY_AGREE_ENCRYPT_INFO {
    DWORD                       cbSize;
    DWORD                       dwRecipientIndex;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    CRYPT_DATA_BLOB             UserKeyingMaterial;
    DWORD                       dwOriginatorChoice;
    union {
        
        CERT_ID                     OriginatorCertId;
        
        CERT_PUBLIC_KEY_INFO        OriginatorPublicKeyInfo;
    };
    DWORD                       cKeyAgreeKeyEncryptInfo;
    PCMSG_KEY_AGREE_KEY_ENCRYPT_INFO *rgpKeyAgreeKeyEncryptInfo;
    DWORD                       dwFlags;
} CMSG_KEY_AGREE_ENCRYPT_INFO, *PCMSG_KEY_AGREE_ENCRYPT_INFO;




















































typedef BOOL (__stdcall *PFN_CMSG_EXPORT_KEY_AGREE) (
     PCMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo,
     PCMSG_KEY_AGREE_RECIPIENT_ENCODE_INFO pKeyAgreeEncodeInfo,
      PCMSG_KEY_AGREE_ENCRYPT_INFO pKeyAgreeEncryptInfo,
     DWORD dwFlags,
      void *pvReserved
    );







typedef struct _CMSG_MAIL_LIST_ENCRYPT_INFO {
    DWORD                       cbSize;
    DWORD                       dwRecipientIndex;
    CRYPT_ALGORITHM_IDENTIFIER  KeyEncryptionAlgorithm;
    CRYPT_DATA_BLOB             EncryptedKey;
    DWORD                       dwFlags;
} CMSG_MAIL_LIST_ENCRYPT_INFO, *PCMSG_MAIL_LIST_ENCRYPT_INFO;


























typedef BOOL (__stdcall *PFN_CMSG_EXPORT_MAIL_LIST) (
     PCMSG_CONTENT_ENCRYPT_INFO pContentEncryptInfo,
     PCMSG_MAIL_LIST_RECIPIENT_ENCODE_INFO pMailListEncodeInfo,
      PCMSG_MAIL_LIST_ENCRYPT_INFO pMailListEncryptInfo,
     DWORD dwFlags,
      void *pvReserved
    );





















typedef BOOL (__stdcall *PFN_CMSG_IMPORT_KEY_TRANS) (
     PCRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm,
     PCMSG_CTRL_KEY_TRANS_DECRYPT_PARA pKeyTransDecryptPara,
     DWORD dwFlags,
      void *pvReserved,
     HCRYPTKEY *phContentEncryptKey
    );


typedef BOOL (__stdcall *PFN_CMSG_IMPORT_KEY_AGREE) (
     PCRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm,
     PCMSG_CTRL_KEY_AGREE_DECRYPT_PARA pKeyAgreeDecryptPara,
     DWORD dwFlags,
      void *pvReserved,
     HCRYPTKEY *phContentEncryptKey
    );


typedef BOOL (__stdcall *PFN_CMSG_IMPORT_MAIL_LIST) (
     PCRYPT_ALGORITHM_IDENTIFIER pContentEncryptionAlgorithm,
     PCMSG_CTRL_MAIL_LIST_DECRYPT_PARA pMailListDecryptPara,
     DWORD dwFlags,
      void *pvReserved,
     HCRYPTKEY *phContentEncryptKey
    );













































































typedef void *HCERTSTORE;










typedef struct _CERT_CONTEXT {
    DWORD                   dwCertEncodingType;
    BYTE                    *pbCertEncoded;
    DWORD                   cbCertEncoded;
    PCERT_INFO              pCertInfo;
    HCERTSTORE              hCertStore;
} CERT_CONTEXT, *PCERT_CONTEXT;
typedef const CERT_CONTEXT *PCCERT_CONTEXT;










typedef struct _CRL_CONTEXT {
    DWORD                   dwCertEncodingType;
    BYTE                    *pbCrlEncoded;
    DWORD                   cbCrlEncoded;
    PCRL_INFO               pCrlInfo;
    HCERTSTORE              hCertStore;
} CRL_CONTEXT, *PCRL_CONTEXT;
typedef const CRL_CONTEXT *PCCRL_CONTEXT;











typedef struct _CTL_CONTEXT {
    DWORD                   dwMsgAndCertEncodingType;
    BYTE                    *pbCtlEncoded;
    DWORD                   cbCtlEncoded;
    PCTL_INFO               pCtlInfo;
    HCERTSTORE              hCertStore;
    HCRYPTMSG               hCryptMsg;
    BYTE                    *pbCtlContent;
    DWORD                   cbCtlContent;
} CTL_CONTEXT, *PCTL_CONTEXT;
typedef const CTL_CONTEXT *PCCTL_CONTEXT;













































































































typedef struct _CRYPT_KEY_PROV_PARAM {
    DWORD           dwParam;
    BYTE            *pbData;
    DWORD           cbData;
    DWORD           dwFlags;
} CRYPT_KEY_PROV_PARAM, *PCRYPT_KEY_PROV_PARAM;

typedef struct _CRYPT_KEY_PROV_INFO {
    LPWSTR                  pwszContainerName;
    LPWSTR                  pwszProvName;
    DWORD                   dwProvType;
    DWORD                   dwFlags;
    DWORD                   cProvParam;
    PCRYPT_KEY_PROV_PARAM   rgProvParam;
    DWORD                   dwKeySpec;
} CRYPT_KEY_PROV_INFO, *PCRYPT_KEY_PROV_INFO;

















typedef struct _CERT_KEY_CONTEXT {
    DWORD           cbSize;           
    HCRYPTPROV      hCryptProv;
    DWORD           dwKeySpec;
} CERT_KEY_CONTEXT, *PCERT_KEY_CONTEXT;





























































































typedef struct _CERT_SYSTEM_STORE_RELOCATE_PARA {
    union {
        HKEY                hKeyBase;
        void                *pvBase;
    };
    union {
        void                *pvSystemStore;
        LPCSTR              pszSystemStore;
        LPCWSTR             pwszSystemStore;
    };
} CERT_SYSTEM_STORE_RELOCATE_PARA, *PCERT_SYSTEM_STORE_RELOCATE_PARA;























































































































































































    






























































typedef struct _CERT_REGISTRY_STORE_CLIENT_GPT_PARA {
    HKEY                hKeyBase;
    LPWSTR              pwszRegPath;
} CERT_REGISTRY_STORE_CLIENT_GPT_PARA, *PCERT_REGISTRY_STORE_CLIENT_GPT_PARA;









typedef struct _CERT_REGISTRY_STORE_ROAMING_PARA {
    HKEY                hKey;
    LPWSTR              pwszStoreDirectory;
} CERT_REGISTRY_STORE_ROAMING_PARA, *PCERT_REGISTRY_STORE_ROAMING_PARA;











































































typedef struct _CERT_LDAP_STORE_OPENED_PARA {
    void        *pvLdapSessionHandle;   
                                        
    LPCWSTR     pwszLdapUrl;
} CERT_LDAP_STORE_OPENED_PARA, *PCERT_LDAP_STORE_OPENED_PARA;











































































































































































































































































































































































__declspec(dllimport)
HCERTSTORE
__stdcall
CertOpenStore(
     LPCSTR lpszStoreProvider,
     DWORD dwEncodingType,
     HCRYPTPROV hCryptProv,
     DWORD dwFlags,
     const void *pvPara
    );







typedef void *HCERTSTOREPROV;










typedef struct _CERT_STORE_PROV_INFO {
    DWORD               cbSize;
    DWORD               cStoreProvFunc;
    void                **rgpvStoreProvFunc;
    HCERTSTOREPROV      hStoreProv;
    DWORD               dwStoreProvFlags;
    HCRYPTOIDFUNCADDR   hStoreProvFuncAddr2;
} CERT_STORE_PROV_INFO, *PCERT_STORE_PROV_INFO;








typedef BOOL (__stdcall *PFN_CERT_DLL_OPEN_STORE_PROV_FUNC)(
     LPCSTR lpszStoreProvider,
     DWORD dwEncodingType,
     HCRYPTPROV hCryptProv,
     DWORD dwFlags,
     const void *pvPara,
     HCERTSTORE hCertStore,
      PCERT_STORE_PROV_INFO pStoreProvInfo
    );





















































typedef void (__stdcall *PFN_CERT_STORE_PROV_CLOSE)(
     HCERTSTOREPROV hStoreProv,
     DWORD dwFlags
    );






typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_READ_CERT)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pStoreCertContext,
     DWORD dwFlags,
     PCCERT_CONTEXT *ppProvCertContext
    );










typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_WRITE_CERT)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pCertContext,
     DWORD dwFlags
    );





typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_DELETE_CERT)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pCertContext,
     DWORD dwFlags
    );









typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_SET_CERT_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pCertContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );






typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_READ_CRL)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pStoreCrlContext,
     DWORD dwFlags,
     PCCRL_CONTEXT *ppProvCrlContext
    );








typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_WRITE_CRL)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwFlags
    );




typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_DELETE_CRL)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwFlags
    );









typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_SET_CRL_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );






typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_READ_CTL)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pStoreCtlContext,
     DWORD dwFlags,
     PCCTL_CONTEXT *ppProvCtlContext
    );








typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_WRITE_CTL)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwFlags
    );




typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_DELETE_CTL)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwFlags
                                                     );









typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_SET_CTL_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_CONTROL)(
     HCERTSTOREPROV hStoreProv,
     DWORD dwFlags,
     DWORD dwCtrlType,
     void const *pvCtrlPara
    );

typedef struct _CERT_STORE_PROV_FIND_INFO {
    DWORD               cbSize;
    DWORD               dwMsgAndCertEncodingType;
    DWORD               dwFindFlags;
    DWORD               dwFindType;
    const void          *pvFindPara;
} CERT_STORE_PROV_FIND_INFO, *PCERT_STORE_PROV_FIND_INFO;
typedef const CERT_STORE_PROV_FIND_INFO CCERT_STORE_PROV_FIND_INFO,
*PCCERT_STORE_PROV_FIND_INFO;

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FIND_CERT)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_STORE_PROV_FIND_INFO pFindInfo,
     PCCERT_CONTEXT pPrevCertContext,
     DWORD dwFlags,
      void **ppvStoreProvFindInfo,
     PCCERT_CONTEXT *ppProvCertContext
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FREE_FIND_CERT)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pCertContext,
     void *pvStoreProvFindInfo,
     DWORD dwFlags
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_GET_CERT_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_CONTEXT pCertContext,
     DWORD dwPropId,
     DWORD dwFlags,
     void *pvData,
      DWORD *pcbData
    );


typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FIND_CRL)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_STORE_PROV_FIND_INFO pFindInfo,
     PCCRL_CONTEXT pPrevCrlContext,
     DWORD dwFlags,
      void **ppvStoreProvFindInfo,
     PCCRL_CONTEXT *ppProvCrlContext
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FREE_FIND_CRL)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pCrlContext,
     void *pvStoreProvFindInfo,
     DWORD dwFlags
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_GET_CRL_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     void *pvData,
      DWORD *pcbData
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FIND_CTL)(
     HCERTSTOREPROV hStoreProv,
     PCCERT_STORE_PROV_FIND_INFO pFindInfo,
     PCCTL_CONTEXT pPrevCtlContext,
     DWORD dwFlags,
      void **ppvStoreProvFindInfo,
     PCCTL_CONTEXT *ppProvCtlContext
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_FREE_FIND_CTL)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pCtlContext,
     void *pvStoreProvFindInfo,
     DWORD dwFlags
    );

typedef BOOL (__stdcall *PFN_CERT_STORE_PROV_GET_CTL_PROPERTY)(
     HCERTSTOREPROV hStoreProv,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     void *pvData,
      DWORD *pcbData
    );





__declspec(dllimport)
HCERTSTORE
__stdcall
CertDuplicateStore(
     HCERTSTORE hCertStore
    );






























































__declspec(dllimport)
BOOL
__stdcall
CertSaveStore(
     HCERTSTORE hCertStore,
     DWORD dwEncodingType,
     DWORD dwSaveAs,
     DWORD dwSaveTo,
      void *pvSaveToPara,
     DWORD dwFlags
    );































__declspec(dllimport)
BOOL
__stdcall
CertCloseStore(
     HCERTSTORE hCertStore,
    DWORD dwFlags
    );













__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertGetSubjectCertificateFromStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     PCERT_INFO pCertId           
    
    );

















__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertEnumCertificatesInStore(
     HCERTSTORE hCertStore,
     PCCERT_CONTEXT pPrevCertContext
    );

























__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertFindCertificateInStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     DWORD dwFindFlags,
     DWORD dwFindType,
     const void *pvFindPara,
     PCCERT_CONTEXT pPrevCertContext
    );


































































































































































































































































































































__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertGetIssuerCertificateFromStore(
     HCERTSTORE hCertStore,
     PCCERT_CONTEXT pSubjectContext,
      PCCERT_CONTEXT pPrevIssuerContext,
      DWORD *pdwFlags
    );











__declspec(dllimport)
BOOL
__stdcall
CertVerifySubjectCertificateContext(
     PCCERT_CONTEXT pSubject,
      PCCERT_CONTEXT pIssuer,
      DWORD *pdwFlags
    );




__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertDuplicateCertificateContext(
     PCCERT_CONTEXT pCertContext
    );















__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertCreateCertificateContext(
     DWORD dwCertEncodingType,
     const BYTE *pbCertEncoded,
     DWORD cbCertEncoded
    );







__declspec(dllimport)
BOOL
__stdcall
CertFreeCertificateContext(
     PCCERT_CONTEXT pCertContext
    );

































































































__declspec(dllimport)
BOOL
__stdcall
CertSetCertificateContextProperty(
     PCCERT_CONTEXT pCertContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );






















































__declspec(dllimport)
BOOL
__stdcall
CertGetCertificateContextProperty(
     PCCERT_CONTEXT pCertContext,
     DWORD dwPropId,
     void *pvData,
      DWORD *pcbData
    );















__declspec(dllimport)
DWORD
__stdcall
CertEnumCertificateContextProperties(
     PCCERT_CONTEXT pCertContext,
     DWORD dwPropId
    );


















__declspec(dllimport)
BOOL
__stdcall
CertCreateCTLEntryFromCertificateContextProperties(
     PCCERT_CONTEXT pCertContext,
     DWORD cOptAttr,
      PCRYPT_ATTRIBUTE rgOptAttr,
     DWORD dwFlags,
      void *pvReserved,
      PCTL_ENTRY pCtlEntry,
      DWORD *pcbCtlEntry
    );
















__declspec(dllimport)
BOOL
__stdcall
CertSetCertificateContextPropertiesFromCTLEntry(
     PCCERT_CONTEXT pCertContext,
     PCTL_ENTRY pCtlEntry,
     DWORD dwFlags
    );





















































__declspec(dllimport)
PCCRL_CONTEXT
__stdcall
CertGetCRLFromStore(
     HCERTSTORE hCertStore,
      PCCERT_CONTEXT pIssuerContext,
     PCCRL_CONTEXT pPrevCrlContext,
      DWORD *pdwFlags
    );

















__declspec(dllimport)
PCCRL_CONTEXT
__stdcall
CertEnumCRLsInStore(
     HCERTSTORE hCertStore,
     PCCRL_CONTEXT pPrevCrlContext
    );
























__declspec(dllimport)
PCCRL_CONTEXT
__stdcall
CertFindCRLInStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     DWORD dwFindFlags,
     DWORD dwFindType,
     const void *pvFindPara,
     PCCRL_CONTEXT pPrevCrlContext
    );










































































typedef struct _CRL_FIND_ISSUED_FOR_PARA {
    PCCERT_CONTEXT              pSubjectCert;
    PCCERT_CONTEXT              pIssuerCert;
} CRL_FIND_ISSUED_FOR_PARA, *PCRL_FIND_ISSUED_FOR_PARA;





__declspec(dllimport)
PCCRL_CONTEXT
__stdcall
CertDuplicateCRLContext(
     PCCRL_CONTEXT pCrlContext
    );















__declspec(dllimport)
PCCRL_CONTEXT
__stdcall
CertCreateCRLContext(
     DWORD dwCertEncodingType,
     const BYTE *pbCrlEncoded,
     DWORD cbCrlEncoded
    );







__declspec(dllimport)
BOOL
__stdcall
CertFreeCRLContext(
     PCCRL_CONTEXT pCrlContext
    );






__declspec(dllimport)
BOOL
__stdcall
CertSetCRLContextProperty(
     PCCRL_CONTEXT pCrlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );









__declspec(dllimport)
BOOL
__stdcall
CertGetCRLContextProperty(
     PCCRL_CONTEXT pCrlContext,
     DWORD dwPropId,
     void *pvData,
      DWORD *pcbData
    );











__declspec(dllimport)
DWORD
__stdcall
CertEnumCRLContextProperties(
     PCCRL_CONTEXT pCrlContext,
     DWORD dwPropId
    );














__declspec(dllimport)
BOOL
__stdcall
CertFindCertificateInCRL(
     PCCERT_CONTEXT pCert,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwFlags,
      void *pvReserved,
     PCRL_ENTRY *ppCrlEntry
    );













__declspec(dllimport)
BOOL
__stdcall
CertIsValidCRLForCertificate(
     PCCERT_CONTEXT pCert,
     PCCRL_CONTEXT pCrl,
     DWORD dwFlags,
     void *pvReserved
    );



























































__declspec(dllimport)
BOOL
__stdcall
CertAddEncodedCertificateToStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     const BYTE *pbCertEncoded,
     DWORD cbCertEncoded,
     DWORD dwAddDisposition,
      PCCERT_CONTEXT *ppCertContext
    );


























































__declspec(dllimport)
BOOL
__stdcall
CertAddCertificateContextToStore(
     HCERTSTORE hCertStore,
     PCCERT_CONTEXT pCertContext,
     DWORD dwAddDisposition,
      PCCERT_CONTEXT *ppStoreContext
    );













































__declspec(dllimport)
BOOL
__stdcall
CertAddSerializedElementToStore(
     HCERTSTORE hCertStore,
     const BYTE *pbElement,
     DWORD cbElement,
     DWORD dwAddDisposition,
     DWORD dwFlags,
     DWORD dwContextTypeFlags,
      DWORD *pdwContextType,
      const void **ppvContext
    );
















__declspec(dllimport)
BOOL
__stdcall
CertDeleteCertificateFromStore(
     PCCERT_CONTEXT pCertContext
    );

















__declspec(dllimport)
BOOL
__stdcall
CertAddEncodedCRLToStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     const BYTE *pbCrlEncoded,
     DWORD cbCrlEncoded,
     DWORD dwAddDisposition,
      PCCRL_CONTEXT *ppCrlContext
    );





















__declspec(dllimport)
BOOL
__stdcall
CertAddCRLContextToStore(
     HCERTSTORE hCertStore,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwAddDisposition,
      PCCRL_CONTEXT *ppStoreContext
    );













__declspec(dllimport)
BOOL
__stdcall
CertDeleteCRLFromStore(
     PCCRL_CONTEXT pCrlContext
    );





__declspec(dllimport)
BOOL
__stdcall
CertSerializeCertificateStoreElement(
     PCCERT_CONTEXT pCertContext,
     DWORD dwFlags,
     BYTE *pbElement,
      DWORD *pcbElement
    );





__declspec(dllimport)
BOOL
__stdcall
CertSerializeCRLStoreElement(
     PCCRL_CONTEXT pCrlContext,
     DWORD dwFlags,
     BYTE *pbElement,
      DWORD *pcbElement
    );










__declspec(dllimport)
PCCTL_CONTEXT
__stdcall
CertDuplicateCTLContext(
     PCCTL_CONTEXT pCtlContext
    );















__declspec(dllimport)
PCCTL_CONTEXT
__stdcall
CertCreateCTLContext(
     DWORD dwMsgAndCertEncodingType,
     const BYTE *pbCtlEncoded,
     DWORD cbCtlEncoded
    );







__declspec(dllimport)
BOOL
__stdcall
CertFreeCTLContext(
     PCCTL_CONTEXT pCtlContext
    );






__declspec(dllimport)
BOOL
__stdcall
CertSetCTLContextProperty(
     PCCTL_CONTEXT pCtlContext,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );









__declspec(dllimport)
BOOL
__stdcall
CertGetCTLContextProperty(
     PCCTL_CONTEXT pCtlContext,
     DWORD dwPropId,
     void *pvData,
      DWORD *pcbData
    );




__declspec(dllimport)
DWORD
__stdcall
CertEnumCTLContextProperties(
     PCCTL_CONTEXT pCtlContext,
     DWORD dwPropId
    );

















__declspec(dllimport)
PCCTL_CONTEXT
__stdcall
CertEnumCTLsInStore(
     HCERTSTORE hCertStore,
     PCCTL_CONTEXT pPrevCtlContext
    );



















__declspec(dllimport)
PCTL_ENTRY
__stdcall
CertFindSubjectInCTL(
     DWORD dwEncodingType,
     DWORD dwSubjectType,
     void *pvSubject,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwFlags
    );







typedef struct _CTL_ANY_SUBJECT_INFO {
    CRYPT_ALGORITHM_IDENTIFIER  SubjectAlgorithm;
    CRYPT_DATA_BLOB             SubjectIdentifier;
} CTL_ANY_SUBJECT_INFO, *PCTL_ANY_SUBJECT_INFO;
























__declspec(dllimport)
PCCTL_CONTEXT
__stdcall
CertFindCTLInStore(
     HCERTSTORE hCertStore,
     DWORD dwMsgAndCertEncodingType,
     DWORD dwFindFlags,
     DWORD dwFindType,
     const void *pvFindPara,
     PCCTL_CONTEXT pPrevCtlContext
    );








typedef struct _CTL_FIND_USAGE_PARA {
    DWORD               cbSize;
    CTL_USAGE           SubjectUsage;   
    CRYPT_DATA_BLOB     ListIdentifier; 
    PCERT_INFO          pSigner;        
} CTL_FIND_USAGE_PARA, *PCTL_FIND_USAGE_PARA;







typedef struct _CTL_FIND_SUBJECT_PARA {
    DWORD                   cbSize;
    PCTL_FIND_USAGE_PARA    pUsagePara; 
    DWORD                   dwSubjectType;
    void                    *pvSubject;
} CTL_FIND_SUBJECT_PARA, *PCTL_FIND_SUBJECT_PARA;




































































__declspec(dllimport)
BOOL
__stdcall
CertAddEncodedCTLToStore(
     HCERTSTORE hCertStore,
     DWORD dwMsgAndCertEncodingType,
     const BYTE *pbCtlEncoded,
     DWORD cbCtlEncoded,
     DWORD dwAddDisposition,
      PCCTL_CONTEXT *ppCtlContext
    );





















__declspec(dllimport)
BOOL
__stdcall
CertAddCTLContextToStore(
     HCERTSTORE hCertStore,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwAddDisposition,
      PCCTL_CONTEXT *ppStoreContext
    );




__declspec(dllimport)
BOOL
__stdcall
CertSerializeCTLStoreElement(
     PCCTL_CONTEXT pCtlContext,
     DWORD dwFlags,
     BYTE *pbElement,
      DWORD *pcbElement
    );













__declspec(dllimport)
BOOL
__stdcall
CertDeleteCTLFromStore(
     PCCTL_CONTEXT pCtlContext
    );


__declspec(dllimport)
BOOL
__stdcall
CertAddCertificateLinkToStore(
     HCERTSTORE hCertStore,
     PCCERT_CONTEXT pCertContext,
     DWORD dwAddDisposition,
      PCCERT_CONTEXT *ppStoreContext
    );

__declspec(dllimport)
BOOL
__stdcall
CertAddCRLLinkToStore(
     HCERTSTORE hCertStore,
     PCCRL_CONTEXT pCrlContext,
     DWORD dwAddDisposition,
      PCCRL_CONTEXT *ppStoreContext
    );

__declspec(dllimport)
BOOL
__stdcall
CertAddCTLLinkToStore(
     HCERTSTORE hCertStore,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwAddDisposition,
      PCCTL_CONTEXT *ppStoreContext
    );

__declspec(dllimport)
BOOL
__stdcall
CertAddStoreToCollection(
     HCERTSTORE hCollectionStore,
      HCERTSTORE hSiblingStore,
     DWORD dwUpdateFlags,
     DWORD dwPriority
    );

__declspec(dllimport)
void
__stdcall
CertRemoveStoreFromCollection(
     HCERTSTORE hCollectionStore,
     HCERTSTORE hSiblingStore
    );


__declspec(dllimport)
BOOL
__stdcall
CertControlStore(
     HCERTSTORE hCertStore,
     DWORD dwFlags,
     DWORD dwCtrlType,
     void const *pvCtrlPara
    );





























































































































__declspec(dllimport)
BOOL
__stdcall
CertSetStoreProperty(
     HCERTSTORE hCertStore,
     DWORD dwPropId,
     DWORD dwFlags,
     const void *pvData
    );














__declspec(dllimport)
BOOL
__stdcall
CertGetStoreProperty(
     HCERTSTORE hCertStore,
     DWORD dwPropId,
     void *pvData,
      DWORD *pcbData
    );


typedef struct _CERT_CREATE_CONTEXT_PARA {
    DWORD                   cbSize;
    PFN_CRYPT_FREE          pfnFree;            
    void                    *pvFree;            
} CERT_CREATE_CONTEXT_PARA, *PCERT_CREATE_CONTEXT_PARA;


































__declspec(dllimport)
const void *
__stdcall
CertCreateContext(
     DWORD dwContextType,
     DWORD dwEncodingType,
     const BYTE *pbEncoded,
     DWORD cbEncoded,
     DWORD dwFlags,
      PCERT_CREATE_CONTEXT_PARA pCreatePara
    );














































typedef struct _CERT_SYSTEM_STORE_INFO {
    DWORD   cbSize;
} CERT_SYSTEM_STORE_INFO, *PCERT_SYSTEM_STORE_INFO;











































typedef struct _CERT_PHYSICAL_STORE_INFO {
    DWORD               cbSize;
    LPSTR               pszOpenStoreProvider;   
    DWORD               dwOpenEncodingType;     
    DWORD               dwOpenFlags;            
    CRYPT_DATA_BLOB     OpenParameters;         
    DWORD               dwFlags;                
    DWORD               dwPriority;             
} CERT_PHYSICAL_STORE_INFO, *PCERT_PHYSICAL_STORE_INFO;





































__declspec(dllimport)
BOOL
__stdcall
CertRegisterSystemStore(
     const void *pvSystemStore,
     DWORD dwFlags,
     PCERT_SYSTEM_STORE_INFO pStoreInfo,
      void *pvReserved
    );

















__declspec(dllimport)
BOOL
__stdcall
CertRegisterPhysicalStore(
     const void *pvSystemStore,
     DWORD dwFlags,
     LPCWSTR pwszStoreName,
     PCERT_PHYSICAL_STORE_INFO pStoreInfo,
      void *pvReserved
    );
















__declspec(dllimport)
BOOL
__stdcall
CertUnregisterSystemStore(
     const void *pvSystemStore,
     DWORD dwFlags
    );
















__declspec(dllimport)
BOOL
__stdcall
CertUnregisterPhysicalStore(
     const void *pvSystemStore,
     DWORD dwFlags,
     LPCWSTR pwszStoreName
    );


















typedef BOOL (__stdcall *PFN_CERT_ENUM_SYSTEM_STORE_LOCATION)(
     LPCWSTR pwszStoreLocation,
     DWORD dwFlags,
      void *pvReserved,
      void *pvArg
    );

typedef BOOL (__stdcall *PFN_CERT_ENUM_SYSTEM_STORE)(
     const void *pvSystemStore,
     DWORD dwFlags,
     PCERT_SYSTEM_STORE_INFO pStoreInfo,
      void *pvReserved,
      void *pvArg
    );

typedef BOOL (__stdcall *PFN_CERT_ENUM_PHYSICAL_STORE)(
     const void *pvSystemStore,
     DWORD dwFlags,
     LPCWSTR pwszStoreName,
     PCERT_PHYSICAL_STORE_INFO pStoreInfo,
      void *pvReserved,
      void *pvArg
    );



















__declspec(dllimport)
BOOL
__stdcall
CertEnumSystemStoreLocation(
     DWORD dwFlags,
     void *pvArg,
     PFN_CERT_ENUM_SYSTEM_STORE_LOCATION pfnEnum
    );
































__declspec(dllimport)
BOOL
__stdcall
CertEnumSystemStore(
     DWORD dwFlags,
      void *pvSystemStoreLocationPara,
     void *pvArg,
     PFN_CERT_ENUM_SYSTEM_STORE pfnEnum
    );

















__declspec(dllimport)
BOOL
__stdcall
CertEnumPhysicalStore(
     const void *pvSystemStore,
     DWORD dwFlags,
     void *pvArg,
     PFN_CERT_ENUM_PHYSICAL_STORE pfnEnum
    );






















































__declspec(dllimport)
BOOL
__stdcall
CertGetEnhancedKeyUsage(
     PCCERT_CONTEXT pCertContext,
     DWORD dwFlags,
     PCERT_ENHKEY_USAGE pUsage,
      DWORD *pcbUsage
    );




__declspec(dllimport)
BOOL
__stdcall
CertSetEnhancedKeyUsage(
     PCCERT_CONTEXT pCertContext,
     PCERT_ENHKEY_USAGE pUsage
    );




__declspec(dllimport)
BOOL
__stdcall
CertAddEnhancedKeyUsageIdentifier(
     PCCERT_CONTEXT pCertContext,
     LPCSTR pszUsageIdentifier
    );






__declspec(dllimport)
BOOL
__stdcall
CertRemoveEnhancedKeyUsageIdentifier(
     PCCERT_CONTEXT pCertContext,
     LPCSTR pszUsageIdentifier
    );









__declspec(dllimport)
BOOL
__stdcall
CertGetValidUsages(
          DWORD           cCerts,
          PCCERT_CONTEXT  *rghCerts,
         int             *cNumOIDs,
         LPSTR           *rghOIDs,
       DWORD           *pcbOIDs);





























__declspec(dllimport)
BOOL
__stdcall
CryptMsgGetAndVerifySigner(
     HCRYPTMSG hCryptMsg,
     DWORD cSignerStore,
      HCERTSTORE *rghSignerStore,
     DWORD dwFlags,
      PCCERT_CONTEXT *ppSigner,
       DWORD *pdwSignerIndex
    );














__declspec(dllimport)
BOOL
__stdcall
CryptMsgSignCTL(
     DWORD dwMsgEncodingType,
     BYTE *pbCtlContent,
     DWORD cbCtlContent,
     PCMSG_SIGNED_ENCODE_INFO pSignInfo,
     DWORD dwFlags,
     BYTE *pbEncoded,
      DWORD *pcbEncoded
    );

















__declspec(dllimport)
BOOL
__stdcall
CryptMsgEncodeAndSignCTL(
     DWORD dwMsgEncodingType,
     PCTL_INFO pCtlInfo,
     PCMSG_SIGNED_ENCODE_INFO pSignInfo,
     DWORD dwFlags,
     BYTE *pbEncoded,
      DWORD *pcbEncoded
    );
















__declspec(dllimport)
BOOL
__stdcall
CertFindSubjectInSortedCTL(
     PCRYPT_DATA_BLOB pSubjectIdentifier,
     PCCTL_CONTEXT pCtlContext,
     DWORD dwFlags,
     void *pvReserved,
      PCRYPT_DER_BLOB pEncodedAttributes
    );














__declspec(dllimport)
BOOL
__stdcall
CertEnumSubjectInSortedCTL(
     PCCTL_CONTEXT pCtlContext,
      void **ppvNextSubject,
      PCRYPT_DER_BLOB pSubjectIdentifier,
      PCRYPT_DER_BLOB pEncodedAttributes
    );






typedef struct _CTL_VERIFY_USAGE_PARA {
    DWORD                   cbSize;
    CRYPT_DATA_BLOB         ListIdentifier;     
    DWORD                   cCtlStore;
    HCERTSTORE              *rghCtlStore;       
    DWORD                   cSignerStore;
    HCERTSTORE              *rghSignerStore;    
} CTL_VERIFY_USAGE_PARA, *PCTL_VERIFY_USAGE_PARA;

typedef struct _CTL_VERIFY_USAGE_STATUS {
    DWORD                   cbSize;
    DWORD                   dwError;
    DWORD                   dwFlags;
    PCCTL_CONTEXT           *ppCtl;             
    DWORD                   dwCtlEntryIndex;
    PCCERT_CONTEXT          *ppSigner;          
    DWORD                   dwSignerIndex;
} CTL_VERIFY_USAGE_STATUS, *PCTL_VERIFY_USAGE_STATUS;

























































__declspec(dllimport)
BOOL
__stdcall
CertVerifyCTLUsage(
     DWORD dwEncodingType,
     DWORD dwSubjectType,
     void *pvSubject,
     PCTL_USAGE pSubjectUsage,
     DWORD dwFlags,
      PCTL_VERIFY_USAGE_PARA pVerifyUsagePara,
      PCTL_VERIFY_USAGE_STATUS pVerifyUsageStatus
    );










typedef struct _CERT_REVOCATION_CRL_INFO {
    DWORD                   cbSize;
    PCCRL_CONTEXT           pBaseCrlContext;
    PCCRL_CONTEXT           pDeltaCrlContext;

    
    
    PCRL_ENTRY              pCrlEntry;
    BOOL                    fDeltaCrlEntry; 
} CERT_REVOCATION_CRL_INFO, *PCERT_REVOCATION_CRL_INFO;


















typedef struct _CERT_REVOCATION_PARA {
    DWORD                       cbSize;
    PCCERT_CONTEXT              pIssuerCert;
    DWORD                       cCertStore;
    HCERTSTORE                  *rgCertStore;
    HCERTSTORE                  hCrlStore;
    LPFILETIME                  pftTimeToUse;




























} CERT_REVOCATION_PARA, *PCERT_REVOCATION_PARA;
















typedef struct _CERT_REVOCATION_STATUS {
    DWORD                   cbSize;
    DWORD                   dwIndex;
    DWORD                   dwError;
    DWORD                   dwReason;

    

    
    
    
    
    
    
    BOOL                    fHasFreshnessTime;
    DWORD                   dwFreshnessTime;    
} CERT_REVOCATION_STATUS, *PCERT_REVOCATION_STATUS;














































































__declspec(dllimport)
BOOL
__stdcall
CertVerifyRevocation(
     DWORD dwEncodingType,
     DWORD dwRevType,
     DWORD cContext,
     PVOID rgpvContext[],
     DWORD dwFlags,
      PCERT_REVOCATION_PARA pRevPara,
      PCERT_REVOCATION_STATUS pRevStatus
    );




















































BOOL
__stdcall
CertCompareIntegerBlob(
     PCRYPT_INTEGER_BLOB pInt1,
     PCRYPT_INTEGER_BLOB pInt2
    );









__declspec(dllimport)
BOOL
__stdcall
CertCompareCertificate(
     DWORD dwCertEncodingType,
     PCERT_INFO pCertId1,
     PCERT_INFO pCertId2
    );






__declspec(dllimport)
BOOL
__stdcall
CertCompareCertificateName(
     DWORD dwCertEncodingType,
     PCERT_NAME_BLOB pCertName1,
     PCERT_NAME_BLOB pCertName2
    );



















__declspec(dllimport)
BOOL
__stdcall
CertIsRDNAttrsInCertificateName(
     DWORD dwCertEncodingType,
     DWORD dwFlags,
     PCERT_NAME_BLOB pCertName,
     PCERT_RDN pRDN
    );









__declspec(dllimport)
BOOL
__stdcall
CertComparePublicKeyInfo(
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pPublicKey1,
     PCERT_PUBLIC_KEY_INFO pPublicKey2
    );






__declspec(dllimport)
DWORD
__stdcall
CertGetPublicKeyLength(
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pPublicKey
    );










__declspec(dllimport)
BOOL
__stdcall
CryptVerifyCertificateSignature(
     HCRYPTPROV               hCryptProv,
     DWORD                    dwCertEncodingType,
     const BYTE *             pbEncoded,
     DWORD                    cbEncoded,
     PCERT_PUBLIC_KEY_INFO    pPublicKey
    );


























__declspec(dllimport)
BOOL
__stdcall
CryptVerifyCertificateSignatureEx(
      HCRYPTPROV hCryptProv,
     DWORD dwCertEncodingType,
     DWORD dwSubjectType,
     void *pvSubject,
     DWORD dwIssuerType,
     void *pvIssuer,
     DWORD dwFlags,
      void *pvReserved
    );




    

    

    



    

    

    

    








__declspec(dllimport)
BOOL
__stdcall
CryptHashToBeSigned(
     HCRYPTPROV hCryptProv,
     DWORD dwCertEncodingType,
     const BYTE *pbEncoded,
     DWORD cbEncoded,
     BYTE *pbComputedHash,
      DWORD *pcbComputedHash
    );










__declspec(dllimport)
BOOL
__stdcall
CryptHashCertificate(
     HCRYPTPROV hCryptProv,
     ALG_ID Algid,
     DWORD dwFlags,
     const BYTE *pbEncoded,
     DWORD cbEncoded,
     BYTE *pbComputedHash,
      DWORD *pcbComputedHash
    );












__declspec(dllimport)
BOOL
__stdcall
CryptSignCertificate(
     HCRYPTPROV hCryptProv,
     DWORD dwKeySpec,
     DWORD dwCertEncodingType,
     const BYTE *pbEncodedToBeSigned,
     DWORD cbEncodedToBeSigned,
     PCRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm,
      const void *pvHashAuxInfo,
     BYTE *pbSignature,
      DWORD *pcbSignature
    );













__declspec(dllimport)
BOOL
__stdcall
CryptSignAndEncodeCertificate(
     HCRYPTPROV hCryptProv,
     DWORD dwKeySpec,
     DWORD dwCertEncodingType,
     LPCSTR lpszStructType,       
     const void *pvStructInfo,
     PCRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm,
      const void *pvHashAuxInfo,
     PBYTE pbEncoded,
      DWORD *pcbEncoded
    );










__declspec(dllimport)
LONG
__stdcall
CertVerifyTimeValidity(
     LPFILETIME pTimeToVerify,
     PCERT_INFO pCertInfo
    );










__declspec(dllimport)
LONG
__stdcall
CertVerifyCRLTimeValidity(
     LPFILETIME pTimeToVerify,
     PCRL_INFO pCrlInfo
    );







__declspec(dllimport)
BOOL
__stdcall
CertVerifyValidityNesting(
     PCERT_INFO pSubjectInfo,
     PCERT_INFO pIssuerInfo
    );






__declspec(dllimport)
BOOL
__stdcall
CertVerifyCRLRevocation(
     DWORD dwCertEncodingType,
     PCERT_INFO pCertId,          
    
     DWORD cCrlInfo,
     PCRL_INFO rgpCrlInfo[]
    );






__declspec(dllimport)
LPCSTR
__stdcall
CertAlgIdToOID(
     DWORD dwAlgId
    );






__declspec(dllimport)
DWORD
__stdcall
CertOIDToAlgId(
     LPCSTR pszObjId
    );






__declspec(dllimport)
PCERT_EXTENSION
__stdcall
CertFindExtension(
     LPCSTR pszObjId,
     DWORD cExtensions,
     CERT_EXTENSION rgExtensions[]
    );






__declspec(dllimport)
PCRYPT_ATTRIBUTE
__stdcall
CertFindAttribute(
     LPCSTR pszObjId,
     DWORD cAttr,
     CRYPT_ATTRIBUTE rgAttr[]
    );







__declspec(dllimport)
PCERT_RDN_ATTR
__stdcall
CertFindRDNAttr(
     LPCSTR pszObjId,
     PCERT_NAME_INFO pName
    );









__declspec(dllimport)
BOOL
__stdcall
CertGetIntendedKeyUsage(
     DWORD dwCertEncodingType,
     PCERT_INFO pCertInfo,
     BYTE *pbKeyUsage,
     DWORD cbKeyUsage
    );

typedef void *HCRYPTDEFAULTCONTEXT;




























__declspec(dllimport)
BOOL
__stdcall
CryptInstallDefaultContext(
     HCRYPTPROV hCryptProv,
     DWORD dwDefaultType,
     const void *pvDefaultPara,
     DWORD dwFlags,
     void *pvReserved,
     HCRYPTDEFAULTCONTEXT *phDefaultContext
    );






























typedef struct _CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA {
    DWORD               cOID;
    LPSTR               *rgpszOID;
} CRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA, *PCRYPT_DEFAULT_CONTEXT_MULTI_OID_PARA;










__declspec(dllimport)
BOOL
__stdcall
CryptUninstallDefaultContext(
    HCRYPTDEFAULTCONTEXT hDefaultContext,
     DWORD dwFlags,
     void *pvReserved
    );








__declspec(dllimport)
BOOL
__stdcall
CryptExportPublicKeyInfo(
     HCRYPTPROV hCryptProv,
     DWORD dwKeySpec,
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pInfo,
      DWORD *pcbInfo
    );

















__declspec(dllimport)
BOOL
__stdcall
CryptExportPublicKeyInfoEx(
     HCRYPTPROV hCryptProv,
     DWORD dwKeySpec,
     DWORD dwCertEncodingType,
     LPSTR pszPublicKeyObjId,
     DWORD dwFlags,
      void *pvAuxInfo,
     PCERT_PUBLIC_KEY_INFO pInfo,
      DWORD *pcbInfo
    );









__declspec(dllimport)
BOOL
__stdcall
CryptImportPublicKeyInfo(
     HCRYPTPROV hCryptProv,
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pInfo,
     HCRYPTKEY *phKey
    );

















__declspec(dllimport)
BOOL
__stdcall
CryptImportPublicKeyInfoEx(
     HCRYPTPROV hCryptProv,
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pInfo,
     ALG_ID aiKeyAlg,
     DWORD dwFlags,
      void *pvAuxInfo,
     HCRYPTKEY *phKey
    );











































__declspec(dllimport)
BOOL
__stdcall
CryptAcquireCertificatePrivateKey(
     PCCERT_CONTEXT pCert,
     DWORD dwFlags,
     void *pvReserved,
     HCRYPTPROV *phCryptProv,
      DWORD *pdwKeySpec,
      BOOL *pfCallerFreeProv
    );



























__declspec(dllimport)
BOOL
__stdcall
CryptFindCertificateKeyProvInfo(
     PCCERT_CONTEXT pCert,
     DWORD dwFlags,
     void *pvReserved
    );




















typedef BOOL (__stdcall *PFN_IMPORT_PRIV_KEY_FUNC) (
    HCRYPTPROV              hCryptProv,         
    CRYPT_PRIVATE_KEY_INFO  *pPrivateKeyInfo,   
    DWORD                   dwFlags,            
    void                    *pvAuxInfo          
    );





















__declspec(dllimport)
BOOL
__stdcall
CryptImportPKCS8(
    CRYPT_PKCS8_IMPORT_PARAMS           sImportParams,          
    DWORD                               dwFlags,                
    HCRYPTPROV                          *phCryptProv,           
    void                                *pvAuxInfo              
    );




typedef BOOL (__stdcall *PFN_EXPORT_PRIV_KEY_FUNC) (
    HCRYPTPROV              hCryptProv,         
    DWORD                   dwKeySpec,          
    LPSTR                   pszPrivateKeyObjId, 
    DWORD                   dwFlags,            
    void                    *pvAuxInfo,         
    CRYPT_PRIVATE_KEY_INFO  *pPrivateKeyInfo,   
    DWORD                   *pcbPrivateKeyBlob  
    );









__declspec(dllimport)
BOOL
__stdcall
CryptExportPKCS8(
    HCRYPTPROV  hCryptProv,         
    DWORD       dwKeySpec,          
    LPSTR       pszPrivateKeyObjId, 
    DWORD       dwFlags,            
    void        *pvAuxInfo,         
    BYTE        *pbPrivateKeyBlob,  
    DWORD       *pcbPrivateKeyBlob  
    );























__declspec(dllimport)
BOOL
__stdcall
CryptExportPKCS8Ex(
    CRYPT_PKCS8_EXPORT_PARAMS* psExportParams, 
    DWORD       dwFlags,            
    void        *pvAuxInfo,         
    BYTE        *pbPrivateKeyBlob,  
    DWORD       *pcbPrivateKeyBlob  
    );






__declspec(dllimport)
BOOL
__stdcall
CryptHashPublicKeyInfo(
     HCRYPTPROV hCryptProv,
     ALG_ID Algid,
     DWORD dwFlags,
     DWORD dwCertEncodingType,
     PCERT_PUBLIC_KEY_INFO pInfo,
     BYTE *pbComputedHash,
      DWORD *pcbComputedHash
    );












__declspec(dllimport)
DWORD
__stdcall
CertRDNValueToStrA(
     DWORD dwValueType,
     PCERT_RDN_VALUE_BLOB pValue,
      LPSTR psz,
     DWORD csz
    );











__declspec(dllimport)
DWORD
__stdcall
CertRDNValueToStrW(
     DWORD dwValueType,
     PCERT_RDN_VALUE_BLOB pValue,
      LPWSTR psz,
     DWORD csz
    );






































































__declspec(dllimport)
DWORD
__stdcall
CertNameToStrA(
     DWORD dwCertEncodingType,
     PCERT_NAME_BLOB pName,
     DWORD dwStrType,
      LPSTR psz,
     DWORD csz
    );


__declspec(dllimport)
DWORD
__stdcall
CertNameToStrW(
     DWORD dwCertEncodingType,
     PCERT_NAME_BLOB pName,
     DWORD dwStrType,
      LPWSTR psz,
     DWORD csz
    );



































































































































__declspec(dllimport)
BOOL
__stdcall
CertStrToNameA(
     DWORD dwCertEncodingType,
     LPCSTR pszX500,
     DWORD dwStrType,
      void *pvReserved,
     BYTE *pbEncoded,
      DWORD *pcbEncoded,
      LPCSTR *ppszError
    );


__declspec(dllimport)
BOOL
__stdcall
CertStrToNameW(
     DWORD dwCertEncodingType,
     LPCWSTR pszX500,
     DWORD dwStrType,
      void *pvReserved,
     BYTE *pbEncoded,
      DWORD *pcbEncoded,
      LPCWSTR *ppszError
    );



































































































__declspec(dllimport)
DWORD
__stdcall
CertGetNameStringA(
     PCCERT_CONTEXT pCertContext,
     DWORD dwType,
     DWORD dwFlags,
     void *pvTypePara,
      LPSTR pszNameString,
     DWORD cchNameString
    );


__declspec(dllimport)
DWORD
__stdcall
CertGetNameStringW(
     PCCERT_CONTEXT pCertContext,
     DWORD dwType,
     DWORD dwFlags,
     void *pvTypePara,
      LPWSTR pszNameString,
     DWORD cchNameString
    );














































































typedef PCCERT_CONTEXT (__stdcall *PFN_CRYPT_GET_SIGNER_CERTIFICATE)(
     void *pvGetArg,
     DWORD dwCertEncodingType,
     PCERT_INFO pSignerId,    
                                
     HCERTSTORE hMsgCertStore
    );




















































typedef struct _CRYPT_SIGN_MESSAGE_PARA {
    DWORD                       cbSize;
    DWORD                       dwMsgEncodingType;
    PCCERT_CONTEXT              pSigningCert;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    void                        *pvHashAuxInfo;
    DWORD                       cMsgCert;
    PCCERT_CONTEXT              *rgpMsgCert;
    DWORD                       cMsgCrl;
    PCCRL_CONTEXT               *rgpMsgCrl;
    DWORD                       cAuthAttr;
    PCRYPT_ATTRIBUTE            rgAuthAttr;
    DWORD                       cUnauthAttr;
    PCRYPT_ATTRIBUTE            rgUnauthAttr;
    DWORD                       dwFlags;
    DWORD                       dwInnerContentType;





} CRYPT_SIGN_MESSAGE_PARA, *PCRYPT_SIGN_MESSAGE_PARA;





























typedef struct _CRYPT_VERIFY_MESSAGE_PARA {
    DWORD                               cbSize;
    DWORD                               dwMsgAndCertEncodingType;
    HCRYPTPROV                          hCryptProv;
    PFN_CRYPT_GET_SIGNER_CERTIFICATE    pfnGetSignerCertificate;
    void                                *pvGetArg;
} CRYPT_VERIFY_MESSAGE_PARA, *PCRYPT_VERIFY_MESSAGE_PARA;








































typedef struct _CRYPT_ENCRYPT_MESSAGE_PARA {
    DWORD                       cbSize;
    DWORD                       dwMsgEncodingType;
    HCRYPTPROV                  hCryptProv;
    CRYPT_ALGORITHM_IDENTIFIER  ContentEncryptionAlgorithm;
    void                        *pvEncryptionAuxInfo;
    DWORD                       dwFlags;
    DWORD                       dwInnerContentType;
} CRYPT_ENCRYPT_MESSAGE_PARA, *PCRYPT_ENCRYPT_MESSAGE_PARA;

























typedef struct _CRYPT_DECRYPT_MESSAGE_PARA {
    DWORD                   cbSize;
    DWORD                   dwMsgAndCertEncodingType;
    DWORD                   cCertStore;
    HCERTSTORE              *rghCertStore;









} CRYPT_DECRYPT_MESSAGE_PARA, *PCRYPT_DECRYPT_MESSAGE_PARA;












typedef struct _CRYPT_HASH_MESSAGE_PARA {
    DWORD                       cbSize;
    DWORD                       dwMsgEncodingType;
    HCRYPTPROV                  hCryptProv;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    void                        *pvHashAuxInfo;
} CRYPT_HASH_MESSAGE_PARA, *PCRYPT_HASH_MESSAGE_PARA;













typedef struct _CRYPT_KEY_SIGN_MESSAGE_PARA {
    DWORD                       cbSize;
    DWORD                       dwMsgAndCertEncodingType;
    HCRYPTPROV                  hCryptProv;
    DWORD                       dwKeySpec;
    CRYPT_ALGORITHM_IDENTIFIER  HashAlgorithm;
    void                        *pvHashAuxInfo;
    CRYPT_ALGORITHM_IDENTIFIER  PubKeyAlgorithm;
} CRYPT_KEY_SIGN_MESSAGE_PARA, *PCRYPT_KEY_SIGN_MESSAGE_PARA;












typedef struct _CRYPT_KEY_VERIFY_MESSAGE_PARA {
    DWORD                   cbSize;
    DWORD                   dwMsgEncodingType;
    HCRYPTPROV              hCryptProv;
} CRYPT_KEY_VERIFY_MESSAGE_PARA, *PCRYPT_KEY_VERIFY_MESSAGE_PARA;








__declspec(dllimport)
BOOL
__stdcall
CryptSignMessage(
     PCRYPT_SIGN_MESSAGE_PARA pSignPara,
     BOOL fDetachedSignature,
     DWORD cToBeSigned,
     const BYTE *rgpbToBeSigned[],
     DWORD rgcbToBeSigned[],
     BYTE *pbSignedBlob,
      DWORD *pcbSignedBlob
    );





































__declspec(dllimport)
BOOL
__stdcall
CryptVerifyMessageSignature(
     PCRYPT_VERIFY_MESSAGE_PARA pVerifyPara,
     DWORD dwSignerIndex,
     const BYTE *pbSignedBlob,
     DWORD cbSignedBlob,
     BYTE  *pbDecoded,
       DWORD *pcbDecoded,
      PCCERT_CONTEXT *ppSignerCert
    );





__declspec(dllimport)
LONG
__stdcall
CryptGetMessageSignerCount(
     DWORD dwMsgEncodingType,
     const BYTE *pbSignedBlob,
     DWORD cbSignedBlob
    );





__declspec(dllimport)
HCERTSTORE
__stdcall
CryptGetMessageCertificates(
     DWORD dwMsgAndCertEncodingType,
     HCRYPTPROV hCryptProv,           
     DWORD dwFlags,                   
     const BYTE *pbSignedBlob,
     DWORD cbSignedBlob
    );






__declspec(dllimport)
BOOL
__stdcall
CryptVerifyDetachedMessageSignature(
     PCRYPT_VERIFY_MESSAGE_PARA pVerifyPara,
     DWORD dwSignerIndex,
     const BYTE *pbDetachedSignBlob,
     DWORD cbDetachedSignBlob,
     DWORD cToBeSigned,
     const BYTE *rgpbToBeSigned[],
     DWORD rgcbToBeSigned[],
      PCCERT_CONTEXT *ppSignerCert
    );




__declspec(dllimport)
BOOL
__stdcall
CryptEncryptMessage(
     PCRYPT_ENCRYPT_MESSAGE_PARA pEncryptPara,
     DWORD cRecipientCert,
     PCCERT_CONTEXT rgpRecipientCert[],
     const BYTE *pbToBeEncrypted,
     DWORD cbToBeEncrypted,
     BYTE *pbEncryptedBlob,
      DWORD *pcbEncryptedBlob
    );















__declspec(dllimport)
BOOL
__stdcall
CryptDecryptMessage(
     PCRYPT_DECRYPT_MESSAGE_PARA pDecryptPara,
     const BYTE *pbEncryptedBlob,
     DWORD cbEncryptedBlob,
      BYTE *pbDecrypted,
       DWORD *pcbDecrypted,
      PCCERT_CONTEXT *ppXchgCert
    );








__declspec(dllimport)
BOOL
__stdcall
CryptSignAndEncryptMessage(
     PCRYPT_SIGN_MESSAGE_PARA pSignPara,
     PCRYPT_ENCRYPT_MESSAGE_PARA pEncryptPara,
     DWORD cRecipientCert,
     PCCERT_CONTEXT rgpRecipientCert[],
     const BYTE *pbToBeSignedAndEncrypted,
     DWORD cbToBeSignedAndEncrypted,
     BYTE *pbSignedAndEncryptedBlob,
      DWORD *pcbSignedAndEncryptedBlob
    );




























__declspec(dllimport)
BOOL
__stdcall
CryptDecryptAndVerifyMessageSignature(
     PCRYPT_DECRYPT_MESSAGE_PARA pDecryptPara,
     PCRYPT_VERIFY_MESSAGE_PARA pVerifyPara,
     DWORD dwSignerIndex,
     const BYTE *pbEncryptedBlob,
     DWORD cbEncryptedBlob,
      BYTE *pbDecrypted,
       DWORD *pcbDecrypted,
      PCCERT_CONTEXT *ppXchgCert,
      PCCERT_CONTEXT *ppSignerCert
    );

































__declspec(dllimport)
BOOL
__stdcall
CryptDecodeMessage(
     DWORD dwMsgTypeFlags,
     PCRYPT_DECRYPT_MESSAGE_PARA pDecryptPara,
     PCRYPT_VERIFY_MESSAGE_PARA pVerifyPara,
     DWORD dwSignerIndex,
     const BYTE *pbEncodedBlob,
     DWORD cbEncodedBlob,
     DWORD dwPrevInnerContentType,
      DWORD *pdwMsgType,
      DWORD *pdwInnerContentType,
      BYTE *pbDecoded,
       DWORD *pcbDecoded,
      PCCERT_CONTEXT *ppXchgCert,
      PCCERT_CONTEXT *ppSignerCert
    );











__declspec(dllimport)
BOOL
__stdcall
CryptHashMessage(
     PCRYPT_HASH_MESSAGE_PARA pHashPara,
     BOOL fDetachedHash,
     DWORD cToBeHashed,
     const BYTE *rgpbToBeHashed[],
     DWORD rgcbToBeHashed[],
      BYTE *pbHashedBlob,
       DWORD *pcbHashedBlob,
      BYTE *pbComputedHash,
       DWORD *pcbComputedHash
    );







__declspec(dllimport)
BOOL
__stdcall
CryptVerifyMessageHash(
     PCRYPT_HASH_MESSAGE_PARA pHashPara,
     BYTE *pbHashedBlob,
     DWORD cbHashedBlob,
      BYTE *pbToBeHashed,
       DWORD *pcbToBeHashed,
      BYTE *pbComputedHash,
       DWORD *pcbComputedHash
    );









__declspec(dllimport)
BOOL
__stdcall
CryptVerifyDetachedMessageHash(
     PCRYPT_HASH_MESSAGE_PARA pHashPara,
     BYTE *pbDetachedHashBlob,
     DWORD cbDetachedHashBlob,
     DWORD cToBeHashed,
     const BYTE *rgpbToBeHashed[],
     DWORD rgcbToBeHashed[],
      BYTE *pbComputedHash,
       DWORD *pcbComputedHash
    );







__declspec(dllimport)
BOOL
__stdcall
CryptSignMessageWithKey(
     PCRYPT_KEY_SIGN_MESSAGE_PARA pSignPara,
     const BYTE *pbToBeSigned,
     DWORD cbToBeSigned,
     BYTE *pbSignedBlob,
      DWORD *pcbSignedBlob
    );














__declspec(dllimport)
BOOL
__stdcall
CryptVerifyMessageSignatureWithKey(
     PCRYPT_KEY_VERIFY_MESSAGE_PARA pVerifyPara,
      PCERT_PUBLIC_KEY_INFO pPublicKeyInfo,
     const BYTE *pbSignedBlob,
     DWORD cbSignedBlob,
      BYTE *pbDecoded,
       DWORD *pcbDecoded
    );




























__declspec(dllimport)
HCERTSTORE
__stdcall
CertOpenSystemStoreA(
    HCRYPTPROV      hProv,
    LPCSTR            szSubsystemProtocol
    );
__declspec(dllimport)
HCERTSTORE
__stdcall
CertOpenSystemStoreW(
    HCRYPTPROV      hProv,
    LPCWSTR            szSubsystemProtocol
    );






__declspec(dllimport)
BOOL
__stdcall
CertAddEncodedCertificateToSystemStoreA(
    LPCSTR            szCertStoreName,
    const BYTE *    pbCertEncoded,
    DWORD           cbCertEncoded
    );
__declspec(dllimport)
BOOL
__stdcall
CertAddEncodedCertificateToSystemStoreW(
    LPCWSTR            szCertStoreName,
    const BYTE *    pbCertEncoded,
    DWORD           cbCertEncoded
    );


















typedef struct _CERT_CHAIN {
    DWORD                   cCerts;     
    PCERT_BLOB              certs;      
                                        
    CRYPT_KEY_PROV_INFO     keyLocatorInfo; 
} CERT_CHAIN, *PCERT_CHAIN;



HRESULT
__stdcall
FindCertsByIssuer(
     PCERT_CHAIN pCertChains,
      DWORD *pcbCertChains,
     DWORD *pcCertChains,        
     BYTE* pbEncodedIssuerName,   
     DWORD cbEncodedIssuerName,   
     LPCWSTR pwszPurpose,         
     DWORD dwKeySpec              
    
    );

































































































































__declspec(dllimport)
BOOL
__stdcall
CryptQueryObject(
    DWORD            dwObjectType,
    const void       *pvObject,
    DWORD            dwExpectedContentTypeFlags,
    DWORD            dwExpectedFormatTypeFlags,
    DWORD            dwFlags,
    DWORD            *pdwMsgAndCertEncodingType,
    DWORD            *pdwContentType,
    DWORD            *pdwFormatType,
    HCERTSTORE       *phCertStore,
    HCRYPTMSG        *phMsg,
    const void       **ppvContext
    );
























































































































































__declspec(dllimport)
LPVOID
__stdcall
CryptMemAlloc (
     ULONG cbSize
    );

__declspec(dllimport)
LPVOID
__stdcall
CryptMemRealloc (
     LPVOID pv,
     ULONG cbSize
    );

__declspec(dllimport)
void
__stdcall
CryptMemFree (
     LPVOID pv
    );








typedef HANDLE HCRYPTASYNC, *PHCRYPTASYNC;

typedef void (__stdcall *PFN_CRYPT_ASYNC_PARAM_FREE_FUNC) (
    LPSTR pszParamOid,
    LPVOID pvParam
    );

__declspec(dllimport)
BOOL
__stdcall
CryptCreateAsyncHandle (
     DWORD dwFlags,
     PHCRYPTASYNC phAsync
    );

__declspec(dllimport)
BOOL
__stdcall
CryptSetAsyncParam (
     HCRYPTASYNC hAsync,
     LPSTR pszParamOid,
     LPVOID pvParam,
      PFN_CRYPT_ASYNC_PARAM_FREE_FUNC pfnFree
    );

__declspec(dllimport)
BOOL
__stdcall
CryptGetAsyncParam (
     HCRYPTASYNC hAsync,
     LPSTR pszParamOid,
     LPVOID* ppvParam,
      PFN_CRYPT_ASYNC_PARAM_FREE_FUNC* ppfnFree
    );

__declspec(dllimport)
BOOL
__stdcall
CryptCloseAsyncHandle (
     HCRYPTASYNC hAsync
    );















typedef struct _CRYPT_BLOB_ARRAY {
    DWORD            cBlob;
    PCRYPT_DATA_BLOB rgBlob;
} CRYPT_BLOB_ARRAY, *PCRYPT_BLOB_ARRAY;

typedef struct _CRYPT_CREDENTIALS {
    DWORD  cbSize;
    LPCSTR pszCredentialsOid;
    LPVOID pvCredentials;
} CRYPT_CREDENTIALS, *PCRYPT_CREDENTIALS;










typedef struct _CRYPT_PASSWORD_CREDENTIALSA {
    DWORD   cbSize;
    LPSTR   pszUsername;
    LPSTR   pszPassword;
} CRYPT_PASSWORD_CREDENTIALSA, *PCRYPT_PASSWORD_CREDENTIALSA;
typedef struct _CRYPT_PASSWORD_CREDENTIALSW {
    DWORD   cbSize;
    LPWSTR  pszUsername;
    LPWSTR  pszPassword;
} CRYPT_PASSWORD_CREDENTIALSW, *PCRYPT_PASSWORD_CREDENTIALSW;




typedef CRYPT_PASSWORD_CREDENTIALSA CRYPT_PASSWORD_CREDENTIALS;
typedef PCRYPT_PASSWORD_CREDENTIALSA PCRYPT_PASSWORD_CREDENTIALS;













typedef void (__stdcall *PFN_FREE_ENCODED_OBJECT_FUNC) (
    LPCSTR pszObjectOid,
    PCRYPT_BLOB_ARRAY pObject,
    LPVOID pvFreeContext
    );


























































































































typedef struct _CRYPT_RETRIEVE_AUX_INFO {
    DWORD       cbSize;
    FILETIME    *pLastSyncTime;
    DWORD       dwMaxUrlRetrievalByteCount;     
} CRYPT_RETRIEVE_AUX_INFO, *PCRYPT_RETRIEVE_AUX_INFO;


__declspec(dllimport)
BOOL
__stdcall
CryptRetrieveObjectByUrlA (
     LPCSTR pszUrl,
     LPCSTR pszObjectOid,
     DWORD dwRetrievalFlags,
     DWORD dwTimeout,                     
     LPVOID* ppvObject,
     HCRYPTASYNC hAsyncRetrieve,
      PCRYPT_CREDENTIALS pCredentials,
      LPVOID pvVerify,
      PCRYPT_RETRIEVE_AUX_INFO pAuxInfo
    );
__declspec(dllimport)
BOOL
__stdcall
CryptRetrieveObjectByUrlW (
     LPCWSTR pszUrl,
     LPCSTR pszObjectOid,
     DWORD dwRetrievalFlags,
     DWORD dwTimeout,                     
     LPVOID* ppvObject,
     HCRYPTASYNC hAsyncRetrieve,
      PCRYPT_CREDENTIALS pCredentials,
      LPVOID pvVerify,
      PCRYPT_RETRIEVE_AUX_INFO pAuxInfo
    );


















typedef BOOL (__stdcall *PFN_CRYPT_CANCEL_RETRIEVAL)(
     DWORD dwFlags,
     void  *pvArg
    );









__declspec(dllimport)
BOOL
__stdcall
CryptInstallCancelRetrieval(
     PFN_CRYPT_CANCEL_RETRIEVAL pfnCancel,
     const void *pvArg,
     DWORD dwFlags,
     void *pvReserved
);


__declspec(dllimport)
BOOL
__stdcall
CryptUninstallCancelRetrieval(
         DWORD dwFlags,
         void  *pvReserved
        );


__declspec(dllimport)
BOOL
__stdcall
CryptCancelAsyncRetrieval (
    HCRYPTASYNC hAsyncRetrieval
    );












typedef void (__stdcall *PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC) (
     LPVOID pvCompletion,
     DWORD dwCompletionCode,
     LPCSTR pszUrl,
     LPSTR pszObjectOid,
     LPVOID pvObject
    );

typedef struct _CRYPT_ASYNC_RETRIEVAL_COMPLETION {
    PFN_CRYPT_ASYNC_RETRIEVAL_COMPLETION_FUNC pfnCompletion;
    LPVOID pvCompletion;
} CRYPT_ASYNC_RETRIEVAL_COMPLETION, *PCRYPT_ASYNC_RETRIEVAL_COMPLETION;








typedef BOOL (__stdcall *PFN_CANCEL_ASYNC_RETRIEVAL_FUNC) (
    HCRYPTASYNC hAsyncRetrieve
    );










typedef struct _CRYPT_URL_ARRAY {
    DWORD   cUrl;
    LPWSTR* rgwszUrl;
} CRYPT_URL_ARRAY, *PCRYPT_URL_ARRAY;

typedef struct _CRYPT_URL_INFO {
    DWORD   cbSize;

    
    DWORD   dwSyncDeltaTime;

    
    
    
    DWORD   cGroup;
    DWORD   *rgcGroupEntry;
} CRYPT_URL_INFO, *PCRYPT_URL_INFO;

__declspec(dllimport)
BOOL
__stdcall
CryptGetObjectUrl (
     LPCSTR pszUrlOid,
     LPVOID pvPara,
     DWORD dwFlags,
      PCRYPT_URL_ARRAY pUrlArray,
      DWORD* pcbUrlArray,
      PCRYPT_URL_INFO pUrlInfo,
       DWORD* pcbUrlInfo,
      LPVOID pvReserved
    );



















































































typedef struct _CERT_CRL_CONTEXT_PAIR {
    PCCERT_CONTEXT          pCertContext;
    PCCRL_CONTEXT           pCrlContext;
} CERT_CRL_CONTEXT_PAIR, *PCERT_CRL_CONTEXT_PAIR;
typedef const CERT_CRL_CONTEXT_PAIR *PCCERT_CRL_CONTEXT_PAIR;





__declspec(dllimport)
BOOL
__stdcall
CryptGetTimeValidObject (
     LPCSTR pszTimeValidOid,
     LPVOID pvPara,
     PCCERT_CONTEXT pIssuer,
      LPFILETIME pftValidFor,
     DWORD dwFlags,
     DWORD dwTimeout,                         
      LPVOID* ppvObject,
      PCRYPT_CREDENTIALS pCredentials,
      LPVOID pvReserved
    );




































__declspec(dllimport)
BOOL
__stdcall
CryptFlushTimeValidObject (
      LPCSTR pszFlushTimeValidOid,
      LPVOID pvPara,
      PCCERT_CONTEXT pIssuer,
      DWORD dwFlags,
      LPVOID pvReserved
     );






















































typedef struct  _CRYPTPROTECT_PROMPTSTRUCT
{
    DWORD cbSize;
    DWORD dwPromptFlags;
    HWND  hwndApp;
    LPCWSTR szPrompt;
} CRYPTPROTECT_PROMPTSTRUCT, *PCRYPTPROTECT_PROMPTSTRUCT;










































































__declspec(dllimport)
BOOL
__stdcall
CryptProtectData(
                  DATA_BLOB*      pDataIn,
                  LPCWSTR         szDataDescr,
          DATA_BLOB*      pOptionalEntropy,
                  PVOID           pvReserved,
          CRYPTPROTECT_PROMPTSTRUCT*  pPromptStruct,
                  DWORD           dwFlags,
                 DATA_BLOB*      pDataOut            
    );

__declspec(dllimport)
BOOL
__stdcall
CryptUnprotectData(
                  DATA_BLOB*      pDataIn,             
         LPWSTR*         ppszDataDescr,       
          DATA_BLOB*      pOptionalEntropy,
                  PVOID           pvReserved,
          CRYPTPROTECT_PROMPTSTRUCT*  pPromptStruct,
                  DWORD           dwFlags,
                 DATA_BLOB*      pDataOut
    );



































__declspec(dllimport)
BOOL
__stdcall
CryptProtectMemory(
               LPVOID          pDataIn,             
                  DWORD           cbDataIn,            
                  DWORD           dwFlags
    );

__declspec(dllimport)
BOOL
__stdcall
CryptUnprotectMemory(
               LPVOID          pDataIn,             
                  DWORD           cbDataIn,            
                  DWORD           dwFlags
    );




































__declspec(dllimport)
PCCERT_CONTEXT
__stdcall
CertCreateSelfSignCertificate(
              HCRYPTPROV                  hProv,
              PCERT_NAME_BLOB             pSubjectIssuerBlob,
              DWORD                       dwFlags,
        PCRYPT_KEY_PROV_INFO        pKeyProvInfo,
        PCRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm,
        PSYSTEMTIME                 pStartTime,
        PSYSTEMTIME                 pEndTime,
        PCERT_EXTENSIONS            pExtensions
    );

































__declspec(dllimport)
BOOL
__stdcall
CryptGetKeyIdentifierProperty(
     const CRYPT_HASH_BLOB *pKeyIdentifier,
     DWORD dwPropId,
     DWORD dwFlags,
      LPCWSTR pwszComputerName,
      void *pvReserved,
     void *pvData,
      DWORD *pcbData
    );





























__declspec(dllimport)
BOOL
__stdcall
CryptSetKeyIdentifierProperty(
     const CRYPT_HASH_BLOB *pKeyIdentifier,
     DWORD dwPropId,
     DWORD dwFlags,
      LPCWSTR pwszComputerName,
      void *pvReserved,
     const void *pvData
    );
















typedef BOOL (__stdcall *PFN_CRYPT_ENUM_KEYID_PROP)(
     const CRYPT_HASH_BLOB *pKeyIdentifier,
     DWORD dwFlags,
     void *pvReserved,
     void *pvArg,
     DWORD cProp,
     DWORD *rgdwPropId,
     void **rgpvData,
     DWORD *rgcbData
    );















__declspec(dllimport)
BOOL
__stdcall
CryptEnumKeyIdentifierProperties(
      const CRYPT_HASH_BLOB *pKeyIdentifier,
     DWORD dwPropId,
     DWORD dwFlags,
      LPCWSTR pwszComputerName,
      void *pvReserved,
      void *pvArg,
     PFN_CRYPT_ENUM_KEYID_PROP pfnEnum
    );












__declspec(dllimport)
BOOL
__stdcall
CryptCreateKeyIdentifierFromCSP(
     DWORD dwCertEncodingType,
      LPCSTR pszPubKeyOID,
     const PUBLICKEYSTRUC *pPubKeyStruc,
     DWORD cbPubKeyStruc,
     DWORD dwFlags,
      void *pvReserved,
     BYTE *pbHash,
      DWORD *pcbHash
    );













































typedef HANDLE HCERTCHAINENGINE;






















































typedef struct _CERT_CHAIN_ENGINE_CONFIG {

    DWORD       cbSize;
    HCERTSTORE  hRestrictedRoot;
    HCERTSTORE  hRestrictedTrust;
    HCERTSTORE  hRestrictedOther;
    DWORD       cAdditionalStore;
    HCERTSTORE* rghAdditionalStore;
    DWORD       dwFlags;
    DWORD       dwUrlRetrievalTimeout;      
    DWORD       MaximumCachedCertificates;
    DWORD       CycleDetectionModulus;

} CERT_CHAIN_ENGINE_CONFIG, *PCERT_CHAIN_ENGINE_CONFIG;

__declspec(dllimport)
BOOL
__stdcall
CertCreateCertificateChainEngine (
     PCERT_CHAIN_ENGINE_CONFIG pConfig,
     HCERTCHAINENGINE* phChainEngine
    );





__declspec(dllimport)
void
__stdcall
CertFreeCertificateChainEngine (
     HCERTCHAINENGINE hChainEngine
    );






__declspec(dllimport)
BOOL
__stdcall
CertResyncCertificateChainEngine (
     HCERTCHAINENGINE hChainEngine
    );















typedef struct _CERT_TRUST_STATUS {

    DWORD dwErrorStatus;
    DWORD dwInfoStatus;

} CERT_TRUST_STATUS, *PCERT_TRUST_STATUS;














































































typedef struct _CERT_REVOCATION_INFO {

    DWORD                       cbSize;
    DWORD                       dwRevocationResult;
    LPCSTR                      pszRevocationOid;
    LPVOID                      pvOidSpecificInfo;

    
    
    BOOL                        fHasFreshnessTime;
    DWORD                       dwFreshnessTime;    

    
    PCERT_REVOCATION_CRL_INFO   pCrlInfo;

} CERT_REVOCATION_INFO, *PCERT_REVOCATION_INFO;





typedef struct _CERT_TRUST_LIST_INFO {

    DWORD         cbSize;
    PCTL_ENTRY    pCtlEntry;
    PCCTL_CONTEXT pCtlContext;

} CERT_TRUST_LIST_INFO, *PCERT_TRUST_LIST_INFO;





typedef struct _CERT_CHAIN_ELEMENT {

    DWORD                 cbSize;
    PCCERT_CONTEXT        pCertContext;
    CERT_TRUST_STATUS     TrustStatus;
    PCERT_REVOCATION_INFO pRevocationInfo;

    PCERT_ENHKEY_USAGE    pIssuanceUsage;       
    PCERT_ENHKEY_USAGE    pApplicationUsage;    

    LPCWSTR               pwszExtendedErrorInfo;    

} CERT_CHAIN_ELEMENT, *PCERT_CHAIN_ELEMENT;










typedef struct _CERT_SIMPLE_CHAIN {

    DWORD                 cbSize;
    CERT_TRUST_STATUS     TrustStatus;
    DWORD                 cElement;
    PCERT_CHAIN_ELEMENT*  rgpElement;
    PCERT_TRUST_LIST_INFO pTrustListInfo;

    
    
    
    
    
    
    BOOL                   fHasRevocationFreshnessTime;
    DWORD                  dwRevocationFreshnessTime;    

} CERT_SIMPLE_CHAIN, *PCERT_SIMPLE_CHAIN;











typedef struct _CERT_CHAIN_CONTEXT CERT_CHAIN_CONTEXT, *PCERT_CHAIN_CONTEXT;
typedef const CERT_CHAIN_CONTEXT *PCCERT_CHAIN_CONTEXT;

struct _CERT_CHAIN_CONTEXT {
    DWORD                   cbSize;
    CERT_TRUST_STATUS       TrustStatus;
    DWORD                   cChain;
    PCERT_SIMPLE_CHAIN*     rgpChain;

    
    
    DWORD                   cLowerQualityChainContext;
    PCCERT_CHAIN_CONTEXT*   rgpLowerQualityChainContext;

    
    
    
    
    
    
    BOOL                    fHasRevocationFreshnessTime;
    DWORD                   dwRevocationFreshnessTime;    
};












typedef struct _CERT_USAGE_MATCH {

    DWORD             dwType;
    CERT_ENHKEY_USAGE Usage;

} CERT_USAGE_MATCH, *PCERT_USAGE_MATCH;

typedef struct _CTL_USAGE_MATCH {

    DWORD     dwType;
    CTL_USAGE Usage;

} CTL_USAGE_MATCH, *PCTL_USAGE_MATCH;

typedef struct _CERT_CHAIN_PARA {

    DWORD            cbSize;
    CERT_USAGE_MATCH RequestedUsage;














} CERT_CHAIN_PARA, *PCERT_CHAIN_PARA;

































































__declspec(dllimport)
BOOL
__stdcall
CertGetCertificateChain (
      HCERTCHAINENGINE hChainEngine,
     PCCERT_CONTEXT pCertContext,
      LPFILETIME pTime,
      HCERTSTORE hAdditionalStore,
     PCERT_CHAIN_PARA pChainPara,
     DWORD dwFlags,
     LPVOID pvReserved,
     PCCERT_CHAIN_CONTEXT* ppChainContext
    );





__declspec(dllimport)
void
__stdcall
CertFreeCertificateChain (
     PCCERT_CHAIN_CONTEXT pChainContext
    );





__declspec(dllimport)
PCCERT_CHAIN_CONTEXT
__stdcall
CertDuplicateCertificateChain (
     PCCERT_CHAIN_CONTEXT pChainContext
    );



















typedef struct _CRL_REVOCATION_INFO {

    PCRL_ENTRY           pCrlEntry;
    PCCRL_CONTEXT        pCrlContext;
    PCCERT_CHAIN_CONTEXT pCrlIssuerChain;

} CRL_REVOCATION_INFO, *PCRL_REVOCATION_INFO;






















__declspec(dllimport)
PCCERT_CHAIN_CONTEXT
__stdcall
CertFindChainInStore(
     HCERTSTORE hCertStore,
     DWORD dwCertEncodingType,
     DWORD dwFindFlags,
     DWORD dwFindType,
     const void *pvFindPara,
     PCCERT_CHAIN_CONTEXT pPrevChainContext
    );
















































typedef BOOL (__stdcall *PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK)(
     PCCERT_CONTEXT pCert,
     void *pvFindArg
    );

typedef struct _CERT_CHAIN_FIND_BY_ISSUER_PARA {
    DWORD                                   cbSize;

    
    LPCSTR                                  pszUsageIdentifier;

    
    DWORD                                   dwKeySpec;

    
    
    
    
    
    DWORD                                   dwAcquirePrivateKeyFlags;

    
    
    DWORD                                   cIssuer;
    CERT_NAME_BLOB                          *rgIssuer;

    
    
    
    PFN_CERT_CHAIN_FIND_BY_ISSUER_CALLBACK pfnFindCallback;
    void                                    *pvFindArg;





















} CERT_CHAIN_FIND_ISSUER_PARA, *PCERT_CHAIN_FIND_ISSUER_PARA,
    CERT_CHAIN_FIND_BY_ISSUER_PARA, *PCERT_CHAIN_FIND_BY_ISSUER_PARA;






































typedef struct _CERT_CHAIN_POLICY_PARA {
    DWORD                   cbSize;
    DWORD                   dwFlags;
    void                    *pvExtraPolicyPara;     
} CERT_CHAIN_POLICY_PARA, *PCERT_CHAIN_POLICY_PARA;






typedef struct _CERT_CHAIN_POLICY_STATUS {
    DWORD                   cbSize;
    DWORD                   dwError;
    LONG                    lChainIndex;
    LONG                    lElementIndex;
    void                    *pvExtraPolicyStatus;   
} CERT_CHAIN_POLICY_STATUS, *PCERT_CHAIN_POLICY_STATUS;

























































__declspec(dllimport)
BOOL
__stdcall
CertVerifyCertificateChainPolicy(
     LPCSTR pszPolicyOID,
     PCCERT_CHAIN_CONTEXT pChainContext,
     PCERT_CHAIN_POLICY_PARA pPolicyPara,
      PCERT_CHAIN_POLICY_STATUS pPolicyStatus
    );







































typedef struct _AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA {
    DWORD               cbSize;
    DWORD               dwRegPolicySettings;
    PCMSG_SIGNER_INFO   pSignerInfo;                
} AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA,
    *PAUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_PARA;

typedef struct _AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS {
    DWORD               cbSize;
    BOOL                fCommercial;        
} AUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS,
    *PAUTHENTICODE_EXTRA_CERT_CHAIN_POLICY_STATUS;













typedef struct _AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA {
    DWORD               cbSize;
    DWORD               dwRegPolicySettings;
    BOOL                fCommercial;
} AUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA,
    *PAUTHENTICODE_TS_EXTRA_CERT_CHAIN_POLICY_PARA;












typedef struct _HTTPSPolicyCallbackData
{
    union {
        DWORD           cbStruct;       
        DWORD           cbSize;         
    };

    DWORD           dwAuthType;



    DWORD           fdwChecks;

    WCHAR           *pwszServerName; 

} HTTPSPolicyCallbackData, *PHTTPSPolicyCallbackData,
    SSL_EXTRA_CERT_CHAIN_POLICY_PARA, *PSSL_EXTRA_CERT_CHAIN_POLICY_PARA;
























































































__declspec(dllimport)
BOOL
__stdcall
CryptStringToBinaryA(
         LPCSTR  pszString,
         DWORD     cchString,
         DWORD     dwFlags,
         BYTE     *pbBinary,
      DWORD    *pcbBinary,
        DWORD    *pdwSkip,    
        DWORD    *pdwFlags    
    );









__declspec(dllimport)
BOOL
__stdcall
CryptStringToBinaryW(
         LPCWSTR  pszString,
         DWORD     cchString,
         DWORD     dwFlags,
         BYTE     *pbBinary,
      DWORD    *pcbBinary,
        DWORD    *pdwSkip,    
        DWORD    *pdwFlags    
    );












__declspec(dllimport)
BOOL
__stdcall
CryptBinaryToStringA(
         const BYTE  *pbBinary,
         DWORD        cbBinary,
         DWORD        dwFlags,
         LPSTR      pszString,
      DWORD       *pcchString
    );






__declspec(dllimport)
BOOL
__stdcall
CryptBinaryToStringW(
         const BYTE  *pbBinary,
         DWORD        cbBinary,
         DWORD        dwFlags,
         LPWSTR      pszString,
      DWORD       *pcchString
    );














































































__declspec(dllimport)
HCERTSTORE
__stdcall
PFXImportCertStore(
     CRYPT_DATA_BLOB* pPFX,
     LPCWSTR szPassword,
     DWORD   dwFlags);


















__declspec(dllimport)
BOOL
__stdcall
PFXIsPFXBlob(
     CRYPT_DATA_BLOB* pPFX);













__declspec(dllimport)
BOOL 
__stdcall
PFXVerifyPassword(
     CRYPT_DATA_BLOB* pPFX,
     LPCWSTR szPassword,
     DWORD dwFlags);


























__declspec(dllimport)
BOOL
__stdcall
PFXExportCertStoreEx(
     HCERTSTORE hStore,
      CRYPT_DATA_BLOB* pPFX,
     LPCWSTR szPassword,
     void*   pvReserved,
     DWORD   dwFlags);

















__declspec(dllimport)
BOOL
__stdcall
PFXExportCertStore(
     HCERTSTORE hStore,
      CRYPT_DATA_BLOB* pPFX,
     LPCWSTR szPassword,
     DWORD   dwFlags);





}       






#pragma warning(pop)



























#pragma once




extern "C" {





















typedef struct _CERTIFICATE_BLOB {

    DWORD   dwCertEncodingType;





    DWORD   cbData;




    PBYTE    pbData;

} EFS_CERTIFICATE_BLOB, *PEFS_CERTIFICATE_BLOB;






typedef struct _EFS_HASH_BLOB {




    DWORD   cbData;




    PBYTE    pbData;

} EFS_HASH_BLOB, *PEFS_HASH_BLOB;






typedef struct _EFS_RPC_BLOB {




    DWORD   cbData;




    PBYTE    pbData;

} EFS_RPC_BLOB, *PEFS_RPC_BLOB;

typedef struct _EFS_KEY_INFO {

    DWORD   dwVersion;
    ULONG   Entropy;
    ALG_ID  Algorithm;
    ULONG   KeyLength;
    
} EFS_KEY_INFO, *PEFS_KEY_INFO;







typedef struct _ENCRYPTION_CERTIFICATE {
    DWORD cbTotalLength;
    SID * pUserSid;
    PEFS_CERTIFICATE_BLOB pCertBlob;
} ENCRYPTION_CERTIFICATE, *PENCRYPTION_CERTIFICATE;




typedef struct _ENCRYPTION_CERTIFICATE_HASH {
    DWORD cbTotalLength;
    SID * pUserSid;
    PEFS_HASH_BLOB  pHash;




    LPWSTR lpDisplayInformation;

} ENCRYPTION_CERTIFICATE_HASH, *PENCRYPTION_CERTIFICATE_HASH;







typedef struct _ENCRYPTION_CERTIFICATE_HASH_LIST {



    DWORD nCert_Hash;



     PENCRYPTION_CERTIFICATE_HASH * pUsers;
} ENCRYPTION_CERTIFICATE_HASH_LIST, *PENCRYPTION_CERTIFICATE_HASH_LIST;



typedef struct _ENCRYPTION_CERTIFICATE_LIST {    



    DWORD nUsers;



     PENCRYPTION_CERTIFICATE * pUsers;
} ENCRYPTION_CERTIFICATE_LIST, *PENCRYPTION_CERTIFICATE_LIST;













__declspec(dllimport)
DWORD
__stdcall
QueryUsersOnEncryptedFile(
          LPCWSTR lpFileName,
          PENCRYPTION_CERTIFICATE_HASH_LIST * pUsers
    );


__declspec(dllimport)
DWORD
__stdcall
QueryRecoveryAgentsOnEncryptedFile(
          LPCWSTR lpFileName,
          PENCRYPTION_CERTIFICATE_HASH_LIST * pRecoveryAgents
    );


__declspec(dllimport)
DWORD
__stdcall
RemoveUsersFromEncryptedFile(
          LPCWSTR lpFileName,
          PENCRYPTION_CERTIFICATE_HASH_LIST pHashes
    );

__declspec(dllimport)
DWORD
__stdcall
AddUsersToEncryptedFile(
          LPCWSTR lpFileName,
          PENCRYPTION_CERTIFICATE_LIST pUsers
    );

__declspec(dllimport)
DWORD
__stdcall
SetUserFileEncryptionKey(
           PENCRYPTION_CERTIFICATE pEncryptionCertificate
    );


__declspec(dllimport)
void
__stdcall
FreeEncryptionCertificateHashList(
           PENCRYPTION_CERTIFICATE_HASH_LIST pHashes
    );

__declspec(dllimport)
BOOL
__stdcall
EncryptionDisable(
         LPCWSTR DirPath,
         BOOL Disable
    );


__declspec(dllimport)
DWORD
__stdcall
DuplicateEncryptionInfoFile(
          LPCWSTR SrcFileName,
          LPCWSTR DstFileName, 
          DWORD dwCreationDistribution, 
          DWORD dwAttributes, 
          const LPSECURITY_ATTRIBUTES lpSecurityAttributes
     );


}       































#pragma once








 










#pragma warning( disable: 4049 )  




































#pragma once



    





























#pragma warning(disable:4103)

#pragma pack(push,8)





























#pragma once



extern "C" {


typedef struct
{
   RPC_NS_HANDLE        LookupContext;
   RPC_BINDING_HANDLE   ProposedHandle;
   RPC_BINDING_VECTOR * Bindings;

} RPC_IMPORT_CONTEXT_P, * PRPC_IMPORT_CONTEXT_P;




__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsGetBuffer(
     PRPC_MESSAGE Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcNsSendReceive(
     PRPC_MESSAGE Message,
     RPC_BINDING_HANDLE  * Handle
    );

__declspec(dllimport)
void
__stdcall
I_RpcNsRaiseException(
     PRPC_MESSAGE Message,
     RPC_STATUS Status
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_RpcReBindBuffer(
     PRPC_MESSAGE Message
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_NsServerBindSearch(
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
I_NsClientBindSearch(
    );

__declspec(dllimport)
void
__stdcall
I_NsClientBindDone(
    );


}







extern "C" {




































































































typedef unsigned char byte;
typedef byte cs_byte;
typedef unsigned char boolean;










































void  * __stdcall MIDL_user_allocate(size_t);
void             __stdcall MIDL_user_free( void  * );























typedef void  * NDR_CCONTEXT;

typedef struct
    {
    void  * pad[2];
    void  * userContext;
    }  * NDR_SCONTEXT;





typedef void (__stdcall  * NDR_RUNDOWN)(void  * context);

typedef void (__stdcall  * NDR_NOTIFY_ROUTINE)(void);
typedef void (__stdcall  * NDR_NOTIFY2_ROUTINE)(boolean flag);

typedef struct _SCONTEXT_QUEUE {
    unsigned long   NumberOfObjects;
    NDR_SCONTEXT  * ArrayOfObjects;
    } SCONTEXT_QUEUE,  * PSCONTEXT_QUEUE;

__declspec(dllimport)
RPC_BINDING_HANDLE
__stdcall
NDRCContextBinding (
     NDR_CCONTEXT     CContext
    );

__declspec(dllimport)
void
__stdcall
NDRCContextMarshall (
      NDR_CCONTEXT    CContext,
     void  *pBuff
    );

__declspec(dllimport)
void
__stdcall
NDRCContextUnmarshall (
     NDR_CCONTEXT        *   pCContext,
      RPC_BINDING_HANDLE      hBinding,
      void                *   pBuff,
      unsigned long           DataRepresentation
    );

__declspec(dllimport)
void
__stdcall
NDRSContextMarshall (
      NDR_SCONTEXT    CContext,
     void          * pBuff,
      NDR_RUNDOWN     userRunDownIn
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NDRSContextUnmarshall (
      void          * pBuff,
      unsigned long   DataRepresentation
    );

__declspec(dllimport)
void
__stdcall
NDRSContextMarshallEx (
      RPC_BINDING_HANDLE  BindingHandle,
      NDR_SCONTEXT        CContext,
     void              * pBuff,
      NDR_RUNDOWN         userRunDownIn
    );

__declspec(dllimport)
void
__stdcall
NDRSContextMarshall2 (
      RPC_BINDING_HANDLE  BindingHandle,
      NDR_SCONTEXT        CContext,
     void              * pBuff,
      NDR_RUNDOWN         userRunDownIn,
      void              * CtxGuard,
     unsigned long        Flags
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NDRSContextUnmarshallEx (
      RPC_BINDING_HANDLE  BindingHandle,
      void              * pBuff,
      unsigned long       DataRepresentation
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NDRSContextUnmarshall2(
      RPC_BINDING_HANDLE  BindingHandle,
      void              * pBuff,
      unsigned long       DataRepresentation,
      void              * CtxGuard,
     unsigned long        Flags
    );

__declspec(dllimport)
void
__stdcall
RpcSsDestroyClientContext (
     void  *  * ContextHandle
    );






































































typedef unsigned long error_status_t;

















































































struct _MIDL_STUB_MESSAGE;
struct _MIDL_STUB_DESC;
struct _FULL_PTR_XLAT_TABLES;

typedef unsigned char  *    RPC_BUFPTR;
typedef unsigned long       RPC_LENGTH;


typedef void (__stdcall  * EXPR_EVAL)( struct _MIDL_STUB_MESSAGE  * );

typedef const unsigned char  * PFORMAT_STRING;




typedef struct
    {
    long              Dimension;

    
    unsigned long  *  BufferConformanceMark;
    unsigned long  *  BufferVarianceMark;

    
    unsigned long  *  MaxCountArray;
    unsigned long  *  OffsetArray;
    unsigned long  *  ActualCountArray;
    } ARRAY_INFO,  *PARRAY_INFO;


typedef struct _NDR_ASYNC_MESSAGE *   PNDR_ASYNC_MESSAGE;
typedef struct _NDR_CORRELATION_INFO *PNDR_CORRELATION_INFO;





typedef struct
    {
    unsigned long   WireCodeset;
    unsigned long   DesiredReceivingCodeset;
    void           *CSArrayInfo;
    } CS_STUB_INFO;





typedef const unsigned char  * PFORMAT_STRING;
typedef struct _MIDL_SYNTAX_INFO MIDL_SYNTAX_INFO, *PMIDL_SYNTAX_INFO;

struct NDR_ALLOC_ALL_NODES_CONTEXT;
struct NDR_POINTER_QUEUE_STATE;
struct _NDR_PROC_CONTEXT;

typedef struct _MIDL_STUB_MESSAGE
    {
    
    PRPC_MESSAGE            RpcMsg;

    
    unsigned char       *   Buffer;

    



    unsigned char       *   BufferStart;
    unsigned char       *   BufferEnd;

    






    unsigned char       *   BufferMark;

    
    unsigned long           BufferLength;

    
    unsigned long           MemorySize;

    
    unsigned char       *   Memory;

    
    unsigned char           IsClient;
    unsigned char           Pad;
    unsigned short          uFlags2;

    
    int                     ReuseBuffer;

    
    struct NDR_ALLOC_ALL_NODES_CONTEXT *pAllocAllNodesContext;
    struct NDR_POINTER_QUEUE_STATE     *pPointerQueueState;

    



    
    int                     IgnoreEmbeddedPointers;

    



    unsigned char       *   PointerBufferMark;

    


    unsigned char           fBufferValid;

    unsigned char           uFlags;
    unsigned short          UniquePtrCount;

    



    ULONG_PTR               MaxCount;

    



    unsigned long           Offset;

    



    unsigned long           ActualCount;

    
    void  *                 ( __stdcall * pfnAllocate)(size_t);
    void                    ( __stdcall * pfnFree)(void  *);

    





    unsigned char       *   StackTop;

    



    unsigned char       *   pPresentedType;
    unsigned char       *   pTransmitType;

    







    handle_t                SavedHandle;

    


    const struct _MIDL_STUB_DESC  * StubDesc;

    


    struct _FULL_PTR_XLAT_TABLES  * FullPtrXlatTables;
    unsigned long                   FullPtrRefId;

    unsigned long                   PointerLength;

    int                             fInDontFree       :1;
    int                             fDontCallFreeInst :1;
    int                             fInOnlyParam      :1;
    int                             fHasReturn        :1;
    int                             fHasExtensions    :1;
    int                             fHasNewCorrDesc   :1;
    int                             fIsOicfServer    :1;
    int                             fHasMemoryValidateCallback: 1;
    int                             fUnused           :8;
    int                             fUnused2          :16;


    unsigned long                   dwDestContext;
    void  *                         pvDestContext;

    NDR_SCONTEXT *                  SavedContextHandles;

    long                            ParamNumber;

    struct IRpcChannelBuffer    *   pRpcChannelBuffer;

    PARRAY_INFO                     pArrayInfo;
    unsigned long           *       SizePtrCountArray;
    unsigned long           *       SizePtrOffsetArray;
    unsigned long           *       SizePtrLengthArray;

    


    void                    *       pArgQueue;

    unsigned long                   dwStubPhase;

    void                    *       LowStackMark;

    


    PNDR_ASYNC_MESSAGE              pAsyncMsg;
    PNDR_CORRELATION_INFO           pCorrInfo;
    unsigned char *                 pCorrMemory;

    void *                          pMemoryList;

    





    



    CS_STUB_INFO *                  pCSInfo;

    unsigned char *                 ConformanceMark;
    unsigned char *                 VarianceMark;




    INT_PTR                         Unused;


    struct _NDR_PROC_CONTEXT *      pContext;

    




    void *                             pUserMarshalList;
    INT_PTR                         Reserved51_2;
    INT_PTR                         Reserved51_3;
    INT_PTR                         Reserved51_4;
    INT_PTR                         Reserved51_5;


    


    } MIDL_STUB_MESSAGE,  *PMIDL_STUB_MESSAGE;


typedef  struct _MIDL_STUB_MESSAGE MIDL_STUB_MESSAGE,   *PMIDL_STUB_MESSAGE;




typedef void  *
        ( __stdcall * GENERIC_BINDING_ROUTINE)
        (void  *);
typedef void
        ( __stdcall * GENERIC_UNBIND_ROUTINE)
        (void  *, unsigned char  *);

typedef struct _GENERIC_BINDING_ROUTINE_PAIR
    {
    GENERIC_BINDING_ROUTINE     pfnBind;
    GENERIC_UNBIND_ROUTINE      pfnUnbind;
    } GENERIC_BINDING_ROUTINE_PAIR,  *PGENERIC_BINDING_ROUTINE_PAIR;

typedef struct __GENERIC_BINDING_INFO
    {
    void  *            pObj;
    unsigned int                Size;
    GENERIC_BINDING_ROUTINE     pfnBind;
    GENERIC_UNBIND_ROUTINE      pfnUnbind;
    } GENERIC_BINDING_INFO,  *PGENERIC_BINDING_INFO;












typedef void ( __stdcall * XMIT_HELPER_ROUTINE)
    ( PMIDL_STUB_MESSAGE );

typedef struct _XMIT_ROUTINE_QUINTUPLE
    {
    XMIT_HELPER_ROUTINE     pfnTranslateToXmit;
    XMIT_HELPER_ROUTINE     pfnTranslateFromXmit;
    XMIT_HELPER_ROUTINE     pfnFreeXmit;
    XMIT_HELPER_ROUTINE     pfnFreeInst;
    } XMIT_ROUTINE_QUINTUPLE,  *PXMIT_ROUTINE_QUINTUPLE;

typedef unsigned long
( __stdcall * USER_MARSHAL_SIZING_ROUTINE)
    (unsigned long  *,
     unsigned long,
     void  * );

typedef unsigned char  *
( __stdcall * USER_MARSHAL_MARSHALLING_ROUTINE)
    (unsigned long  *,
     unsigned char  * ,
     void  * );

typedef unsigned char  *
( __stdcall * USER_MARSHAL_UNMARSHALLING_ROUTINE)
    (unsigned long  *,
     unsigned char  *,
     void  * );

typedef void ( __stdcall * USER_MARSHAL_FREEING_ROUTINE)
    (unsigned long  *,
     void  * );

typedef struct _USER_MARSHAL_ROUTINE_QUADRUPLE
    {
    USER_MARSHAL_SIZING_ROUTINE          pfnBufferSize;
    USER_MARSHAL_MARSHALLING_ROUTINE     pfnMarshall;
    USER_MARSHAL_UNMARSHALLING_ROUTINE   pfnUnmarshall;
    USER_MARSHAL_FREEING_ROUTINE         pfnFree;
    } USER_MARSHAL_ROUTINE_QUADRUPLE;



typedef enum _USER_MARSHAL_CB_TYPE
{
    USER_MARSHAL_CB_BUFFER_SIZE,
    USER_MARSHAL_CB_MARSHALL,
    USER_MARSHAL_CB_UNMARSHALL,
    USER_MARSHAL_CB_FREE
} USER_MARSHAL_CB_TYPE;

typedef struct _USER_MARSHAL_CB
{
    unsigned long           Flags;
    PMIDL_STUB_MESSAGE      pStubMsg;
    PFORMAT_STRING          pReserve;
    unsigned long           Signature;
    USER_MARSHAL_CB_TYPE    CBType;
    PFORMAT_STRING          pFormat;
    PFORMAT_STRING          pTypeFormat;
} USER_MARSHAL_CB;









typedef struct _MALLOC_FREE_STRUCT
    {
    void  *     ( __stdcall * pfnAllocate)(size_t);
    void        ( __stdcall * pfnFree)(void  *);
    } MALLOC_FREE_STRUCT;

typedef struct _COMM_FAULT_OFFSETS
    {
    short       CommOffset;
    short       FaultOffset;
    } COMM_FAULT_OFFSETS;





typedef enum _IDL_CS_CONVERT
    {
    IDL_CS_NO_CONVERT,
    IDL_CS_IN_PLACE_CONVERT,
    IDL_CS_NEW_BUFFER_CONVERT
    } IDL_CS_CONVERT;

typedef void
( __stdcall * CS_TYPE_NET_SIZE_ROUTINE)
    (RPC_BINDING_HANDLE     hBinding,
     unsigned long          ulNetworkCodeSet,
     unsigned long          ulLocalBufferSize,
     IDL_CS_CONVERT     *   conversionType,
     unsigned long      *   pulNetworkBufferSize,
     error_status_t     *   pStatus);

typedef void
( __stdcall * CS_TYPE_LOCAL_SIZE_ROUTINE)
    (RPC_BINDING_HANDLE     hBinding,
     unsigned long          ulNetworkCodeSet,
     unsigned long          ulNetworkBufferSize,
     IDL_CS_CONVERT     *   conversionType,
     unsigned long      *   pulLocalBufferSize,
     error_status_t     *   pStatus);

typedef void
( __stdcall * CS_TYPE_TO_NETCS_ROUTINE)
    (RPC_BINDING_HANDLE     hBinding,
     unsigned long          ulNetworkCodeSet,
     void               *   pLocalData,
     unsigned long          ulLocalDataLength,
     byte               *   pNetworkData,
     unsigned long      *   pulNetworkDataLength,
     error_status_t     *   pStatus);

typedef void
( __stdcall * CS_TYPE_FROM_NETCS_ROUTINE)
    (RPC_BINDING_HANDLE     hBinding,
     unsigned long          ulNetworkCodeSet,
     byte               *   pNetworkData,
     unsigned long          ulNetworkDataLength,
     unsigned long          ulLocalBufferSize,
     void               *   pLocalData,
     unsigned long      *   pulLocalDataLength,
     error_status_t     *   pStatus);

typedef void
( __stdcall * CS_TAG_GETTING_ROUTINE)
    (RPC_BINDING_HANDLE     hBinding,
     int                    fServerSide,
     unsigned long      *   pulSendingTag,
     unsigned long      *   pulDesiredReceivingTag,
     unsigned long      *   pulReceivingTag,
     error_status_t     *   pStatus);

void __stdcall
RpcCsGetTags(
     RPC_BINDING_HANDLE     hBinding,
     int                    fServerSide,
     unsigned long      *   pulSendingTag,
     unsigned long      *   pulDesiredReceivingTag,
     unsigned long      *   pulReceivingTag,
     error_status_t     *   pStatus);

typedef struct _NDR_CS_SIZE_CONVERT_ROUTINES
    {
    CS_TYPE_NET_SIZE_ROUTINE    pfnNetSize;
    CS_TYPE_TO_NETCS_ROUTINE    pfnToNetCs;
    CS_TYPE_LOCAL_SIZE_ROUTINE  pfnLocalSize;
    CS_TYPE_FROM_NETCS_ROUTINE  pfnFromNetCs;
    } NDR_CS_SIZE_CONVERT_ROUTINES;

typedef struct _NDR_CS_ROUTINES
    {
    NDR_CS_SIZE_CONVERT_ROUTINES   *pSizeConvertRoutines;
    CS_TAG_GETTING_ROUTINE         *pTagGettingRoutines;
    } NDR_CS_ROUTINES;





typedef struct _MIDL_STUB_DESC
    {
    void  *    RpcInterfaceInformation;

    void  *    ( __stdcall * pfnAllocate)(size_t);
    void       ( __stdcall * pfnFree)(void  *);

    union
        {
        handle_t  *             pAutoHandle;
        handle_t  *             pPrimitiveHandle;
        PGENERIC_BINDING_INFO   pGenericBindingInfo;
        } IMPLICIT_HANDLE_INFO;

    const NDR_RUNDOWN  *                    apfnNdrRundownRoutines;
    const GENERIC_BINDING_ROUTINE_PAIR  *   aGenericBindingRoutinePairs;
    const EXPR_EVAL  *                      apfnExprEval;
    const XMIT_ROUTINE_QUINTUPLE  *         aXmitQuintuple;

    const unsigned char  *                  pFormatTypes;

    int                                     fCheckBounds;

    
    unsigned long                           Version;

    MALLOC_FREE_STRUCT  *                   pMallocFreeStruct;

    long                                    MIDLVersion;

    const COMM_FAULT_OFFSETS  *    CommFaultOffsets;

    
    const USER_MARSHAL_ROUTINE_QUADRUPLE  * aUserMarshalQuadruple;

    
    const NDR_NOTIFY_ROUTINE  *             NotifyRoutineTable;

    



    ULONG_PTR                               mFlags;

    
    const NDR_CS_ROUTINES *                 CsRoutineTables;

    void *                                  Reserved4;
    ULONG_PTR                               Reserved5;

    

    } MIDL_STUB_DESC;


typedef const MIDL_STUB_DESC  * PMIDL_STUB_DESC;

typedef void  * PMIDL_XMIT_TYPE;






#pragma warning(push)

#pragma warning( disable:4200 )

typedef struct _MIDL_FORMAT_STRING
    {
    short               Pad;
    unsigned char       Format[];
    } MIDL_FORMAT_STRING;


#pragma warning(pop)








typedef void ( __stdcall * STUB_THUNK)( PMIDL_STUB_MESSAGE );

typedef long ( __stdcall * SERVER_ROUTINE)();




typedef struct  _MIDL_SERVER_INFO_
    {
    PMIDL_STUB_DESC                     pStubDesc;
    const SERVER_ROUTINE     *          DispatchTable;
    PFORMAT_STRING                      ProcString;
    const unsigned short *              FmtStringOffset;
    const STUB_THUNK *                  ThunkTable;
    PRPC_SYNTAX_IDENTIFIER              pTransferSyntax;
    ULONG_PTR                           nCount;
    PMIDL_SYNTAX_INFO                   pSyntaxInfo;
    } MIDL_SERVER_INFO, *PMIDL_SERVER_INFO;






typedef struct _MIDL_STUBLESS_PROXY_INFO
    {
    PMIDL_STUB_DESC                     pStubDesc;
    PFORMAT_STRING                      ProcFormatString;
    const unsigned short            *   FormatStringOffset;
    PRPC_SYNTAX_IDENTIFIER              pTransferSyntax;
    ULONG_PTR                           nCount;
    PMIDL_SYNTAX_INFO                   pSyntaxInfo;
    } MIDL_STUBLESS_PROXY_INFO;

typedef MIDL_STUBLESS_PROXY_INFO  * PMIDL_STUBLESS_PROXY_INFO;




typedef struct _MIDL_SYNTAX_INFO
{
RPC_SYNTAX_IDENTIFIER               TransferSyntax;
RPC_DISPATCH_TABLE *                DispatchTable;
PFORMAT_STRING                      ProcString;
const unsigned short *              FmtStringOffset;
PFORMAT_STRING                      TypeString;
const void           *              aUserMarshalQuadruple;
ULONG_PTR                           pReserved1;
ULONG_PTR                           pReserved2;
} MIDL_SYNTAX_INFO, *PMIDL_SYNTAX_INFO;

typedef unsigned short * PARAM_OFFSETTABLE, *PPARAM_OFFSETTABLE;




typedef union _CLIENT_CALL_RETURN
    {
    void  *         Pointer;
    LONG_PTR        Simple;
    } CLIENT_CALL_RETURN;





typedef enum
        {
        XLAT_SERVER = 1,
        XLAT_CLIENT
        } XLAT_SIDE;





typedef struct _FULL_PTR_TO_REFID_ELEMENT
    {
    struct _FULL_PTR_TO_REFID_ELEMENT  *  Next;

    void  *             Pointer;
    unsigned long       RefId;
    unsigned char       State;
    } FULL_PTR_TO_REFID_ELEMENT,  *PFULL_PTR_TO_REFID_ELEMENT;




typedef struct _FULL_PTR_XLAT_TABLES
    {
    


    struct
        {
        void  * *           XlatTable;
        unsigned char  *    StateTable;
        unsigned long       NumberOfEntries;
        } RefIdToPointer;

    


    struct
        {
        PFULL_PTR_TO_REFID_ELEMENT  *   XlatTable;
        unsigned long                   NumberOfBuckets;
        unsigned long                   HashMask;
        } PointerToRefId;

    


    unsigned long           NextRefId;

    






    XLAT_SIDE               XlatSide;
    } FULL_PTR_XLAT_TABLES,  *PFULL_PTR_XLAT_TABLES;





RPC_STATUS __stdcall
NdrClientGetSupportedSyntaxes(
     RPC_CLIENT_INTERFACE * pInf,
     unsigned long       * pCount,
     MIDL_SYNTAX_INFO   ** pArr );


RPC_STATUS __stdcall
NdrServerGetSupportedSyntaxes(
     RPC_SERVER_INTERFACE * pInf,
     unsigned long       * pCount,
     MIDL_SYNTAX_INFO   ** pArr,
     unsigned long       * pPreferSyntaxIndex);





__declspec(dllimport)
void
__stdcall
NdrSimpleTypeMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    unsigned char           FormatChar
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrPointerMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrCsArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrCsTagMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrSimpleStructMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStructMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingStructMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexStructMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrFixedArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrVaryingArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexArrayMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonConformantStringMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStringMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrEncapsulatedUnionMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonEncapsulatedUnionMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrByteCountPointerMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrXmitOrRepAsMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrInterfacePointerMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrClientContextMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    NDR_CCONTEXT            ContextHandle,
    int                     fCheck
    );

__declspec(dllimport)
void
__stdcall
NdrServerContextMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    NDR_SCONTEXT            ContextHandle,
    NDR_RUNDOWN             RundownRoutine
    );

__declspec(dllimport)
void
__stdcall
NdrServerContextNewMarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    NDR_SCONTEXT            ContextHandle,
    NDR_RUNDOWN             RundownRoutine,
    PFORMAT_STRING          pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrSimpleTypeUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    unsigned char           FormatChar
    );

__declspec(dllimport)
unsigned char * __stdcall
__stdcall
NdrCsArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char **        ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char * __stdcall
__stdcall
NdrCsTagUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char **        ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char * __stdcall
NdrRangeUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char **        ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
void
__stdcall
NdrCorrelationInitialize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    void  *                 pMemory,
    unsigned long           CacheSize,
    unsigned long           flags
    );

__declspec(dllimport)
void
__stdcall
NdrCorrelationPass(
    PMIDL_STUB_MESSAGE      pStubMsg
    );

__declspec(dllimport)
void
__stdcall
NdrCorrelationFree(
    PMIDL_STUB_MESSAGE      pStubMsg
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrPointerUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrSimpleStructUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStructUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingStructUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexStructUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrFixedArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantVaryingArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrVaryingArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrComplexArrayUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonConformantStringUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrConformantStringUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrEncapsulatedUnionUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNonEncapsulatedUnionUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrByteCountPointerUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrXmitOrRepAsUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
unsigned char  *
__stdcall
NdrInterfacePointerUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *  *     ppMemory,
    PFORMAT_STRING          pFormat,
    unsigned char           fMustAlloc
    );



__declspec(dllimport)
void
__stdcall
NdrClientContextUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg,
    NDR_CCONTEXT        *   pContextHandle,
    RPC_BINDING_HANDLE      BindHandle
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NdrServerContextUnmarshall(
    PMIDL_STUB_MESSAGE      pStubMsg
    );



__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NdrContextHandleInitialize(
      PMIDL_STUB_MESSAGE  pStubMsg,
      PFORMAT_STRING      pFormat
    );

__declspec(dllimport)
NDR_SCONTEXT
__stdcall
NdrServerContextNewUnmarshall(
      PMIDL_STUB_MESSAGE  pStubMsg,
      PFORMAT_STRING      pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrPointerBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrCsArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrCsTagBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrSimpleStructBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantStructBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingStructBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexStructBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrFixedArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrVaryingArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexArrayBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrConformantStringBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonConformantStringBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrEncapsulatedUnionBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonEncapsulatedUnionBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrByteCountPointerBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrXmitOrRepAsBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrUserMarshalBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrInterfacePointerBufferSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrContextHandleSize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );





__declspec(dllimport)
unsigned long
__stdcall
NdrPointerMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrCsArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrCsTagMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrSimpleStructMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantStructMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantVaryingStructMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrComplexStructMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrFixedArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrConformantVaryingArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrVaryingArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrComplexArrayMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrConformantStringMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrNonConformantStringMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrEncapsulatedUnionMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrNonEncapsulatedUnionMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrXmitOrRepAsMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrUserMarshalMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
unsigned long
__stdcall
NdrInterfacePointerMemorySize(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrPointerFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrCsArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrSimpleStructFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantStructFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingStructFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexStructFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrFixedArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrConformantVaryingArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrVaryingArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrComplexArrayFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrEncapsulatedUnionFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );

__declspec(dllimport)
void
__stdcall
NdrNonEncapsulatedUnionFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrByteCountPointerFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrXmitOrRepAsFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrUserMarshalFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );



__declspec(dllimport)
void
__stdcall
NdrInterfacePointerFree(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pMemory,
    PFORMAT_STRING          pFormat
    );





__declspec(dllimport)
void
__stdcall
NdrConvert2(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat,
    long                    NumberParams
    );

__declspec(dllimport)
void
__stdcall
NdrConvert(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat
    );














__declspec(dllimport)
unsigned char  *
__stdcall
NdrUserMarshalSimpleTypeConvert(
    unsigned long *         pFlags,
    unsigned char *         pBuffer,
    unsigned char           FormatChar
    );





__declspec(dllimport)
void
__stdcall
NdrClientInitializeNew(
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor,
    unsigned int            ProcNum
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitializeNew(
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor
    );

__declspec(dllimport)
void
__stdcall
NdrServerInitializePartial(
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor,
    unsigned long           RequestedBufferSize
    );

__declspec(dllimport)
void
__stdcall
NdrClientInitialize(
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor,
    unsigned int            ProcNum
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitialize(
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrServerInitializeUnmarshall (
    PMIDL_STUB_MESSAGE      pStubMsg,
    PMIDL_STUB_DESC         pStubDescriptor,
    PRPC_MESSAGE            pRpcMsg
    );

__declspec(dllimport)
void
__stdcall
NdrServerInitializeMarshall (
    PRPC_MESSAGE            pRpcMsg,
    PMIDL_STUB_MESSAGE      pStubMsg
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrGetBuffer(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned long           BufferLength,
    RPC_BINDING_HANDLE      Handle
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNsGetBuffer(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned long           BufferLength,
    RPC_BINDING_HANDLE      Handle
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrSendReceive(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char *         pBufferEnd
    );

__declspec(dllimport)
unsigned char  *
__stdcall
NdrNsSendReceive(
    PMIDL_STUB_MESSAGE      pStubMsg,
    unsigned char  *        pBufferEnd,
    RPC_BINDING_HANDLE  *   pAutoHandle
    );

__declspec(dllimport)
void
__stdcall
NdrFreeBuffer(
    PMIDL_STUB_MESSAGE      pStubMsg
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
NdrGetDcomProtocolVersion(
    PMIDL_STUB_MESSAGE      pStubMsg,
    RPC_VERSION *           pVersion );








CLIENT_CALL_RETURN __cdecl
NdrClientCall2(
    PMIDL_STUB_DESC         pStubDescriptor,
    PFORMAT_STRING          pFormat,
    ...
    );



extern "C"

void * _AddressOfReturnAddress(void);



CLIENT_CALL_RETURN __cdecl
NdrClientCall(
    PMIDL_STUB_DESC         pStubDescriptor,
    PFORMAT_STRING          pFormat,
    ...
    );

CLIENT_CALL_RETURN __cdecl
NdrAsyncClientCall(
    PMIDL_STUB_DESC         pStubDescriptor,
    PFORMAT_STRING          pFormat,
    ...
    );

CLIENT_CALL_RETURN __cdecl
NdrDcomAsyncClientCall(
    PMIDL_STUB_DESC         pStubDescriptor,
    PFORMAT_STRING          pFormat,
    ...
    );


typedef enum {
    STUB_UNMARSHAL,
    STUB_CALL_SERVER,
    STUB_MARSHAL,
    STUB_CALL_SERVER_NO_HRESULT
}STUB_PHASE;

typedef enum {
    PROXY_CALCSIZE,
    PROXY_GETBUFFER,
    PROXY_MARSHAL,
    PROXY_SENDRECEIVE,
    PROXY_UNMARSHAL
}PROXY_PHASE;

struct IRpcStubBuffer;      


__declspec(dllimport)
void
__stdcall
NdrAsyncServerCall(
    PRPC_MESSAGE                pRpcMsg
    );


__declspec(dllimport)
long
__stdcall
NdrAsyncStubCall(
    struct IRpcStubBuffer *     pThis,
    struct IRpcChannelBuffer *  pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long *             pdwStubPhase
    );


__declspec(dllimport)
long
__stdcall
NdrDcomAsyncStubCall(
    struct IRpcStubBuffer    *  pThis,
    struct IRpcChannelBuffer *  pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long            *  pdwStubPhase
    );

__declspec(dllimport)
long
__stdcall
NdrStubCall2(
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long  *            pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrServerCall2(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
long
__stdcall
NdrStubCall (
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long  *            pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrServerCall(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
int
__stdcall
NdrServerUnmarshall(
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                pRpcMsg,
    PMIDL_STUB_MESSAGE          pStubMsg,
    PMIDL_STUB_DESC             pStubDescriptor,
    PFORMAT_STRING              pFormat,
    void  *                     pParamList
    );

__declspec(dllimport)
void
__stdcall
NdrServerMarshall(
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PMIDL_STUB_MESSAGE          pStubMsg,
    PFORMAT_STRING              pFormat
    );



__declspec(dllimport)
RPC_STATUS
__stdcall
NdrMapCommAndFaultStatus(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned long  *            pCommStatus,
    unsigned long  *            pFaultStatus,
    RPC_STATUS                  Status
    );



__declspec(dllimport)
int
__stdcall
NdrSH_UPDecision(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    RPC_BUFPTR                  pBuffer
    );

__declspec(dllimport)
int
__stdcall
NdrSH_TLUPDecision(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem
    );

__declspec(dllimport)
int
__stdcall
NdrSH_TLUPDecisionBuffer(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAlloc(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAllocRef(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
int
__stdcall
NdrSH_IfAllocSet(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_IfCopy(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_IfAllocCopy(
    PMIDL_STUB_MESSAGE          pStubMsg,
    unsigned char          * *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
unsigned long
__stdcall
NdrSH_Copy(
    unsigned char            *  pStubMsg,
    unsigned char            *  pPtrInMem,
    unsigned long               Count
    );

__declspec(dllimport)
void
__stdcall
NdrSH_IfFree(
    PMIDL_STUB_MESSAGE          pMessage,
    unsigned char            *  pPtr );


__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_StringMarshall(
    PMIDL_STUB_MESSAGE          pMessage,
    unsigned char            *  pMemory,
    unsigned long               Count,
    int                         Size );

__declspec(dllimport)
RPC_BUFPTR
__stdcall
NdrSH_StringUnMarshall(
    PMIDL_STUB_MESSAGE          pMessage,
    unsigned char          * *  pMemory,
    int                         Size );





typedef void  * RPC_SS_THREAD_HANDLE;

typedef void  * __stdcall
RPC_CLIENT_ALLOC (
     size_t Size
    );

typedef void __stdcall
RPC_CLIENT_FREE (
     void  * Ptr
    );





__declspec(dllimport)
void  *
__stdcall
RpcSsAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
RpcSsDisableAllocate (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsEnableAllocate (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsFree (
     void  * NodeToFree
    );

__declspec(dllimport)
RPC_SS_THREAD_HANDLE
__stdcall
RpcSsGetThreadHandle (
    void
    );

__declspec(dllimport)
void
__stdcall
RpcSsSetClientAllocFree (
     RPC_CLIENT_ALLOC  * ClientAlloc,
     RPC_CLIENT_FREE   * ClientFree
    );

__declspec(dllimport)
void
__stdcall
RpcSsSetThreadHandle (
     RPC_SS_THREAD_HANDLE Id
    );

__declspec(dllimport)
void
__stdcall
RpcSsSwapClientAllocFree (
     RPC_CLIENT_ALLOC     * ClientAlloc,
     RPC_CLIENT_FREE      * ClientFree,
     RPC_CLIENT_ALLOC *  * OldClientAlloc,
     RPC_CLIENT_FREE  *  * OldClientFree
    );





__declspec(dllimport)
void  *
__stdcall
RpcSmAllocate (
      size_t          Size,
     RPC_STATUS  *   pStatus
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmClientFree (
      void        *   pNodeToFree
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmDestroyClientContext (
     void         * * ContextHandle
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmDisableAllocate (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmEnableAllocate (
    void
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmFree (
     void         *   NodeToFree
    );

__declspec(dllimport)
RPC_SS_THREAD_HANDLE
__stdcall
RpcSmGetThreadHandle (
     RPC_STATUS  *   pStatus
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSetClientAllocFree (
     RPC_CLIENT_ALLOC * ClientAlloc,
     RPC_CLIENT_FREE  * ClientFree
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSetThreadHandle (
     RPC_SS_THREAD_HANDLE Id
    );

__declspec(dllimport)
RPC_STATUS
__stdcall
RpcSmSwapClientAllocFree (
     RPC_CLIENT_ALLOC     *   ClientAlloc,
     RPC_CLIENT_FREE      *   ClientFree,
     RPC_CLIENT_ALLOC    * * OldClientAlloc,
     RPC_CLIENT_FREE     * * OldClientFree
    );





__declspec(dllimport)
void
__stdcall
NdrRpcSsEnableAllocate(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void
__stdcall
NdrRpcSsDisableAllocate(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void
__stdcall
NdrRpcSmSetClientToOsf(
    PMIDL_STUB_MESSAGE      pMessage );

__declspec(dllimport)
void  *
__stdcall
NdrRpcSmClientAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrRpcSmClientFree (
     void  * NodeToFree
    );

__declspec(dllimport)
void  *
__stdcall
NdrRpcSsDefaultAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrRpcSsDefaultFree (
     void  * NodeToFree
    );









__declspec(dllimport)
PFULL_PTR_XLAT_TABLES
__stdcall
NdrFullPointerXlatInit(
    unsigned long           NumberOfPointers,
    XLAT_SIDE               XlatSide
    );

__declspec(dllimport)
void
__stdcall
NdrFullPointerXlatFree(
    PFULL_PTR_XLAT_TABLES   pXlatTables
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerQueryPointer(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    void  *                 pPointer,
    unsigned char           QueryType,
    unsigned long  *        pRefId
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerQueryRefId(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    unsigned long           RefId,
    unsigned char           QueryType,
    void  * *               ppPointer
    );

__declspec(dllimport)
void
__stdcall
NdrFullPointerInsertRefId(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    unsigned long           RefId,
    void  *                 pPointer
    );

__declspec(dllimport)
int
__stdcall
NdrFullPointerFree(
    PFULL_PTR_XLAT_TABLES   pXlatTables,
    void  *                 Pointer
    );

__declspec(dllimport)
void  *
__stdcall
NdrAllocate(
    PMIDL_STUB_MESSAGE      pStubMsg,
    size_t                  Len
    );

__declspec(dllimport)
void
__stdcall
NdrClearOutParameters(
    PMIDL_STUB_MESSAGE      pStubMsg,
    PFORMAT_STRING          pFormat,
    void  *                 ArgAddr
    );






__declspec(dllimport)
void  *
__stdcall
NdrOleAllocate (
     size_t Size
    );

__declspec(dllimport)
void
__stdcall
NdrOleFree (
     void  * NodeToFree
    );
















































typedef struct _NDR_USER_MARSHAL_INFO_LEVEL1
{
    void *                      Buffer;
    unsigned long               BufferSize;
    void *(__stdcall * pfnAllocate)(size_t);
    void (__stdcall * pfnFree)(void *);
    struct IRpcChannelBuffer *  pRpcChannelBuffer;
    ULONG_PTR                   Reserved[5];
} NDR_USER_MARSHAL_INFO_LEVEL1;



#pragma warning(push)

#pragma warning(disable:4201)


typedef struct _NDR_USER_MARSHAL_INFO
{
    unsigned long InformationLevel;
    union {
        NDR_USER_MARSHAL_INFO_LEVEL1 Level1;
    };
} NDR_USER_MARSHAL_INFO;



#pragma warning(pop)





RPC_STATUS
__stdcall
NdrGetUserMarshalInfo (
     unsigned long        *   pFlags,
     unsigned long            InformationLevel,
     NDR_USER_MARSHAL_INFO * pMarshalInfo
    );




RPC_STATUS __stdcall
NdrCreateServerInterfaceFromStub(
             struct IRpcStubBuffer* pStub,
              RPC_SERVER_INTERFACE *pServerIf );




CLIENT_CALL_RETURN __cdecl
NdrClientCall3(
    MIDL_STUBLESS_PROXY_INFO   *pProxyInfo,
    unsigned long               nProcNum,
    void *                      pReturnValue,
    ...
    );

CLIENT_CALL_RETURN __cdecl
Ndr64AsyncClientCall(
    MIDL_STUBLESS_PROXY_INFO   *pProxyInfo,
    unsigned long               nProcNum,
    void *                      pReturnValue,
    ...
    );

CLIENT_CALL_RETURN __cdecl
Ndr64DcomAsyncClientCall(
    MIDL_STUBLESS_PROXY_INFO   *pProxyInfo,
    unsigned long               nProcNum,
    void *                      pReturnValue,
    ...
    );

struct IRpcStubBuffer;      

__declspec(dllimport)
void
__stdcall
Ndr64AsyncServerCall(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
void
__stdcall
Ndr64AsyncServerCall64(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
void
__stdcall
Ndr64AsyncServerCallAll(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
long
__stdcall
Ndr64AsyncStubCall(
    struct IRpcStubBuffer *     pThis,
    struct IRpcChannelBuffer *  pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long *             pdwStubPhase
    );


__declspec(dllimport)
long
__stdcall
Ndr64DcomAsyncStubCall(
    struct IRpcStubBuffer    *  pThis,
    struct IRpcChannelBuffer *  pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long            *  pdwStubPhase
    );

__declspec(dllimport)
long
__stdcall
NdrStubCall3 (
    struct IRpcStubBuffer  *    pThis,
    struct IRpcChannelBuffer  * pChannel,
    PRPC_MESSAGE                pRpcMsg,
    unsigned long  *            pdwStubPhase
    );

__declspec(dllimport)
void
__stdcall
NdrServerCallAll(
    PRPC_MESSAGE                pRpcMsg
    );

__declspec(dllimport)
void
__stdcall
NdrServerCallNdr64(
    PRPC_MESSAGE                pRpcMsg
    );


__declspec(dllimport)
void
__stdcall
NdrServerCall3(
    PRPC_MESSAGE                pRpcMsg
    );



__declspec(dllimport)
void
__stdcall
NdrPartialIgnoreClientMarshall(
    PMIDL_STUB_MESSAGE          pStubMsg,
    void *                      pMemory
    );

__declspec(dllimport)
void
__stdcall
NdrPartialIgnoreServerUnmarshall(
    PMIDL_STUB_MESSAGE          pStubMsg,
    void **                     ppMemory
    );

__declspec(dllimport)
void
__stdcall
NdrPartialIgnoreClientBufferSize(
    PMIDL_STUB_MESSAGE          pStubMsg,
    void *                      pMemory
    );

__declspec(dllimport)
void
__stdcall
NdrPartialIgnoreServerInitialize(
    PMIDL_STUB_MESSAGE          pStubMsg,
    void **                     ppMemory,
    PFORMAT_STRING              pFormat
    );


void __stdcall
RpcUserFree( handle_t AsyncHandle, void * pBuffer );


}





























#pragma warning(disable:4103)

#pragma pack(pop)























#pragma once


 




















































































































































































































extern "C"{


void * __stdcall MIDL_user_allocate(size_t);
void __stdcall MIDL_user_free( void * ); 


 








#pragma once



extern RPC_IF_HANDLE __MIDL_itf_wtypes_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wtypes_0000_v0_0_s_ifspec;





 

typedef struct tagRemHGLOBAL
    {
    long fNullHGlobal;
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHGLOBAL;

typedef struct tagRemHMETAFILEPICT
    {
    long mm;
    long xExt;
    long yExt;
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHMETAFILEPICT;

typedef struct tagRemHENHMETAFILE
    {
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHENHMETAFILE;

typedef struct tagRemHBITMAP
    {
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHBITMAP;

typedef struct tagRemHPALETTE
    {
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHPALETTE;

typedef struct tagRemBRUSH
    {
    unsigned long cbData;
     byte data[ 1 ];
    } 	RemHBRUSH;

































































































































































































































typedef WCHAR OLECHAR;

typedef  OLECHAR *LPOLESTR;

typedef  const OLECHAR *LPCOLESTR;


































typedef unsigned char UCHAR;

typedef short SHORT;

typedef unsigned short USHORT;

typedef DWORD ULONG;

typedef double DOUBLE;















































































































typedef struct _COAUTHIDENTITY
    {
     USHORT *User;
     ULONG UserLength;
     USHORT *Domain;
     ULONG DomainLength;
     USHORT *Password;
     ULONG PasswordLength;
    ULONG Flags;
    } 	COAUTHIDENTITY;

typedef struct _COAUTHINFO
    {
    DWORD dwAuthnSvc;
    DWORD dwAuthzSvc;
    LPWSTR pwszServerPrincName;
    DWORD dwAuthnLevel;
    DWORD dwImpersonationLevel;
    COAUTHIDENTITY *pAuthIdentityData;
    DWORD dwCapabilities;
    } 	COAUTHINFO;

typedef LONG SCODE;






typedef SCODE *PSCODE;





















typedef 
enum tagMEMCTX
    {	MEMCTX_TASK	= 1,
	MEMCTX_SHARED	= 2,
	MEMCTX_MACSYSTEM	= 3,
	MEMCTX_UNKNOWN	= -1,
	MEMCTX_SAME	= -2
    } 	MEMCTX;










typedef 
enum tagCLSCTX
    {	CLSCTX_INPROC_SERVER	= 0x1,
	CLSCTX_INPROC_HANDLER	= 0x2,
	CLSCTX_LOCAL_SERVER	= 0x4,
	CLSCTX_INPROC_SERVER16	= 0x8,
	CLSCTX_REMOTE_SERVER	= 0x10,
	CLSCTX_INPROC_HANDLER16	= 0x20,
	CLSCTX_RESERVED1	= 0x40,
	CLSCTX_RESERVED2	= 0x80,
	CLSCTX_RESERVED3	= 0x100,
	CLSCTX_RESERVED4	= 0x200,
	CLSCTX_NO_CODE_DOWNLOAD	= 0x400,
	CLSCTX_RESERVED5	= 0x800,
	CLSCTX_NO_CUSTOM_MARSHAL	= 0x1000,
	CLSCTX_ENABLE_CODE_DOWNLOAD	= 0x2000,
	CLSCTX_NO_FAILURE_LOG	= 0x4000,
	CLSCTX_DISABLE_AAA	= 0x8000,
	CLSCTX_ENABLE_AAA	= 0x10000,
	CLSCTX_FROM_DEFAULT_CONTEXT	= 0x20000,
	CLSCTX_ACTIVATE_32_BIT_SERVER	= 0x40000,
	CLSCTX_ACTIVATE_64_BIT_SERVER	= 0x80000
    } 	CLSCTX;

typedef 
enum tagMSHLFLAGS
    {	MSHLFLAGS_NORMAL	= 0,
	MSHLFLAGS_TABLESTRONG	= 1,
	MSHLFLAGS_TABLEWEAK	= 2,
	MSHLFLAGS_NOPING	= 4,
	MSHLFLAGS_RESERVED1	= 8,
	MSHLFLAGS_RESERVED2	= 16,
	MSHLFLAGS_RESERVED3	= 32,
	MSHLFLAGS_RESERVED4	= 64
    } 	MSHLFLAGS;

typedef 
enum tagMSHCTX
    {	MSHCTX_LOCAL	= 0,
	MSHCTX_NOSHAREDMEM	= 1,
	MSHCTX_DIFFERENTMACHINE	= 2,
	MSHCTX_INPROC	= 3,
	MSHCTX_CROSSCTX	= 4
    } 	MSHCTX;

typedef 
enum tagDVASPECT
    {	DVASPECT_CONTENT	= 1,
	DVASPECT_THUMBNAIL	= 2,
	DVASPECT_ICON	= 4,
	DVASPECT_DOCPRINT	= 8
    } 	DVASPECT;

typedef 
enum tagSTGC
    {	STGC_DEFAULT	= 0,
	STGC_OVERWRITE	= 1,
	STGC_ONLYIFCURRENT	= 2,
	STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE	= 4,
	STGC_CONSOLIDATE	= 8
    } 	STGC;

typedef 
enum tagSTGMOVE
    {	STGMOVE_MOVE	= 0,
	STGMOVE_COPY	= 1,
	STGMOVE_SHALLOWCOPY	= 2
    } 	STGMOVE;

typedef 
enum tagSTATFLAG
    {	STATFLAG_DEFAULT	= 0,
	STATFLAG_NONAME	= 1,
	STATFLAG_NOOPEN	= 2
    } 	STATFLAG;

typedef  void *HCONTEXT;



typedef DWORD LCID;




typedef USHORT LANGID;


typedef struct _BYTE_BLOB
    {
    unsigned long clSize;
     byte abData[ 1 ];
    } 	BYTE_BLOB;

typedef  BYTE_BLOB *UP_BYTE_BLOB;

typedef struct _WORD_BLOB
    {
    unsigned long clSize;
     unsigned short asData[ 1 ];
    } 	WORD_BLOB;

typedef  WORD_BLOB *UP_WORD_BLOB;

typedef struct _DWORD_BLOB
    {
    unsigned long clSize;
     unsigned long alData[ 1 ];
    } 	DWORD_BLOB;

typedef  DWORD_BLOB *UP_DWORD_BLOB;

typedef struct _FLAGGED_BYTE_BLOB
    {
    unsigned long fFlags;
    unsigned long clSize;
     byte abData[ 1 ];
    } 	FLAGGED_BYTE_BLOB;

typedef  FLAGGED_BYTE_BLOB *UP_FLAGGED_BYTE_BLOB;

typedef struct _FLAGGED_WORD_BLOB
    {
    unsigned long fFlags;
    unsigned long clSize;
     unsigned short asData[ 1 ];
    } 	FLAGGED_WORD_BLOB;

typedef  FLAGGED_WORD_BLOB *UP_FLAGGED_WORD_BLOB;

typedef struct _BYTE_SIZEDARR
    {
    unsigned long clSize;
     byte *pData;
    } 	BYTE_SIZEDARR;

typedef struct _SHORT_SIZEDARR
    {
    unsigned long clSize;
     unsigned short *pData;
    } 	WORD_SIZEDARR;

typedef struct _LONG_SIZEDARR
    {
    unsigned long clSize;
     unsigned long *pData;
    } 	DWORD_SIZEDARR;

typedef struct _HYPER_SIZEDARR
    {
    unsigned long clSize;
     __int64 *pData;
    } 	HYPER_SIZEDARR;







typedef struct _userCLIPFORMAT
    {
    long fContext;
      union __MIDL_IWinTypes_0001
        {
         DWORD dwValue;
         wchar_t *pwszName;
        } 	u;
    } 	userCLIPFORMAT;

typedef  userCLIPFORMAT *wireCLIPFORMAT;

typedef  WORD CLIPFORMAT;

typedef struct _GDI_NONREMOTE
    {
    long fContext;
      union __MIDL_IWinTypes_0002
        {
         long hInproc;
         DWORD_BLOB *hRemote;
        } 	u;
    } 	GDI_NONREMOTE;

typedef struct _userHGLOBAL
    {
    long fContext;
      union __MIDL_IWinTypes_0003
        {
         long hInproc;
         FLAGGED_BYTE_BLOB *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHGLOBAL;

typedef  userHGLOBAL *wireHGLOBAL;

typedef struct _userHMETAFILE
    {
    long fContext;
      union __MIDL_IWinTypes_0004
        {
         long hInproc;
         BYTE_BLOB *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHMETAFILE;

typedef struct _remoteMETAFILEPICT
    {
    long mm;
    long xExt;
    long yExt;
    userHMETAFILE *hMF;
    } 	remoteMETAFILEPICT;

typedef struct _userHMETAFILEPICT
    {
    long fContext;
      union __MIDL_IWinTypes_0005
        {
         long hInproc;
         remoteMETAFILEPICT *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHMETAFILEPICT;

typedef struct _userHENHMETAFILE
    {
    long fContext;
      union __MIDL_IWinTypes_0006
        {
         long hInproc;
         BYTE_BLOB *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHENHMETAFILE;

typedef struct _userBITMAP
    {
    LONG bmType;
    LONG bmWidth;
    LONG bmHeight;
    LONG bmWidthBytes;
    WORD bmPlanes;
    WORD bmBitsPixel;
    ULONG cbSize;
     byte pBuffer[ 1 ];
    } 	userBITMAP;

typedef struct _userHBITMAP
    {
    long fContext;
      union __MIDL_IWinTypes_0007
        {
         long hInproc;
         userBITMAP *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHBITMAP;

typedef struct _userHPALETTE
    {
    long fContext;
      union __MIDL_IWinTypes_0008
        {
         long hInproc;
         LOGPALETTE *hRemote;
         __int64 hInproc64;
        } 	u;
    } 	userHPALETTE;

typedef struct _RemotableHandle
    {
    long fContext;
      union __MIDL_IWinTypes_0009
        {
         long hInproc;
         long hRemote;
        } 	u;
    } 	RemotableHandle;

typedef  RemotableHandle *wireHWND;

typedef  RemotableHandle *wireHMENU;

typedef  RemotableHandle *wireHACCEL;

typedef  RemotableHandle *wireHBRUSH;

typedef  RemotableHandle *wireHFONT;

typedef  RemotableHandle *wireHDC;

typedef  RemotableHandle *wireHICON;









































































typedef  userHBITMAP *wireHBITMAP;

typedef  userHPALETTE *wireHPALETTE;

typedef  userHENHMETAFILE *wireHENHMETAFILE;

typedef  userHMETAFILE *wireHMETAFILE;

typedef  userHMETAFILEPICT *wireHMETAFILEPICT;















typedef  void *HMETAFILEPICT;



extern RPC_IF_HANDLE IWinTypes_v0_1_c_ifspec;
extern RPC_IF_HANDLE IWinTypes_v0_1_s_ifspec;



 



#pragma warning(push)

#pragma warning(disable:4201)

typedef double DATE;














typedef union tagCY {
    struct {




        unsigned long Lo;
        long      Hi;

    };
    LONGLONG int64;
} CY;


typedef CY *LPCY;















typedef struct tagDEC {
    USHORT wReserved;
    union {
        struct {
            BYTE scale;
            BYTE sign;
        };
        USHORT signscale;
    };
    ULONG Hi32;
    union {
        struct {




            ULONG Lo32;
            ULONG Mid32;

        };
        ULONGLONG Lo64;
    };
} DECIMAL;




typedef DECIMAL *LPDECIMAL;



#pragma warning(pop)




typedef  FLAGGED_WORD_BLOB *wireBSTR;

typedef  OLECHAR *BSTR;

typedef BSTR *LPBSTR;


typedef short VARIANT_BOOL;









typedef boolean BOOLEAN;






typedef struct tagBSTRBLOB
    {
    ULONG cbSize;
     BYTE *pData;
    } 	BSTRBLOB;

typedef struct tagBSTRBLOB *LPBSTRBLOB;








typedef struct tagBLOB
    {
    ULONG cbSize;
     BYTE *pBlobData;
    } 	BLOB;

typedef struct tagBLOB *LPBLOB;


typedef struct tagCLIPDATA
    {
    ULONG cbSize;
    long ulClipFmt;
     BYTE *pClipData;
    } 	CLIPDATA;



typedef unsigned short VARTYPE;




























































enum VARENUM
    {	VT_EMPTY	= 0,
	VT_NULL	= 1,
	VT_I2	= 2,
	VT_I4	= 3,
	VT_R4	= 4,
	VT_R8	= 5,
	VT_CY	= 6,
	VT_DATE	= 7,
	VT_BSTR	= 8,
	VT_DISPATCH	= 9,
	VT_ERROR	= 10,
	VT_BOOL	= 11,
	VT_VARIANT	= 12,
	VT_UNKNOWN	= 13,
	VT_DECIMAL	= 14,
	VT_I1	= 16,
	VT_UI1	= 17,
	VT_UI2	= 18,
	VT_UI4	= 19,
	VT_I8	= 20,
	VT_UI8	= 21,
	VT_INT	= 22,
	VT_UINT	= 23,
	VT_VOID	= 24,
	VT_HRESULT	= 25,
	VT_PTR	= 26,
	VT_SAFEARRAY	= 27,
	VT_CARRAY	= 28,
	VT_USERDEFINED	= 29,
	VT_LPSTR	= 30,
	VT_LPWSTR	= 31,
	VT_RECORD	= 36,
	VT_INT_PTR	= 37,
	VT_UINT_PTR	= 38,
	VT_FILETIME	= 64,
	VT_BLOB	= 65,
	VT_STREAM	= 66,
	VT_STORAGE	= 67,
	VT_STREAMED_OBJECT	= 68,
	VT_STORED_OBJECT	= 69,
	VT_BLOB_OBJECT	= 70,
	VT_CF	= 71,
	VT_CLSID	= 72,
	VT_VERSIONED_STREAM	= 73,
	VT_BSTR_BLOB	= 0xfff,
	VT_VECTOR	= 0x1000,
	VT_ARRAY	= 0x2000,
	VT_BYREF	= 0x4000,
	VT_RESERVED	= 0x8000,
	VT_ILLEGAL	= 0xffff,
	VT_ILLEGALMASKED	= 0xfff,
	VT_TYPEMASK	= 0xfff
    } ;
typedef ULONG PROPID;
































typedef struct tagCSPLATFORM
    {
    DWORD dwPlatformId;
    DWORD dwVersionHi;
    DWORD dwVersionLo;
    DWORD dwProcessorArch;
    } 	CSPLATFORM;

typedef struct tagQUERYCONTEXT
    {
    DWORD dwContext;
    CSPLATFORM Platform;
    LCID Locale;
    DWORD dwVersionHi;
    DWORD dwVersionLo;
    } 	QUERYCONTEXT;

typedef  
enum tagTYSPEC
    {	TYSPEC_CLSID	= 0,
	TYSPEC_FILEEXT	= TYSPEC_CLSID + 1,
	TYSPEC_MIMETYPE	= TYSPEC_FILEEXT + 1,
	TYSPEC_FILENAME	= TYSPEC_MIMETYPE + 1,
	TYSPEC_PROGID	= TYSPEC_FILENAME + 1,
	TYSPEC_PACKAGENAME	= TYSPEC_PROGID + 1,
	TYSPEC_OBJECTID	= TYSPEC_PACKAGENAME + 1
    } 	TYSPEC;

typedef  struct __MIDL___MIDL_itf_wtypes_0003_0001
    {
    DWORD tyspec;
      union __MIDL___MIDL_itf_wtypes_0003_0005
        {
         CLSID clsid;
         LPOLESTR pFileExt;
         LPOLESTR pMimeType;
         LPOLESTR pProgId;
         LPOLESTR pFileName;
         struct 
            {
            LPOLESTR pPackageName;
            GUID PolicyId;
            } 	ByName;
         struct 
            {
            GUID ObjectId;
            GUID PolicyId;
            } 	ByObjectId;
        } 	tagged_union;
    } 	uCLSSPEC;



extern RPC_IF_HANDLE __MIDL_itf_wtypes_0003_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wtypes_0003_v0_0_s_ifspec;






}













































extern "C" const GUID  GUID_DEVINTERFACE_DISK;
extern "C" const GUID  GUID_DEVINTERFACE_CDROM;
extern "C" const GUID  GUID_DEVINTERFACE_PARTITION;
extern "C" const GUID  GUID_DEVINTERFACE_TAPE;
extern "C" const GUID  GUID_DEVINTERFACE_WRITEONCEDISK;
extern "C" const GUID  GUID_DEVINTERFACE_VOLUME;
extern "C" const GUID  GUID_DEVINTERFACE_MEDIUMCHANGER;
extern "C" const GUID  GUID_DEVINTERFACE_FLOPPY;
extern "C" const GUID  GUID_DEVINTERFACE_CDCHANGER;
extern "C" const GUID  GUID_DEVINTERFACE_STORAGEPORT;
extern "C" const GUID  GUID_DEVINTERFACE_COMPORT;
extern "C" const GUID  GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR;






























































































































































extern "C" {























































typedef struct _STORAGE_HOTPLUG_INFO {
    DWORD Size; 
    BOOLEAN MediaRemovable; 
    BOOLEAN MediaHotplug;   
    BOOLEAN DeviceHotplug;  
    BOOLEAN WriteCacheEnableOverride; 
} STORAGE_HOTPLUG_INFO, *PSTORAGE_HOTPLUG_INFO;












typedef struct _STORAGE_DEVICE_NUMBER {

    
    
    

    DWORD DeviceType;

    
    
    

    DWORD       DeviceNumber;

    
    
    
    

    DWORD       PartitionNumber;
} STORAGE_DEVICE_NUMBER, *PSTORAGE_DEVICE_NUMBER;





typedef struct _STORAGE_BUS_RESET_REQUEST {
    BYTE  PathId;
} STORAGE_BUS_RESET_REQUEST, *PSTORAGE_BUS_RESET_REQUEST;





typedef struct STORAGE_BREAK_RESERVATION_REQUEST {
        DWORD Length;
        BYTE  _unused;
    BYTE  PathId;
    BYTE  TargetId;
    BYTE  Lun;
} STORAGE_BREAK_RESERVATION_REQUEST, *PSTORAGE_BREAK_RESERVATION_REQUEST;












typedef struct _PREVENT_MEDIA_REMOVAL {
    BOOLEAN PreventMediaRemoval;
} PREVENT_MEDIA_REMOVAL, *PPREVENT_MEDIA_REMOVAL;







typedef struct _CLASS_MEDIA_CHANGE_CONTEXT {
        DWORD MediaChangeCount;
        DWORD NewState;         
} CLASS_MEDIA_CHANGE_CONTEXT, *PCLASS_MEDIA_CHANGE_CONTEXT;





typedef struct _TAPE_STATISTICS {
    DWORD Version;
    DWORD Flags;
    LARGE_INTEGER RecoveredWrites;
    LARGE_INTEGER UnrecoveredWrites;
    LARGE_INTEGER RecoveredReads;
    LARGE_INTEGER UnrecoveredReads;
    BYTE          CompressionRatioReads;
    BYTE          CompressionRatioWrites;
} TAPE_STATISTICS, *PTAPE_STATISTICS;








typedef struct _TAPE_GET_STATISTICS {
    DWORD Operation;
} TAPE_GET_STATISTICS, *PTAPE_GET_STATISTICS;










typedef enum _STORAGE_MEDIA_TYPE {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    DDS_4mm = 0x20,            
    MiniQic,                   
    Travan,                    
    QIC,                       
    MP_8mm,                    
    AME_8mm,                   
    AIT1_8mm,                  
    DLT,                       
    NCTP,                      
    IBM_3480,                  
    IBM_3490E,                 
    IBM_Magstar_3590,          
    IBM_Magstar_MP,            
    STK_DATA_D3,               
    SONY_DTF,                  
    DV_6mm,                    
    DMI,                       
    SONY_D2,                   
    CLEANER_CARTRIDGE,         
    CD_ROM,                    
    CD_R,                      
    CD_RW,                     
    DVD_ROM,                   
    DVD_R,                     
    DVD_RW,                    
    MO_3_RW,                   
    MO_5_WO,                   
    MO_5_RW,                   
    MO_5_LIMDOW,               
    PC_5_WO,                   
    PC_5_RW,                   
    PD_5_RW,                   
    ABL_5_WO,                  
    PINNACLE_APEX_5_RW,        
    SONY_12_WO,                
    PHILIPS_12_WO,             
    HITACHI_12_WO,             
    CYGNET_12_WO,              
    KODAK_14_WO,               
    MO_NFR_525,                
    NIKON_12_RW,               
    IOMEGA_ZIP,                
    IOMEGA_JAZ,                
    SYQUEST_EZ135,             
    SYQUEST_EZFLYER,           
    SYQUEST_SYJET,             
    AVATAR_F2,                 
    MP2_8mm,                   
    DST_S,                     
    DST_M,                     
    DST_L,                     
    VXATape_1,                 
    VXATape_2,                 
    STK_9840,                  
    LTO_Ultrium,               
    LTO_Accelis,               
    DVD_RAM,                   
    AIT_8mm,                   
    ADR_1,                     
    ADR_2,
    STK_9940,                  
    SAIT                       
} STORAGE_MEDIA_TYPE, *PSTORAGE_MEDIA_TYPE;














typedef enum _STORAGE_BUS_TYPE {
    BusTypeUnknown = 0x00,
    BusTypeScsi,
    BusTypeAtapi,
    BusTypeAta,
    BusType1394,
    BusTypeSsa,
    BusTypeFibre,
    BusTypeUsb,
    BusTypeRAID,
    BusTypeiScsi,
    BusTypeSas,
    BusTypeSata,
    BusTypeMaxReserved = 0x7F
} STORAGE_BUS_TYPE, *PSTORAGE_BUS_TYPE;

typedef struct _DEVICE_MEDIA_INFO {
    union {
        struct {
            LARGE_INTEGER Cylinders;
            STORAGE_MEDIA_TYPE MediaType;
            DWORD TracksPerCylinder;
            DWORD SectorsPerTrack;
            DWORD BytesPerSector;
            DWORD NumberMediaSides;
            DWORD MediaCharacteristics; 
        } DiskInfo;

        struct {
            LARGE_INTEGER Cylinders;
            STORAGE_MEDIA_TYPE MediaType;
            DWORD TracksPerCylinder;
            DWORD SectorsPerTrack;
            DWORD BytesPerSector;
            DWORD NumberMediaSides;
            DWORD MediaCharacteristics; 
        } RemovableDiskInfo;

        struct {
            STORAGE_MEDIA_TYPE MediaType;
            DWORD   MediaCharacteristics; 
            DWORD   CurrentBlockSize;
            STORAGE_BUS_TYPE BusType;

            
            
            

            union {
                struct {
                    BYTE  MediumType;
                    BYTE  DensityCode;
                } ScsiInformation;
            } BusSpecificData;

        } TapeInfo;
    } DeviceSpecific;
} DEVICE_MEDIA_INFO, *PDEVICE_MEDIA_INFO;

typedef struct _GET_MEDIA_TYPES {
    DWORD DeviceType;              
    DWORD MediaInfoCount;
    DEVICE_MEDIA_INFO MediaInfo[1];
} GET_MEDIA_TYPES, *PGET_MEDIA_TYPES;














typedef struct _STORAGE_PREDICT_FAILURE
{
    DWORD PredictFailure;
    BYTE  VendorSpecific[512];
} STORAGE_PREDICT_FAILURE, *PSTORAGE_PREDICT_FAILURE;




}



















































































































































































































































typedef enum _MEDIA_TYPE {
    Unknown,                
    F5_1Pt2_512,            
    F3_1Pt44_512,           
    F3_2Pt88_512,           
    F3_20Pt8_512,           
    F3_720_512,             
    F5_360_512,             
    F5_320_512,             
    F5_320_1024,            
    F5_180_512,             
    F5_160_512,             
    RemovableMedia,         
    FixedMedia,             
    F3_120M_512,            
    F3_640_512,             
    F5_640_512,             
    F5_720_512,             
    F3_1Pt2_512,            
    F3_1Pt23_1024,          
    F5_1Pt23_1024,          
    F3_128Mb_512,           
    F3_230Mb_512,           
    F8_256_128,             
    F3_200Mb_512,           
    F3_240M_512,            
    F3_32M_512              
} MEDIA_TYPE, *PMEDIA_TYPE;






typedef struct _FORMAT_PARAMETERS {
   MEDIA_TYPE MediaType;
   DWORD StartCylinderNumber;
   DWORD EndCylinderNumber;
   DWORD StartHeadNumber;
   DWORD EndHeadNumber;
} FORMAT_PARAMETERS, *PFORMAT_PARAMETERS;








typedef WORD   BAD_TRACK_NUMBER;
typedef WORD   *PBAD_TRACK_NUMBER;






typedef struct _FORMAT_EX_PARAMETERS {
   MEDIA_TYPE MediaType;
   DWORD StartCylinderNumber;
   DWORD EndCylinderNumber;
   DWORD StartHeadNumber;
   DWORD EndHeadNumber;
   WORD   FormatGapLength;
   WORD   SectorsPerTrack;
   WORD   SectorNumber[1];
} FORMAT_EX_PARAMETERS, *PFORMAT_EX_PARAMETERS;







typedef struct _DISK_GEOMETRY {
    LARGE_INTEGER Cylinders;
    MEDIA_TYPE MediaType;
    DWORD TracksPerCylinder;
    DWORD SectorsPerTrack;
    DWORD BytesPerSector;
} DISK_GEOMETRY, *PDISK_GEOMETRY;
















typedef struct _PARTITION_INFORMATION {
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER PartitionLength;
    DWORD HiddenSectors;
    DWORD PartitionNumber;
    BYTE  PartitionType;
    BOOLEAN BootIndicator;
    BOOLEAN RecognizedPartition;
    BOOLEAN RewritePartition;
} PARTITION_INFORMATION, *PPARTITION_INFORMATION;







typedef struct _SET_PARTITION_INFORMATION {
    BYTE  PartitionType;
} SET_PARTITION_INFORMATION, *PSET_PARTITION_INFORMATION;






typedef struct _DRIVE_LAYOUT_INFORMATION {
    DWORD PartitionCount;
    DWORD Signature;
    PARTITION_INFORMATION PartitionEntry[1];
} DRIVE_LAYOUT_INFORMATION, *PDRIVE_LAYOUT_INFORMATION;






typedef struct _VERIFY_INFORMATION {
    LARGE_INTEGER StartingOffset;
    DWORD Length;
} VERIFY_INFORMATION, *PVERIFY_INFORMATION;






typedef struct _REASSIGN_BLOCKS {
    WORD   Reserved;
    WORD   Count;
    DWORD BlockNumber[1];
} REASSIGN_BLOCKS, *PREASSIGN_BLOCKS;






























#pragma warning(disable:4103)

#pragma pack(push,1)








typedef struct _REASSIGN_BLOCKS_EX {
    WORD   Reserved;
    WORD   Count;
    LARGE_INTEGER BlockNumber[1];
} REASSIGN_BLOCKS_EX, *PREASSIGN_BLOCKS_EX;



























#pragma warning(disable:4103)

#pragma pack(pop)




































































































































































































































































































































































































































typedef struct _HISTOGRAM_BUCKET {
    DWORD       Reads;
    DWORD       Writes;
} HISTOGRAM_BUCKET, *PHISTOGRAM_BUCKET;



typedef struct _DISK_HISTOGRAM {
    LARGE_INTEGER   DiskSize;
    LARGE_INTEGER   Start;
    LARGE_INTEGER   End;
    LARGE_INTEGER   Average;
    LARGE_INTEGER   AverageRead;
    LARGE_INTEGER   AverageWrite;
    DWORD           Granularity;
    DWORD           Size;
    DWORD           ReadCount;
    DWORD           WriteCount;
    PHISTOGRAM_BUCKET  Histogram;
} DISK_HISTOGRAM, *PDISK_HISTOGRAM;























typedef struct _DISK_PERFORMANCE {
        LARGE_INTEGER BytesRead;
        LARGE_INTEGER BytesWritten;
        LARGE_INTEGER ReadTime;
        LARGE_INTEGER WriteTime;
        LARGE_INTEGER IdleTime;
        DWORD ReadCount;
        DWORD WriteCount;
        DWORD QueueDepth;
        DWORD SplitCount;
        LARGE_INTEGER QueryTime;
        DWORD   StorageDeviceNumber;
        WCHAR   StorageManagerName[8];
} DISK_PERFORMANCE, *PDISK_PERFORMANCE;







typedef struct _DISK_RECORD {
   LARGE_INTEGER ByteOffset;
   LARGE_INTEGER StartTime;
   LARGE_INTEGER EndTime;
   PVOID VirtualAddress;
   DWORD NumberOfBytes;
   BYTE  DeviceNumber;
   BOOLEAN ReadRequest;
} DISK_RECORD, *PDISK_RECORD;






typedef struct _DISK_LOGGING {
    BYTE  Function;
    PVOID BufferAddress;
    DWORD BufferSize;
} DISK_LOGGING, *PDISK_LOGGING;





































typedef enum _BIN_TYPES {
    RequestSize,
    RequestLocation
} BIN_TYPES;





typedef struct _BIN_RANGE {
    LARGE_INTEGER StartValue;
    LARGE_INTEGER Length;
} BIN_RANGE, *PBIN_RANGE;





typedef struct _PERF_BIN {
    DWORD NumberOfBins;
    DWORD TypeOfBin;
    BIN_RANGE BinsRanges[1];
} PERF_BIN, *PPERF_BIN ;





typedef struct _BIN_COUNT {
    BIN_RANGE BinRange;
    DWORD BinCount;
} BIN_COUNT, *PBIN_COUNT;





typedef struct _BIN_RESULTS {
    DWORD NumberOfBins;
    BIN_COUNT BinCounts[1];
} BIN_RESULTS, *PBIN_RESULTS;























































































































































































typedef  enum _ELEMENT_TYPE {
    AllElements,        
    ChangerTransport,   
    ChangerSlot,        
    ChangerIEPort,      
    ChangerDrive,       
    ChangerDoor,        
    ChangerKeypad,      
    ChangerMaxElement   
} ELEMENT_TYPE, *PELEMENT_TYPE;

typedef  struct _CHANGER_ELEMENT {
    ELEMENT_TYPE    ElementType;
    DWORD   ElementAddress;
} CHANGER_ELEMENT, *PCHANGER_ELEMENT;

typedef  struct _CHANGER_ELEMENT_LIST {
    CHANGER_ELEMENT Element;
    DWORD   NumberOfElements;
} CHANGER_ELEMENT_LIST , *PCHANGER_ELEMENT_LIST;
























                                                       







                                                       

                                                       



                                                       








                                                       










































typedef  struct _GET_CHANGER_PARAMETERS {

    
    
    

    DWORD Size;

    
    
    

    WORD   NumberTransportElements;
    WORD   NumberStorageElements;                
    WORD   NumberCleanerSlots;                   
    WORD   NumberIEElements;
    WORD   NumberDataTransferElements;

    
    
    

    WORD   NumberOfDoors;

    
    
    
    

    WORD   FirstSlotNumber;
    WORD   FirstDriveNumber;
    WORD   FirstTransportNumber;
    WORD   FirstIEPortNumber;
    WORD   FirstCleanerSlotAddress;

    
    
    

    WORD   MagazineSize;

    
    
    
    

    DWORD DriveCleanTimeout;

    
    
    

    DWORD Features0;
    DWORD Features1;

    
    
    
    

    BYTE  MoveFromTransport;
    BYTE  MoveFromSlot;
    BYTE  MoveFromIePort;
    BYTE  MoveFromDrive;

    
    
    
    

    BYTE  ExchangeFromTransport;
    BYTE  ExchangeFromSlot;
    BYTE  ExchangeFromIePort;
    BYTE  ExchangeFromDrive;

    
    
    
    

    BYTE  LockUnlockCapabilities;

    
    
    
    

    BYTE  PositionCapabilities;

    
    
    

    BYTE  Reserved1[2];
    DWORD Reserved2[2];

} GET_CHANGER_PARAMETERS, * PGET_CHANGER_PARAMETERS;






typedef  struct _CHANGER_PRODUCT_DATA {

    
    
    

    BYTE  VendorId[8];

    
    
    

    BYTE  ProductId[16];

    
    
    

    BYTE  Revision[4];

    
    
    
    

    BYTE  SerialNumber[32];

    
    
    

    BYTE  DeviceType;

} CHANGER_PRODUCT_DATA, *PCHANGER_PRODUCT_DATA;











typedef struct _CHANGER_SET_ACCESS {

    
    
    

    CHANGER_ELEMENT Element;

    
    
    

    DWORD           Control;
} CHANGER_SET_ACCESS, *PCHANGER_SET_ACCESS;










typedef struct _CHANGER_READ_ELEMENT_STATUS {

    
    
    

    CHANGER_ELEMENT_LIST ElementList;

    
    
    

    BOOLEAN VolumeTagInfo;
} CHANGER_READ_ELEMENT_STATUS, *PCHANGER_READ_ELEMENT_STATUS;





typedef  struct _CHANGER_ELEMENT_STATUS {

    
    
    

    CHANGER_ELEMENT Element;

    
    
    
    
    

    CHANGER_ELEMENT SrcElementAddress;

    
    
    

    DWORD Flags;

    
    
    

    DWORD ExceptionCode;

    
    
    
    

    BYTE  TargetId;

    
    
    
    

    BYTE  Lun;
    WORD   Reserved;

    
    
    
    

    BYTE  PrimaryVolumeID[36];

    
    
    
    
    

    BYTE  AlternateVolumeID[36];

} CHANGER_ELEMENT_STATUS, *PCHANGER_ELEMENT_STATUS;







typedef  struct _CHANGER_ELEMENT_STATUS_EX {

    
    
    

    CHANGER_ELEMENT Element;

    
    
    
    
    

    CHANGER_ELEMENT SrcElementAddress;

    
    
    

    DWORD Flags;

    
    
    

    DWORD ExceptionCode;

    
    
    
    

    BYTE  TargetId;

    
    
    
    

    BYTE  Lun;
    WORD   Reserved;

    
    
    
    

    BYTE  PrimaryVolumeID[36];

    
    
    
    
    

    BYTE  AlternateVolumeID[36];

    
    
    
    BYTE  VendorIdentification[8];

    
    
    
    BYTE  ProductIdentification[16];

    
    
    
    BYTE  SerialNumber[32];

} CHANGER_ELEMENT_STATUS_EX, *PCHANGER_ELEMENT_STATUS_EX;








































typedef struct _CHANGER_INITIALIZE_ELEMENT_STATUS {

    
    
    

    CHANGER_ELEMENT_LIST ElementList;

    
    
    
    

    BOOLEAN BarCodeScan;
} CHANGER_INITIALIZE_ELEMENT_STATUS, *PCHANGER_INITIALIZE_ELEMENT_STATUS;






typedef struct _CHANGER_SET_POSITION {


    
    
    

    CHANGER_ELEMENT Transport;

    
    
    

    CHANGER_ELEMENT Destination;

    
    
    

    BOOLEAN         Flip;
} CHANGER_SET_POSITION, *PCHANGER_SET_POSITION;






typedef struct _CHANGER_EXCHANGE_MEDIUM {

    
    
    

    CHANGER_ELEMENT Transport;

    
    
    

    CHANGER_ELEMENT Source;

    
    
    

    CHANGER_ELEMENT Destination1;

    
    
    

    CHANGER_ELEMENT Destination2;

    
    
    

    BOOLEAN         Flip1;
    BOOLEAN         Flip2;
} CHANGER_EXCHANGE_MEDIUM, *PCHANGER_EXCHANGE_MEDIUM;






typedef struct _CHANGER_MOVE_MEDIUM {

    
    
    

    CHANGER_ELEMENT Transport;

    
    
    

    CHANGER_ELEMENT Source;

    
    
    

    CHANGER_ELEMENT Destination;

    
    
    

    BOOLEAN         Flip;
} CHANGER_MOVE_MEDIUM, *PCHANGER_MOVE_MEDIUM;











typedef  struct _CHANGER_SEND_VOLUME_TAG_INFORMATION {

    
    
    

    CHANGER_ELEMENT StartingElement;

    
    
    

    DWORD ActionCode;

    
    
    

    BYTE  VolumeIDTemplate[40];
} CHANGER_SEND_VOLUME_TAG_INFORMATION, *PCHANGER_SEND_VOLUME_TAG_INFORMATION;






typedef struct _READ_ELEMENT_ADDRESS_INFO {

    
    
    

    DWORD NumberOfElements;

    
    
    
    

    CHANGER_ELEMENT_STATUS ElementStatus[1];
} READ_ELEMENT_ADDRESS_INFO, *PREAD_ELEMENT_ADDRESS_INFO;


























typedef enum _CHANGER_DEVICE_PROBLEM_TYPE {
   DeviceProblemNone,
   DeviceProblemHardware,
   DeviceProblemCHMError,
   DeviceProblemDoorOpen,
   DeviceProblemCalibrationError,
   DeviceProblemTargetFailure,
   DeviceProblemCHMMoveError,
   DeviceProblemCHMZeroError,
   DeviceProblemCartridgeInsertError,
   DeviceProblemPositionError,
   DeviceProblemSensorError,
   DeviceProblemCartridgeEjectError,
   DeviceProblemGripperError,
   DeviceProblemDriveError
} CHANGER_DEVICE_PROBLEM_TYPE, *PCHANGER_DEVICE_PROBLEM_TYPE;



























































































































































typedef struct _PATHNAME_BUFFER {

    DWORD PathNameLength;
    WCHAR Name[1];

} PATHNAME_BUFFER, *PPATHNAME_BUFFER;





typedef struct _FSCTL_QUERY_FAT_BPB_BUFFER {

    BYTE  First0x24BytesOfBootSector[0x24];

} FSCTL_QUERY_FAT_BPB_BUFFER, *PFSCTL_QUERY_FAT_BPB_BUFFER;





























































































































































































































































































































































































typedef struct _FILE_PREFETCH {
    DWORD Type;
    DWORD Count;
    DWORDLONG Prefetch[1];
} FILE_PREFETCH, *PFILE_PREFETCH;








typedef struct _FILESYSTEM_STATISTICS {

    WORD   FileSystemType;
    WORD   Version;                     

    DWORD SizeOfCompleteStructure;      

    DWORD UserFileReads;
    DWORD UserFileReadBytes;
    DWORD UserDiskReads;
    DWORD UserFileWrites;
    DWORD UserFileWriteBytes;
    DWORD UserDiskWrites;

    DWORD MetaDataReads;
    DWORD MetaDataReadBytes;
    DWORD MetaDataDiskReads;
    DWORD MetaDataWrites;
    DWORD MetaDataWriteBytes;
    DWORD MetaDataDiskWrites;

    
    
    

} FILESYSTEM_STATISTICS, *PFILESYSTEM_STATISTICS;










typedef struct _FAT_STATISTICS {
    DWORD CreateHits;
    DWORD SuccessfulCreates;
    DWORD FailedCreates;

    DWORD NonCachedReads;
    DWORD NonCachedReadBytes;
    DWORD NonCachedWrites;
    DWORD NonCachedWriteBytes;

    DWORD NonCachedDiskReads;
    DWORD NonCachedDiskWrites;
} FAT_STATISTICS, *PFAT_STATISTICS;

typedef struct _NTFS_STATISTICS {

    DWORD LogFileFullExceptions;
    DWORD OtherExceptions;

    
    
    

    DWORD MftReads;
    DWORD MftReadBytes;
    DWORD MftWrites;
    DWORD MftWriteBytes;
    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } MftWritesUserLevel;

    WORD   MftWritesFlushForLogFileFull;
    WORD   MftWritesLazyWriter;
    WORD   MftWritesUserRequest;

    DWORD Mft2Writes;
    DWORD Mft2WriteBytes;
    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } Mft2WritesUserLevel;

    WORD   Mft2WritesFlushForLogFileFull;
    WORD   Mft2WritesLazyWriter;
    WORD   Mft2WritesUserRequest;

    DWORD RootIndexReads;
    DWORD RootIndexReadBytes;
    DWORD RootIndexWrites;
    DWORD RootIndexWriteBytes;

    DWORD BitmapReads;
    DWORD BitmapReadBytes;
    DWORD BitmapWrites;
    DWORD BitmapWriteBytes;

    WORD   BitmapWritesFlushForLogFileFull;
    WORD   BitmapWritesLazyWriter;
    WORD   BitmapWritesUserRequest;

    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
    } BitmapWritesUserLevel;

    DWORD MftBitmapReads;
    DWORD MftBitmapReadBytes;
    DWORD MftBitmapWrites;
    DWORD MftBitmapWriteBytes;

    WORD   MftBitmapWritesFlushForLogFileFull;
    WORD   MftBitmapWritesLazyWriter;
    WORD   MftBitmapWritesUserRequest;

    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } MftBitmapWritesUserLevel;

    DWORD UserIndexReads;
    DWORD UserIndexReadBytes;
    DWORD UserIndexWrites;
    DWORD UserIndexWriteBytes;

    
    
    

    DWORD LogFileReads;
    DWORD LogFileReadBytes;
    DWORD LogFileWrites;
    DWORD LogFileWriteBytes;

    struct {
        DWORD Calls;                
        DWORD Clusters;             
        DWORD Hints;                

        DWORD RunsReturned;         

        DWORD HintsHonored;         
        DWORD HintsClusters;        
        DWORD Cache;                
        DWORD CacheClusters;        
        DWORD CacheMiss;            
        DWORD CacheMissClusters;    
    } Allocate;

} NTFS_STATISTICS, *PNTFS_STATISTICS;





































































































































































































































































































































































typedef struct _DISK_EXTENT {
    DWORD           DiskNumber;
    LARGE_INTEGER   StartingOffset;
    LARGE_INTEGER   ExtentLength;
} DISK_EXTENT, *PDISK_EXTENT;





typedef struct _VOLUME_DISK_EXTENTS {
    DWORD       NumberOfDiskExtents;
    DISK_EXTENT Extents[1];
} VOLUME_DISK_EXTENTS, *PVOLUME_DISK_EXTENTS;





























#pragma once



extern "C" {



typedef DWORD ULONG;
typedef WORD UWORD;
typedef BYTE UCHAR;































































































































































































                              

                              

                              
                              

                              
                              

                              
                              
                              

                              

                              
                              











typedef struct _SCARD_IO_REQUEST{
    DWORD dwProtocol;   
    DWORD cbPciLength;  
} SCARD_IO_REQUEST, *PSCARD_IO_REQUEST, *LPSCARD_IO_REQUEST;
typedef const SCARD_IO_REQUEST *LPCSCARD_IO_REQUEST;






typedef struct {
    BYTE
        bCla,   
        bIns,   
        bP1,
        bP2,    
        bP3;    
} SCARD_T0_COMMAND, *LPSCARD_T0_COMMAND;

typedef struct {
    SCARD_IO_REQUEST ioRequest;
    BYTE
        bSw1,
        bSw2;           
    union
    {
        SCARD_T0_COMMAND CmdBytes;
        BYTE rgbHeader[5];
    };
} SCARD_T0_REQUEST;

typedef SCARD_T0_REQUEST *PSCARD_T0_REQUEST, *LPSCARD_T0_REQUEST;






typedef struct {
    SCARD_IO_REQUEST ioRequest;
} SCARD_T1_REQUEST;
typedef SCARD_T1_REQUEST *PSCARD_T1_REQUEST, *LPSCARD_T1_REQUEST;









                                                

                                                

                                                
















}









extern "C" {




typedef const BYTE *LPCBYTE;



typedef const void *LPCVOID;














__declspec(dllimport) extern const SCARD_IO_REQUEST
    g_rgSCardT0Pci,
    g_rgSCardT1Pci,
    g_rgSCardRawPci;















typedef ULONG_PTR SCARDCONTEXT;
typedef SCARDCONTEXT *PSCARDCONTEXT, *LPSCARDCONTEXT;

typedef ULONG_PTR SCARDHANDLE;
typedef SCARDHANDLE *PSCARDHANDLE, *LPSCARDHANDLE;




                                
                                

                                
                                
                                
                                

                                
                                
                                
                                

extern  LONG __stdcall
SCardEstablishContext(
      DWORD dwScope,
      LPCVOID pvReserved1,
      LPCVOID pvReserved2,
     LPSCARDCONTEXT phContext);

extern  LONG __stdcall
SCardReleaseContext(
          SCARDCONTEXT hContext);

extern  LONG __stdcall
SCardIsValidContext(
          SCARDCONTEXT hContext);























extern  LONG __stdcall
SCardListReaderGroupsA(
          SCARDCONTEXT hContext,
         LPSTR mszGroups,
       LPDWORD pcchGroups);
extern  LONG __stdcall
SCardListReaderGroupsW(
          SCARDCONTEXT hContext,
         LPWSTR mszGroups,
       LPDWORD pcchGroups);






extern  LONG __stdcall
SCardListReadersA(
          SCARDCONTEXT hContext,
          LPCSTR mszGroups,
         LPSTR mszReaders,
       LPDWORD pcchReaders);
extern  LONG __stdcall
SCardListReadersW(
          SCARDCONTEXT hContext,
          LPCWSTR mszGroups,
         LPWSTR mszReaders,
       LPDWORD pcchReaders);






extern  LONG __stdcall
SCardListCardsA(
          SCARDCONTEXT hContext,
          LPCBYTE pbAtr,
          LPCGUID rgquidInterfaces,
          DWORD cguidInterfaceCount,
         LPSTR mszCards,
       LPDWORD pcchCards);
extern  LONG __stdcall
SCardListCardsW(
          SCARDCONTEXT hContext,
          LPCBYTE pbAtr,
          LPCGUID rgquidInterfaces,
          DWORD cguidInterfaceCount,
         LPWSTR mszCards,
       LPDWORD pcchCards);





















extern  LONG __stdcall
SCardListInterfacesA(
          SCARDCONTEXT hContext,
          LPCSTR szCard,
         LPGUID pguidInterfaces,









