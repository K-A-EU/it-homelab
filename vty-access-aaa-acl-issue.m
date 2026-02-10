# VTY Access Issue Due to AAA and ACL Configuration

Context:
Access to a pre-configured router was required via remote management (VTY). The device had existing security configurations applied before my changes.

Problem:
Remote access to the router was not possible. SSH was disabled, and after enabling it, VTY access still failed.

Investigation:
- Verified SSH was not configured and enabled it
- Noted the platform did not support `login local` on VTY lines
- Confirmed AAA was required for authentication
- Implemented local AAA authentication and applied it to VTY lines
- Access still failed after correct authentication configuration

Fix:
- Identified an existing access control list already applied to the VTY lines
- Reviewed the ACL and found my source IP address was not permitted
- Added my IP address to the permitted list

Result:
VTY access via SSH was successfully established.

Lesson:
When troubleshooting remote access issues, authentication configuration and access control must both be verified. Even correct AAA and SSH configuration will fail if VTY access is restricted by an existing ACL.
