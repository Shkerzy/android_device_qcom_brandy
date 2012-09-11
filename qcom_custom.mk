ifeq ($(QCOM_CUSTOM),true)
QCOM_CUSTOM_GEN_HEADER			:= true
TARGET_PREBUILT_THIRD_PARTY_APPS	:= true

QCOM_CUSTOM_INCLUDE			:= device/qcom/$(TARGET_DEVICE)/include
QCOM_CUSTOM_KERNEL_INCLUDE		:= kernel/arch/arm/mach-msm/include/mach

# debug level(0-2) for lk
# define CRITICAL 0
# define ALWAYS 0
# define INFO 1
# define SPEW 2
QCOM_CUSTOM_LK_DEBUG_LEVEL		:= 2

QCOM_CUSTOM_LCD				:= hx8352 rm68042 r61581 ili9481b
# QCOM_CUSTOM_LCD_IF information should be mddi or lcdc or ebi2 or mipi
QCOM_CUSTOM_LCD_IF			:= lcdc

# QCOM_CUSTOM_FLASH information should be <nand/nor>_<size>_block_<block_size>
QCOM_CUSTOM_FLASH			:= nand_block_128k_page_2048

TARGET_BOARD_MACHTYPE			:= 2706

ifneq (, $(findstring block_128k, $(QCOM_CUSTOM_FLASH)))
BOARD_FLASH_BLOCK_SIZE			:= 0x20000
endif

ifneq (, $(findstring block_16k, $(QCOM_CUSTOM_FLASH)))
BOARD_FLASH_BLOCK_SIZE			:= 0x4000
endif

ifneq (, $(findstring block_256k, $(QCOM_CUSTOM_FLASH)))
BOARD_FLASH_BLOCK_SIZE			:= 0x40000
endif

ifneq (, $(findstring page_512, $(QCOM_CUSTOM_FLASH)))
BOARD_KERNEL_PAGESIZE			:= 512
endif

ifneq (, $(findstring page_2048, $(QCOM_CUSTOM_FLASH)))
BOARD_KERNEL_PAGESIZE			:= 2048
endif

ifneq (, $(findstring page_4096, $(QCOM_CUSTOM_FLASH)))
BOARD_KERNEL_PAGESIZE			:= 4096
endif

BOARD_SPLASH_PARTITION_SIZE		:= 1048576	#0x00100000	# 1 MB
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 6029312	#0x005C0000	# 6 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE	:= 178257920	#0x0AA00000	# 170 MB
BOARD_CACHEIMAGE_PARTITION_SIZE		:= 67108864 	#0x04000000	# 64 MB
BOARD_MISC_PARTITION_SIZE		:= 1048576	#0x00100000	# 1 MB
BOARD_USERDATAIMAGE_PARTITION_SIZE	:= 536870912	#0x20000000	# 512 MB fake size and should be decided by LK
BOARD_PERSISTIMAGE_PARTITION_SIZE	:= 2097152	#0x00200000	# 2 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 5242880	#0x00500000	# 5 MB
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE	:= 4194304	#0x00400000	# not used on the board

# include definitions makefile
BOARD_DEFINITION_MK			:= device/qcom/$(TARGET_DEVICE)/definitions.mk
include $(BOARD_DEFINITION_MK)

# board_partitions_h
board_partitions_h                          := $(QCOM_CUSTOM_INCLUDE)/board_partitions.h
ifeq ($(QCOM_CUSTOM_GEN_HEADER),true)
$(shell rm -rf $(board_partitions_h))
$(call add-head-comments,$(board_partitions_h))
$(call add-define-check,$(board_partitions_h),board_partitions_h)
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_SPLASH_PARTITION_SIZE,\
        $(BOARD_SPLASH_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_BOOTIMAGE_PARTITION_SIZE,\
        $(BOARD_BOOTIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_SYSTEMIMAGE_PARTITION_SIZE,\
        $(BOARD_SYSTEMIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_CACHEIMAGE_PARTITION_SIZE,\
        $(BOARD_CACHEIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_MISC_PARTITION_SIZE,\
        $(BOARD_MISC_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_USERDATAIMAGE_PARTITION_SIZE,\
        $(BOARD_USERDATAIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_PERSISTIMAGE_PARTITION_SIZE,\
        $(BOARD_PERSISTIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_RECOVERYIMAGE_PARTITION_SIZE,\
        $(BOARD_RECOVERYIMAGE_PARTITION_SIZE))
$(call convert-makefile-item-to-h,$(board_partitions_h),define,BOARD_TOMBSTONESIMAGE_PARTITION_SIZE,\
        $(BOARD_TOMBSTONESIMAGE_PARTITION_SIZE))
$(call add-endif,$(board_partitions_h),board_partitions_h)
endif

# board_gpio_h

# board_input_h

# generate board_memory_h file
board_memory_h				:= $(QCOM_CUSTOM_INCLUDE)/board_memory.h
ifeq ($(QCOM_CUSTOM_GEN_HEADER),true)
$(shell rm -rf $(board_memory_h))
$(call add-head-comments,$(board_memory_h))
$(call add-define-check,$(board_memory_h),board_memory_h)
$(call convert-makefile-item-to-h,$(board_memory_h),define,BOARD_KERNEL_PAGESIZE,\
	$(BOARD_KERNEL_PAGESIZE))
$(call convert-makefile-item-to-h,$(board_memory_h),define,BOARD_FLASH_BLOCK_SIZE,\
	$(BOARD_FLASH_BLOCK_SIZE))
$(call add-endif,$(board_memory_h),board_memory_h)
endif

# generate board_common_h file
board_common_h				:= $(QCOM_CUSTOM_INCLUDE)/board_common.h
ifeq ($(QCOM_CUSTOM_GEN_HEADER),true)
$(shell rm -rf $(board_common_h))
$(call add-head-comments,$(board_common_h))
$(call add-define-check,$(board_common_h),board_common_h)
$(call convert-makefile-item-to-h,$(board_common_h),define,BOARD_KERNEL_BASE,\
	$(BOARD_KERNEL_BASE))
$(call convert-makefile-item-to-h,$(board_common_h),define,TARGET_BOARD_MACHTYPE,\
	$(TARGET_BOARD_MACHTYPE))
$(call convert-makefile-item-to-h,$(board_common_h),define,BOARD_KERNEL_PAGESIZE,\
        $(BOARD_KERNEL_PAGESIZE))
$(call convert-makefile-item-to-h,$(board_common_h),define,BOARD_KERNEL_BASE,\
        $(BOARD_KERNEL_BASE))
$(call add-endif,$(board_common_h),board_common_h)
endif

# copy custom include files to kernel
#$(shell cp -af $(QCOM_CUSTOM_INCLUDE)/board_*.h $(QCOM_CUSTOM_KERNEL_INCLUDE))

endif
