# MCU name
MCU = atmega32u4

# Bootloader selection
BOOTLOADER = halfkay

# If you have Left LEDs (see
# https://geekhack.org/index.php?topic=22780.msg873819#msg873819 for
# details), include the following define:


# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = no   # Enable Bootmagic Lite
MOUSEKEY_ENABLE  = yes  # Mouse keys
EXTRAKEY_ENABLE  = no  # Audio control and System control
CONSOLE_ENABLE   = yes   # Console for debug
COMMAND_ENABLE   = no   # Commands for debug and configuration
DEBUG_ENABLE   = yes   # Commands for debug and configuration
CUSTOM_MATRIX    = lite # Custom matrix file for the ErgoDox EZ
NKRO_ENABLE      = no           # Enable N-Key Rollover
UNICODEMAP_ENABLE   = yes  # Unicode
SWAP_HANDS_ENABLE= no   # Allow swapping hands of keyboard
SEND_STRING_ENABLE = yes


RGB_MATRIX_ENABLE = no # enable later
RGB_MATRIX_DRIVER = IS31FL3731
DEBOUNCE_TYPE = sym_eager_pr

# project specific files
SRC += matrix.c \
	   led_i2c.c
QUANTUM_LIB_SRC += i2c_master.c

LAYOUTS = ergodox

# Disable unsupported hardware
AUDIO_SUPPORTED = no
BACKLIGHT_SUPPORTED = no

MOUSE_SHARED_EP = no

DEFAULT_FOLDER = ergodox_ez/base
