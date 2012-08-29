
###########################################################
## Set up the comments for auto-generated files
##  $(call add-head-comments,filename)
###########################################################
define add-head-comments
$(shell echo "/**********************************************************" >> $(1)) \
$(shell echo " *      Auto-generated file" >> $(1)) \
$(shell echo " *" >> $(1)) \
$(shell echo " * DO NOT Modify the file by hand." >> $(1)) \
$(shell echo " **********************************************************/" >> $(1)) \
$(shell echo >> $(1))
endef

###########################################################
## Add header file check
##  $(call add-define-check,filename,def)
###########################################################
define add-define-check
$(shell echo "#ifndef "$(2) >> $(1)) \
$(shell echo "#define "$(2) >> $(1)) \
$(shell echo >> $(1))
endef

###########################################################
## Add endif
##  $(call add-endif,filename)
###########################################################
define add-endif
$(shell echo >> $(1)) \
$(shell echo "#endif /* "$(2)" */" >> $(1))
endef

###########################################################
## Convert makefile item to definition in header file
##  $(call convert-makefile-item-to-h, header_file, def, 
##	makefile_item_name, makefile_item_val)
###########################################################
define convert-makefile-item-to-h
$(shell echo "#"$(2)" "$(3)"	"$(4) >> $(1))
endef
