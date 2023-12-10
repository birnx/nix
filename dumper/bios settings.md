# bios settings
I'm running a VFIO setup on a X570 Aorus Elite with no patches so there's something wrong in your setup. You shouldn't need a new motherboard for VFIO.

Have you enabled all necessary settings in the UEFI? Some of them are on "Auto" by default but that's not enough. This is what I've changed (UEFI version F20):

Settings -> IO Ports -> Initial Display Output -> PCIe 2 Slot

Tweaker -> Advanced CPU Settings -> SVM Mode -> Enabled

Settings -> Miscellaneous -> IOMMU -> Enabled

Settings -> NBIO Common Options -> IOMMU -> Enabled

Settings -> NBIO Common Options -> ACS Enable -> Enable

Settings -> NBIO Common Options -> Enable AER Cap -> Enable