# Network

#### 1. Explain the main difference between OSI model and TCP/IP model ?

The TCP/IP or the Transmission Control Protocol/ Internet Protocol is a communication protocols suite using which network devices can be connected to the Internet.On the other hand, the Open Systems Interconnection or OSI Model is a conceptual framework, using which the functioning of a network can be described.
#### 2. Explain the application service layers and what happen when you write your url and click enter ?

The application layer is the topmost layer of the protocol hierarchy. It is the layer where actual communication is initiated. It uses the services of the transport layer, the network layer, the data link layer, and the physical layer to transfer data to a remote host. You type a URL in your browser and press Enter. Browser looks up IP address for the domain. Browser initiates TCP connection with the server. Browser sends the HTTP request to the server.
#### 3. Explain what is a domain name and the relation between the DNS and the @IP address ?

A domain name is your website name. A domain name is the address where Internet users can access your website. A domain name is used for finding and identifying computers on the Internet. Computers use IP addresses, which are a series of number. Web browsers interact through Internet Protocol (IP) addresses. DNS translates domain names to IP addresses so browsers can load Internet resources. Each device connected to the Internet has a unique IP address which other machines use to find the device.
#### 4. Explain the TCP interconnection between your local host and the server ?

Assigns a local port number and interface to the socket. connect(remote IP:port). Establishes a TCP connection to a local socket and a remote host.
#### 5. How data transfer over internet (TCP Packet) ?

When the sending TCP wants to establish connections, it sends a segment called a SYN to the peer TCP protocol running on the receiving host. The receiving TCP returns a segment called an ACK to acknowledge the successful receipt of the segment. The sending TCP sends another ACK segment, then proceeds to send the data.
