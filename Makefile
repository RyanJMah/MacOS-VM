XCODE_DATA_DIR = xcodeDerivedData

.PHONY: all
all: vm_bundle

.PHONY: vm_bundle
vm_bundle:
	cd xcode && xcodebuild -configuration Debug -scheme InstallationTool-Swift -derivedDataPath ../$(XCODE_DATA_DIR)
	cd xcode && xcodebuild -configuration Debug -scheme macOSVirtualMachineSampleApp-Swift -derivedDataPath ../$(XCODE_DATA_DIR)
	$(XCODE_DATA_DIR)/Build/Products/Debug/InstallationTool-Swift

.PHONY: run
run:
	$(XCODE_DATA_DIR)/Build/Products/Debug/macOSVirtualMachineSampleApp.app/Contents/MacOS/macOSVirtualMachineSampleApp

.PHONY: clean
clean:
	rm -rf $(XCODE_DATA_DIR)
	rm -rf VM.bundle
