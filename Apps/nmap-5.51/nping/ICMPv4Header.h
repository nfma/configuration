
/***************************************************************************
 * ICMPv4Header.cc -- The ICMPv4Header Class represents an ICMP version 4  *
 * packet. It contains methods to set any header field. In general, these  *
 * methods do error checkings and byte order conversion.                   *
 *                                                                         *
 ***********************IMPORTANT NMAP LICENSE TERMS************************
 *                                                                         *
 * The Nmap Security Scanner is (C) 1996-2011 Insecure.Com LLC. Nmap is    *
 * also a registered trademark of Insecure.Com LLC.  This program is free  *
 * software; you may redistribute and/or modify it under the terms of the  *
 * GNU General Public License as published by the Free Software            *
 * Foundation; Version 2 with the clarifications and exceptions described  *
 * below.  This guarantees your right to use, modify, and redistribute     *
 * this software under certain conditions.  If you wish to embed Nmap      *
 * technology into proprietary software, we sell alternative licenses      *
 * (contact sales@insecure.com).  Dozens of software vendors already       *
 * license Nmap technology such as host discovery, port scanning, OS       *
 * detection, and version detection.                                       *
 *                                                                         *
 * Note that the GPL places important restrictions on "derived works", yet *
 * it does not provide a detailed definition of that term.  To avoid       *
 * misunderstandings, we consider an application to constitute a           *
 * "derivative work" for the purpose of this license if it does any of the *
 * following:                                                              *
 * o Integrates source code from Nmap                                      *
 * o Reads or includes Nmap copyrighted data files, such as                *
 *   nmap-os-db or nmap-service-probes.                                    *
 * o Executes Nmap and parses the results (as opposed to typical shell or  *
 *   execution-menu apps, which simply display raw Nmap output and so are  *
 *   not derivative works.)                                                *
 * o Integrates/includes/aggregates Nmap into a proprietary executable     *
 *   installer, such as those produced by InstallShield.                   *
 * o Links to a library or executes a program that does any of the above   *
 *                                                                         *
 * The term "Nmap" should be taken to also include any portions or derived *
 * works of Nmap.  This list is not exclusive, but is meant to clarify our *
 * interpretation of derived works with some common examples.  Our         *
 * interpretation applies only to Nmap--we don't speak for other people's  *
 * GPL works.                                                              *
 *                                                                         *
 * If you have any questions about the GPL licensing restrictions on using *
 * Nmap in non-GPL works, we would be happy to help.  As mentioned above,  *
 * we also offer alternative license to integrate Nmap into proprietary    *
 * applications and appliances.  These contracts have been sold to dozens  *
 * of software vendors, and generally include a perpetual license as well  *
 * as providing for priority support and updates as well as helping to     *
 * fund the continued development of Nmap technology.  Please email        *
 * sales@insecure.com for further information.                             *
 *                                                                         *
 * As a special exception to the GPL terms, Insecure.Com LLC grants        *
 * permission to link the code of this program with any version of the     *
 * OpenSSL library which is distributed under a license identical to that  *
 * listed in the included docs/licenses/OpenSSL.txt file, and distribute   *
 * linked combinations including the two. You must obey the GNU GPL in all *
 * respects for all of the code used other than OpenSSL.  If you modify    *
 * this file, you may extend this exception to your version of the file,   *
 * but you are not obligated to do so.                                     *
 *                                                                         *
 * If you received these files with a written license agreement or         *
 * contract stating terms other than the terms above, then that            *
 * alternative license agreement takes precedence over these comments.     *
 *                                                                         *
 * Source is provided to this software because we believe users have a     *
 * right to know exactly what a program is going to do before they run it. *
 * This also allows you to audit the software for security holes (none     *
 * have been found so far).                                                *
 *                                                                         *
 * Source code also allows you to port Nmap to new platforms, fix bugs,    *
 * and add new features.  You are highly encouraged to send your changes   *
 * to nmap-dev@insecure.org for possible incorporation into the main       *
 * distribution.  By sending these changes to Fyodor or one of the         *
 * Insecure.Org development mailing lists, it is assumed that you are      *
 * offering the Nmap Project (Insecure.Com LLC) the unlimited,             *
 * non-exclusive right to reuse, modify, and relicense the code.  Nmap     *
 * will always be available Open Source, but this is important because the *
 * inability to relicense code has caused devastating problems for other   *
 * Free Software projects (such as KDE and NASM).  We also occasionally    *
 * relicense the code to third parties as discussed above.  If you wish to *
 * specify special license conditions of your contributions, just say so   *
 * when you send them.                                                     *
 *                                                                         *
 * This program is distributed in the hope that it will be useful, but     *
 * WITHOUT ANY WARRANTY; without even the implied warranty of              *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License v2.0 for more details at                         *
 * http://www.gnu.org/licenses/gpl-2.0.html , or in the COPYING file       *
 * included with Nmap.                                                     *
 *                                                                         *
 ***************************************************************************/
