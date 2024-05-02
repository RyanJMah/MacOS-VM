.PHONY: all
all: vm_bundle

.PHONY: vm_bundle
vm_bundle:
	cd xcode && xcodebuild -configuration Debug -scheme InstallationTool-Swift
	cd xcode && xcodebuild -configuration Debug -scheme macOSVirtualMachineSampleApp-Swift
	xcode/Build/macOSVirtualMachineSampleApp/Build/Products/Debug/InstallationTool-Swift

.PHONY: run
run:
	xcode/Build/macOSVirtualMachineSampleApp/Build/Products/Debug/macOSVirtualMachineSampleApp.app/Contents/MacOS/macOSVirtualMachineSampleApp

.PHONY: clean
clean:
	rm -rf xcode/Build
	rm -rf VM.bundle
