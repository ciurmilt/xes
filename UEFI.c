#include <efi.h>
#include <efilib.h>

EFI_STATUS
EFIAPI
efi_main (EFI_HANDLE ImageHandle, EFI_SYSTEM_TABLE *SystemTable) {
    EFI_INPUT_KEY Key;
    
    InitializeLib(ImageHandle, SystemTable);
    Print(L"Hello, Welcome install the XES system for Desktop Computer! (UEFI START)\n");
    Print(L"Now, Please input Enter to NEXT.\n");

    while (1) {
        if (SystemTable->ConIn->ReadKeyStroke(SystemTable->ConIn, &Key) == EFI_SUCCESS) {
            if (Key.UnicodeChar == CHAR_CARRIAGE_RETURN) {
                Print(L"Enter key pressed, continuing...\n");
                break;
            }
        }
    }

    Print(L"Test End.\n");
    return EFI_SUCCESS;
}