#ifndef ICMPv4HEADER_H
#define ICMPv4HEADER_H 1

#include "NetworkLayerElement.h"

/* ICMP types and codes. These defines were originally taken from  Slirp 1.0
 * source file ip_icmp.h  http://slirp.sourceforge.net/ (BSD licensed) and
 * then, partially modified for Nping                                        */
#define ICMP_ECHOREPLY               0     /* Echo reply                     */
#define ICMP_UNREACH                 3     /* Destination unreachable:       */
#define    ICMP_UNREACH_NET            0   /*  --> Bad network               */
#define    ICMP_UNREACH_HOST           1   /*  --> Bad host                  */
#define    ICMP_UNREACH_PROTOCOL       2   /*  --> Bad protocol              */
#define    ICMP_UNREACH_PORT           3   /*  --> Bad port                  */
#define    ICMP_UNREACH_NEEDFRAG       4   /*  --> DF flag caused pkt drop   */
#define    ICMP_UNREACH_SRCFAIL        5   /*  --> Source route failed       */
#define    ICMP_UNREACH_NET_UNKNOWN    6   /*  --> Unknown network           */
#define    ICMP_UNREACH_HOST_UNKNOWN   7   /*  --> Unknown host              */
#define    ICMP_UNREACH_ISOLATED       8   /*  --> Source host isolated      */
#define    ICMP_UNREACH_NET_PROHIB     9   /*  --> Prohibited access         */
#define    ICMP_UNREACH_HOST_PROHIB    10  /*  --> Prohibited access         */
#define    ICMP_UNREACH_TOSNET         11  /*  --> Bad TOS for network       */
#define    ICMP_UNREACH_TOSHOST        12  /*  --> Bad TOS for host          */
#define    ICMP_UNREACH_COMM_PROHIB    13  /*  --> Prohibited communication  */
#define    ICMP_UNREACH_HOSTPRECEDENCE 14  /*  --> Host precedence violation */
#define    ICMP_UNREACH_PRECCUTOFF     15  /*  --> Precedence cutoff         */
#define ICMP_SOURCEQUENCH            4     /* Source Quench.                 */
#define ICMP_REDIRECT                5     /* Redirect:                      */
#define    ICMP_REDIRECT_NET           0   /*  --> For the network           */
#define    ICMP_REDIRECT_HOST          1   /*  --> For the host              */
#define    ICMP_REDIRECT_TOSNET        2   /*  --> For the TOS and network   */
#define    ICMP_REDIRECT_TOSHOST       3   /*  --> For the TOS and host      */
#define ICMP_ECHO                    8     /* Echo request                   */
#define ICMP_ROUTERADVERT            9     /* Router advertisement           */
#define    ICMP_ROUTERADVERT_MOBILE    16  /* Used by mobile IP agents       */
#define ICMP_ROUTERSOLICIT           10    /* Router solicitation            */
#define ICMP_TIMXCEED                11    /* Time exceeded:                 */
#define    ICMP_TIMXCEED_INTRANS       0   /*  --> TTL==0 in transit         */
#define    ICMP_TIMXCEED_REASS         1   /*  --> TTL==0 in reassembly      */
#define ICMP_PARAMPROB               12    /* Parameter problem              */
#define    ICMM_PARAMPROB_POINTER      0   /*  --> Pointer shows the problem */
#define    ICMP_PARAMPROB_OPTABSENT    1   /*  --> Option missing            */
#define    ICMP_PARAMPROB_BADLEN       2   /*  --> Bad datagram length       */
#define ICMP_TSTAMP                  13    /* Timestamp request              */
#define ICMP_TSTAMPREPLY             14    /* Timestamp reply                */
#define ICMP_INFO                    15    /* Information request            */
#define ICMP_INFOREPLY               16    /* Information reply              */
#define ICMP_MASK                    17    /* Address mask request           */
#define ICMP_MASKREPLY               18    /* Address mask reply             */
#define ICMP_TRACEROUTE              30    /* Traceroute                     */
#define    ICMP_TRACEROUTE_SUCCESS     0   /*  --> Dgram sent to next router */
#define    ICMP_TRACEROUTE_DROPPED     1   /*  --> Dgram was dropped         */


