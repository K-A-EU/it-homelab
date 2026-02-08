# DHCP Snooping Option 82 Issue

Problem:
A host failed to renew its IP address after DHCP snooping was enabled in the lab.

Investigation:
DHCP requests were reaching the DHCP server, but the renewal process failed when traffic passed through multiple switches. DHCP snooping was adding Option 82 (relay agent information), which caused the DHCP server to reject the request.

Fix:
Disabled insertion of DHCP Option 82 using:
no ip dhcp snooping information option

Result:
The host successfully renewed its IP address.

Lesson:
DHCP snooping can break DHCP renewals if the DHCP server does not expect or allow Option 82. Always verify whether Option 82 is required before enabling DHCP snooping in a network.
