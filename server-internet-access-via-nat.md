# Server Internet Access via NAT in Segmented Network

Context:
A Debian server required outbound internet access to update package repositories. The environment used an internal BGP-based network that I did not directly administer, and there was no existing internet breakout.

Problem:
The server could not reach external repositories while still needing access to internal network resources. Adding a default gateway alone did not work due to existing routing constraints.

Approach:
- Introduced a router with cellular connectivity providing a public IP
- Connected the router to the internal network via Layer 2 switching
- Implemented NAT for internet-bound traffic while preserving internal routing paths
- Adjusted DNS configuration on the Debian server to ensure external name resolution

Result:
The server successfully accessed external Debian repositories while maintaining connectivity to internal network services.

Lesson:
In segmented or partially managed networks, selective NAT combined with correct DNS configuration can provide controlled internet access without disrupting existing routing or BGP-based infrastructure.