#define ICMP_STD_HEADER_LEN 8
#define ICMP_PAYLOAD_LEN 1500


class ICMPv4Header : public NetworkLayerElement {

    private:
    
        struct nping_icmpv4_hdr {
            u8 type;                     /* ICMP Message Type                        */
            u8 code;                     /* ICMP Message Code                        */
            u16 checksum;                /* Checksum                                 */
            union{
                u32 unused;              /* Dest unreach/Source quench/Time exceeded */
                u32 addr;                /* Redirect                                 */
                u8 pointer8_unused24[4]; /* Parameter problem                        */
                u8 num8_size8_time16[4]; /* Router advertisement                     */
                u16 id_seq[2];           /* Echo/Timestamp/Mask                      */
                u16 id_unused[2];        /* Traceroute                               */
                u32 f32;                 /* Generic name. One 32 bit word            */
                u16 f16[2];              /* Generic name. Two 16 bit words           */
                u8 f8[4];                /* Generic name. Four 8 bit workds          */
            }h3;          
            u8 data[ICMP_PAYLOAD_LEN]; /* Note -- first 4-12 bytes can be used for ICMP header */
        }__attribute__((__packed__));

        typedef struct nping_icmpv4_hdr nping_icmpv4_hdr_t;

        nping_icmpv4_hdr_t h;
        
        int routeradventries; /* Internal count for Router Adverstisement entries */

    public:
 
        /* Misc */
        ICMPv4Header();
        ~ICMPv4Header();
        void reset();
        void zero();
        u8 *getBufferPointer();
        int storeRecvData(const u8 *buf, size_t len);

        /* ICMP Type */
        int setType(u8 val);
        u8 getType();
        bool validateType();
        bool validateType(u8 val);

        /* Code */
        int setCode(u8 c);
        u8 getCode();
        bool validateCode();
        bool validateCode(u8 type, u8 code);

        /* Checksum */
        int setSum();
        int setSum(u16 s);
        int setSumRandom();
        u16 getSum();

        /* Dest unreach/Source quench/Time exceeded */
        int setUnused(u32 val);
        u32 getUnused();

        /* Redirect */
        int setPreferredRouter(struct in_addr ipaddr);
        u32 getPreferredRouter();

        /* Parameter problem */
        int setPointer(u8 val);
        u8 getPointer();

        /* Router Solicitation */
        int setReserved( u32 val );
        u32 getReserved();

        /* Router advertisement */
        int setNumAddresses(u8 val);
        u8 getNumAddresses();
        int setAddrEntrySize(u8 val);
        u8 getAddrEntrySize();
        int setLifetime(u16 val);
        u16 getLifetime();
        int addRouterAdvEntry(struct in_addr raddr, u32 pref);
        u8 *getRouterAdvEntries(int *num);
        int clearRouterAdvEntries();

        /* Echo/Timestamp/Mask */
        int setIdentifier(u16 val);
        u16 getIdentifier();
        int setSequence(u16 val);
        u16 getSequence();

        /* Timestamp only */
        int setOriginateTimestamp(u32 t);
        u32 getOriginateTimestamp();
        int setReceiveTimestamp(u32 t);
        u32 getReceiveTimestamp();
        int setTransmitTimestamp(u32 t);
        u32 getTransmitTimestamp();

        /* Traceroute */
        int setIDNumber(u16 val);
        u16 getIDNumber();

        /* Payload */
        int addPayload(const u8 *src, int len);
        int addPayload(const char *src);

        /* Misc */
        int getICMPHeaderLengthFromType( u8 type );

}; /* End of class ICMPv4Header */

#endif