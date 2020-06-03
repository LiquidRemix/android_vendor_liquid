# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2019 The LiquidRemix ROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Liquid OTA update package

GREEN := \e[32m
RED := \e[31m
DEFAULT := \e[39m
BOLD := \e[1m
UNDERLINE := \e[4m
RESET := \e[0m

LIQUID_TARGET_PACKAGE := $(PRODUCT_OUT)/liquid_remix-$(LIQUID_VERSION).zip

.PHONY: otapackage liquid bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
liquid: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(LIQUID_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(LIQUID_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(LIQUID_TARGET_PACKAGE).md5sum
	@echo -e "$(RESET)$(RED)_____________________________________"
	@echo -e "_________________$(BOLD)$(GREEN)00$(RESET)$(RED)__________________"
	@echo -e "________________$(BOLD)$(GREEN)0000$(RESET)$(RED)_________________"
	@echo -e "_______________$(BOLD)$(GREEN)000000$(RESET)$(RED)________________"
	@echo -e "____$(BOLD)$(GREEN)00$(RESET)$(RED)_________$(BOLD)$(GREEN)000000$(RESET)$(RED)__________$(BOLD)$(GREEN)00$(RESET)$(RED)____"
	@echo -e "_____$(BOLD)$(GREEN)0000$(RESET)$(RED)______$(BOLD)$(GREEN)000000$(RESET)$(RED)______$(BOLD)$(GREEN)00000$(RESET)$(RED)_____"
	@echo -e "_____$(BOLD)$(GREEN)000000$(RESET)$(RED)____$(BOLD)$(GREEN)0000000$(RESET)$(RED)___$(BOLD)$(GREEN)0000000$(RESET)$(RED)_____"
	@echo -e "______$(BOLD)$(GREEN)000000$(RESET)$(RED)___$(BOLD)$(GREEN)0000000$(RESET)$(RED)_$(BOLD)$(GREEN)0000000$(RESET)$(RED)_______"
	@echo -e "_______$(BOLD)$(GREEN)0000000$(RESET)$(RED)_$(BOLD)$(GREEN)000000$(RESET)$(RED)_$(BOLD)$(GREEN)0000000$(RESET)$(RED)________"
	@echo -e "_________$(BOLD)$(GREEN)000000$(RESET)$(RED)_$(BOLD)$(GREEN)00000$(RESET)$(RED)_$(BOLD)$(GREEN)000000$(RESET)$(RED)_________"
	@echo -e "_$(BOLD)$(GREEN)00000$(RESET)$(RED)_____$(BOLD)$(GREEN)000000$(RESET)$(RED)_$(BOLD)$(GREEN)000$(RESET)$(RED)_$(BOLD)$(GREEN)0000$(RESET)$(RED)__$(BOLD)$(GREEN)0000000$(RESET)$(RED)__"
	@echo -e "__$(BOLD)$(GREEN)000000000$(RESET)$(RED)__$(BOLD)$(GREEN)0000$(RESET)$(RED)_$(BOLD)$(GREEN)0$(RESET)$(RED)_$(BOLD)$(GREEN)000$(RESET)$(RED)_$(BOLD)$(GREEN)0000000000$(RESET)$(RED)___"
	@echo -e "_____$(BOLD)$(GREEN)000000000$(RESET)$(RED)__$(BOLD)$(GREEN)0$(RESET)$(RED)_$(BOLD)$(GREEN)0$(RESET)$(RED)_$(BOLD)$(GREEN)0$(RESET)$(RED)_$(BOLD)$(GREEN)000000000$(RESET)$(RED)______"
	@echo -e "_________$(BOLD)$(GREEN)0000000000000000$(RESET)$(RED)____________"
	@echo -e "______________$(BOLD)$(GREEN)000$(RESET)$(RED)_$(BOLD)$(GREEN)0$(RESET)$(RED)_$(BOLD)$(GREEN)0000$(RESET)$(RED)_____________"
	@echo -e "____________$(BOLD)$(GREEN)00000$(RESET)$(RED)_$(BOLD)$(GREEN)0$(RESET)$(RED)__$(BOLD)$(GREEN)00000$(RESET)$(RED)___________"
	@echo -e "___________$(BOLD)$(GREEN)00$(RESET)$(RED)_____$(BOLD)$(GREEN)0$(RESET)$(RED)______$(BOLD)$(GREEN)00$(RESET)$(RED)__________"
	@echo -e "_____________________________________$(DEFAULT)"
	@echo "Package Complete: $(LIQUID_TARGET_PACKAGE)" >&2

bacon: liquid
