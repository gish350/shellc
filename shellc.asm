.386
.model flat, stdcall
option casemap:none


.data
.code
start:
    assume fs:nothing
    xor ebx, ebx
    mov ebx,   fs:[30h]       ; go to PEB through TEB
    mov ebx, dword ptr [ebx + 0ch]   ; address of PEB's _PEB_LDR_DATA substructure
    mov ebx, dword ptr [ebx + 14h]   ; The _PEB_LDR_DATA structure contains a field named InMemoryOrderModuleList that represents a structure of type LIST_ENTRY
    mov ebx, dword ptr [ebx]
    mov ebx, dword ptr [ebx]
    mov ebx, dword ptr [ebx + 10h]   ; The third element of _LDR_DATA_TABLE_ENTRY linked list corresponds to the kernel32.dll library
    mov eax, ebx

end start