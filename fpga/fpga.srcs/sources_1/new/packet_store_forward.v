`timescale 1ns / 1ps

module packet_store_forward #(
    parameter DATA_WIDTH    = 64,
    parameter KEEP_WIDTH    = (DATA_WIDTH/8),
    parameter RX_USER_WIDTH = 1,
    parameter START_BYTE    = 42  // first UDP payload byte for Eth+IPv4+UDP, no VLAN/options
)(
    input  wire                        clk,
    input  wire                        rst,

    input  wire [1:0]                  s_start_packet,
    input  wire [DATA_WIDTH-1:0]       s_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]       s_axis_tkeep,
    input  wire                        s_axis_tvalid,
    input  wire                        s_axis_tlast,
    input  wire [RX_USER_WIDTH-1:0]    s_axis_tuser,

    output reg  [1:0]                  m_start_packet,
    output reg  [DATA_WIDTH-1:0]       m_axis_tdata,
    output reg  [KEEP_WIDTH-1:0]       m_axis_tkeep,
    output reg                         m_axis_tvalid,
    output reg                         m_axis_tlast,
    output reg  [RX_USER_WIDTH-1:0]    m_axis_tuser,
    
    input [15:0] in_cntr,
    input [15:0] out_cntr,
    input [15:0] tx_cntr
);

    reg [15:0]write_beat_counter;
    reg in_packet;
    reg packet_type_write;
    reg [15:0]local_cntr_in;
    localparam [15:0] TELEMETRY_DEST_PORT = 8888;
    localparam TELEMETRY_PACKET = 1;
    
    initial
    begin
        write_beat_counter<=0;
        packet_type_write<=0;
        local_cntr_in<=0;
    end
    always@(posedge clk)
    begin
        if (rst)
    begin
        write_beat_counter <= 0;
        packet_type_write  <= 0;
        in_packet          <= 0;
        local_cntr_in      <= 0;

    end
    else
    begin
        m_start_packet <= s_start_packet;
        m_axis_tkeep <= s_axis_tkeep;
        m_axis_tvalid <= s_axis_tvalid;
        m_axis_tlast <= s_axis_tlast;
        m_axis_tuser <= s_axis_tuser; 
        
        if (s_axis_tvalid == 1 )
        begin

            if (write_beat_counter == 4)
            begin
                if({s_axis_tdata[39:32],s_axis_tdata[47:40]} == TELEMETRY_DEST_PORT)
                begin
                    // if this is the case we will embedd information in this
                    m_axis_tdata <= s_axis_tdata;      
                    packet_type_write<=TELEMETRY_PACKET;
                end
                else
                begin
                    m_axis_tdata <= s_axis_tdata;
                    packet_type_write<=0;
                end
            end
            
            else if (write_beat_counter == 5 && packet_type_write == TELEMETRY_PACKET) //include payload information
            begin
                m_axis_tdata <= {out_cntr[7:0],out_cntr[15:8],in_cntr[7:0],in_cntr[15:8],local_cntr_in[7:0],local_cntr_in[15:8],tx_cntr[7:0],tx_cntr[15:8]};    
            end
       
            else
            begin
                m_axis_tdata <=s_axis_tdata;
            end
            
            
            // control signals to signal start of packet
            if(s_axis_tlast == 1)
            begin
                write_beat_counter<=0;
                if (in_cntr == 0)
                begin
                    local_cntr_in<=0;
                end
                else 
                begin
                    local_cntr_in<=local_cntr_in+1;
                end
                
            end
            else
            begin
                write_beat_counter<=write_beat_counter+1;
            end
            
        end
        
        // need to write parser to do some stuff 
        // should be a bram store packet_send_update
        // we should send this data only when a control packet is sent
        //          
    end
    end
    
endmodule







/// Uncomment code starting here

//reg [10:0]w_add_ptr; // placeholder for BRAM meta data address while writing packets
//reg [14:0]base_add;

//// packet data to bram signals
//reg [14:0]w_add;
//reg [14:0]n_w_add;
//reg [66:0]data_in;
//reg [14:0]r_add;
//wire [66:0]data_out;
//reg w_en;

//// meta data signals
//reg [48:0] data_in_meta;
//wire [48:0] data_out_meta;
//reg [10:0] w_add_meta;
//reg [10:0] r_add_meta;
//reg w_en_meta;

//reg [10:0] packet_count; // to determine whether or not to send packets
//reg [14:0]add_ptr_meta; // will keep track of the first beat of the packet being written
//reg [1:0]packet_type_write; // to analyse what kind of packet while writing
//reg [1:0]packet_type_read; // to analyse what kind of packet while reading
//reg [66:0]baki; // to store the last beat of the packet while sending CFH header
//reg [15:0]udp_length_updated;
//reg [15:0]ip_length_updated;
//reg [15:0]cksum_read_old; // to store the checksum of the packet while reading
//reg [15:0] ip_cksum_write;
//reg [15:0] ip_cksum_read_old;
//wire [15:0] ip_cksum_read_new;


//// telemetry data
//reg [4:0] cpu_info;
//reg [4:0] total_in_q;
//reg [4:0] max_cap;
//reg [4:0] memory_usage;
//reg [4:0] max_retry_in_count;
//reg [4:0] max_retry_out_count;
//reg [4:0] max_retry_per_req;
//reg [31:0]rdma_auth;
//reg [7:0] experiment_threshold; 
//reg [7:0]score;

//// debug
//reg [15:0]time_stamp;
//reg [15:0]seq_no_read;


//bram bram_inst (
//    .clk      (clk),
//    .rst      (rst),
//    .r_add    (r_add[13:0]),
//    .data_out (data_out),
//    .data_in  (data_in),
//    .w_add    (w_add[13:0]),
//    .write_en (w_en)
//);

//bram_meta bran_meta_inst(
//.clk(clk),
//.rst(1'b0),
//.r_add(r_add_meta),
//.data_out(data_out_meta),
//.data_in(data_in_meta),
//.w_add(w_add_meta),
//.write_en(w_en_meta)
//);

//wire [15:0] udp_checksum_updated;

//udp_checksum_update_cfh udp_checksum_inst (

//    .clk              (clk),

//    .rst              (rst),

//    .old_udp_checksum (cksum_read_old),

//    .rdma_auth        (rdma_auth),

//    .new_udp_checksum (udp_checksum_updated)

//);



//ipv4_checksum_add_18 ipv4_checksum_inst (

//    .old_ip_checksum (ip_cksum_read_old),

//    .new_ip_checksum (ip_cksum_read_new)

//);

//// UDP DEST_PORT
//localparam [15:0] NEW_DEST_PORT = 49112;
//localparam [15:0] OLD_DEST_PORT = 4793;
//localparam [15:0] TELEMETRY_DEST_PORT = 8888;

//// Packet types
//localparam [1:0]RDMA_PACKET = 0;
//localparam [1:0]TELEMETRY_PACKET = 1;
//localparam [1:0]NORMAL_PACKET = 2;

//// state read
//localparam [1:0] SEND = 0;
//localparam [1:0] INTRO_DELAY = 1;
//localparam [1:0] WARMUP = 2;
//localparam [1:0] WARMUP_WAIT = 3;

////state write
//localparam WRITE = 0;
//localparam BUFF_FULL = 1;

//// CFH header 
//localparam [7:0]  CFH_MSG     = 8'd1;
//localparam [7:0]  TTL         = 8'd4;
//localparam [31:0] LB_ID       = 32'd4;
//localparam [31:0] RDMA_CONFIG = 32'd4;
//localparam [31:0] HOST_ID     = 32'd4;
//localparam [15:0] EXTRA_LEN   = 16'd18;   // bytes to be inserted later by parent
//localparam [3:0]  THRESH      = 4'd5;


//localparam [7:0] CFH_B0 = LB_ID[7:0];
//localparam [7:0] CFH_B1 = LB_ID[15:8];
//localparam [7:0] CFH_B2 = LB_ID[23:16];
//localparam [7:0] CFH_B3 = LB_ID[31:24];


//localparam [7:0] CFH_B4 = RDMA_CONFIG[7:0];
//localparam [7:0] CFH_B5 = RDMA_CONFIG[15:8];
//localparam [7:0] CFH_B6 = RDMA_CONFIG[23:16];
//localparam [7:0] CFH_B7 = RDMA_CONFIG[31:24];


//localparam [7:0] CFH_B8 = HOST_ID[7:0];
//localparam [7:0] CFH_B9 = HOST_ID[15:8];
//localparam [7:0] CFH_B10 = HOST_ID[23:16];
//localparam [7:0] CFH_B11 = HOST_ID[31:24];


//localparam [7:0] CFH_B12 = TTL;
//localparam [7:0] CFH_B13 = CFH_MSG;
//localparam [111:0] CFH_HEADER = {CFH_B0 , CFH_B1, CFH_B2, CFH_B3, CFH_B4, CFH_B5, CFH_B6, CFH_B7, CFH_B8, CFH_B9, CFH_B10, CFH_B11, CFH_B12, CFH_B13};

//// beat counters
//reg [10:0]write_beat_counter;
//reg [10:0]read_beat_counter;

//reg [1:0]state_read;
//reg state_write;
//reg [2:0]CFH_state;


//wire start_packet;
//reg in_packet;






//initial 
//begin
//    r_add <= 0;
//    m_axis_tuser <=0;    
//    packet_count <=0;
//    w_en <= 0;
//    w_en_meta<=0;
    
//    w_add <= 15'b111111111111111;
//    n_w_add<=0;
//    add_ptr_meta<=0;
//    w_add_ptr<=0;

//    state_read <= INTRO_DELAY;
//    state_write <= WRITE;
//    CFH_state <= 0;
//    time_stamp<=0;

    
    
//    read_beat_counter<=0;
//    write_beat_counter<=0;
    
//    in_packet<=0;
    
//    r_add_meta <=0;
//    w_add_meta <=0;

//end


//wire [14:0] free_words;


//wire [14:0] used_words;


//assign used_words = w_add - r_add;
//assign free_words = 15'd16384 - used_words;
//wire space_for_packet = (free_words >= 15'd800);

//wire packet_written;

//wire packet_read;

//assign packet_written =

//    (state_write == WRITE) &&

//    s_axis_tvalid &&

//    s_axis_tlast;

//assign packet_read =

//    (data_out[2] &&

//     state_read == SEND &&

//     packet_type_read != RDMA_PACKET)

//    ||

//    (state_read == SEND &&

//     packet_type_read == RDMA_PACKET &&

//     CFH_state == 4);

//assign start_packet = !in_packet && s_axis_tvalid;

//always @(posedge clk)
//begin
////if (rst)

////    begin

////        w_add       <= 15'h7fff;

////        r_add       <= 15'd0;

////        data_in     <= 67'd0;

////        w_en        <= 1'b0;

////        w_add_ptr    <= 11'd0;

////        add_ptr_meta <= 15'd0;

////        w_add_meta   <= 11'd0;

////        r_add_meta   <= 11'd0;

////        data_in_meta <= 33'd0;

////        w_en_meta    <= 1'b0;

////        packet_count      <= 11'd0;

////        packet_type_write <= NORMAL_PACKET;

////        packet_type_read  <= NORMAL_PACKET;

////        in_packet          <= 1'b0;

////        write_beat_counter <= 8'd0;

////        read_beat_counter  <= 8'd0;

////        state_write <= WRITE;

////        state_read  <= INTRO_DELAY;

////        CFH_state   <= 3'd0;

////        m_start_packet <= 2'd0;

////        m_axis_tdata   <= 64'd0;

////        m_axis_tkeep   <= 8'd0;

////        m_axis_tvalid  <= 1'b0;

////        m_axis_tlast   <= 1'b0;

////        m_axis_tuser   <= {RX_USER_WIDTH{1'b0}};

////        baki                 <= 67'd0;

////        udp_length_updated   <= 16'd0;

////        ip_length_updated    <= 16'd0;

////        cksum_read_old       <= 16'd0;

////        cpu_info             <= 5'd0;

////        total_in_q           <= 5'd0;

////        max_cap              <= 5'd0;

////        memory_usage         <= 5'd0;

////        max_retry_in_count   <= 5'd0;

////        max_retry_out_count  <= 5'd0;

////        max_retry_per_req    <= 5'd0;

////        rdma_auth            <= 32'd0;

////        experiment_threshold <= 8'd0;

////        score                <= 8'd0;

////        base_add <= 15'd0;

////    end
////else
//begin
        
//        case ({packet_written, packet_read})

//            2'b10: packet_count <= packet_count + 1'b1;

//            2'b01: packet_count <= packet_count - 1'b1;

//            2'b11: packet_count <= packet_count;

//            default: packet_count <= packet_count;

//        endcase
        
//        time_stamp<=time_stamp+1;
//        if (space_for_packet == 0 && start_packet == 1)
//        begin
//            w_en <=0;
//            state_write <= BUFF_FULL;
//        end
        
//        else if (state_write==WRITE && s_axis_tvalid == 1)
//        begin
//            w_add <= n_w_add;
//            n_w_add<=n_w_add+1;
//            w_en <= 1;
            
//            // packet length rewrite too
            
//            // check for what kind of packet it is - rdma or telemetry - udp dest port
//            if (write_beat_counter == 1)
//            begin
//                w_en_meta<=0;
//            end
            
//            if (write_beat_counter == 3)
//            begin
//                ip_cksum_write <= {s_axis_tdata[7:0],s_axis_tdata[15:8]};
//            end
            
//            if (write_beat_counter == 4)
//            begin
//                if(({s_axis_tdata[39:32],s_axis_tdata[47:40]} == OLD_DEST_PORT) && score>experiment_threshold)
//                begin
//                    //we will change the dest port and the 
//                    data_in <= {s_axis_tdata[63:48],NEW_DEST_PORT[7:0],NEW_DEST_PORT[15:8],s_axis_tdata[31:0],s_axis_tlast,s_start_packet};
                    
                   
                    
//                    packet_type_write<=RDMA_PACKET;
                         
//                     // ptr, drp
//                end
                
//                else if({s_axis_tdata[39:32],s_axis_tdata[47:40]} == TELEMETRY_DEST_PORT)
//                begin
//                    // drop this packet info into metadata
//                    data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
                    
                  
                    
//                    packet_type_write<=TELEMETRY_PACKET;
//                end
                
//                else
//                begin
//                    data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
                    
                   
                    
//                    packet_type_write<=NORMAL_PACKET;
                    
//                end
                
//           end
            
//            else if (write_beat_counter == 5)
//            begin

//                data_in_meta<={add_ptr_meta,packet_type_write,s_axis_tdata[7:0],s_axis_tdata[15:8],ip_cksum_write};
//                w_en_meta<=1;
//                w_add_meta<=w_add_ptr-1;

//                if (packet_type_write == TELEMETRY_PACKET)
//                begin
//                    data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
//                    cpu_info <= (s_axis_tdata[16+:7]>>2);
//                    total_in_q <= (s_axis_tdata[24+:7]>>2);
//                    max_cap <= (s_axis_tdata[56+:7]>>4);
                    
//                end
//                else
//                begin
//                    data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
//                end
                
//            end
            
//            else if (write_beat_counter == 6 && packet_type_write == TELEMETRY_PACKET) // telemetry packet parsing for score
//            begin
//                w_en_meta<=0;
//                data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
//                memory_usage <= s_axis_tdata[0+:7]>>4;
//                max_retry_in_count <= s_axis_tdata[8+:7]>>3;
//                max_retry_out_count <= s_axis_tdata[24+:7]>>4;
//                max_retry_per_req <= s_axis_tdata[40+:7]>>3;
//                rdma_auth[31:16] <= {s_axis_tdata[48+:8],s_axis_tdata[56+:8]};
//            end
//            else if (write_beat_counter == 6 && packet_type_write != TELEMETRY_PACKET)
//            begin
//                w_en_meta<=0;
//                data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
//            end
            
//            else if (write_beat_counter == 7 && packet_type_write == 1) // telemetry packet parsing for score
//            begin
//                data_in <= {s_axis_tdata,s_axis_tlast,s_start_packet};
//                rdma_auth[15:0] <= {s_axis_tdata[0+:8],s_axis_tdata[8+:8]};
//                score<= cpu_info + total_in_q + max_cap + memory_usage + max_retry_in_count + max_retry_out_count  + max_retry_per_req;
//                experiment_threshold <= s_axis_tdata[24+:8];
//            end
            
            
            
//            else
//            begin
//                data_in <={s_axis_tdata,s_axis_tlast,s_start_packet};
//            end
            
            
//            // control signals to signal start of packet
//            if(s_axis_tlast == 1)
//            begin
//                in_packet<=0;
//                write_beat_counter<=0;
//            end
//            else
//            begin
//                in_packet<=1;
//                write_beat_counter<=write_beat_counter+1;
//            end
            
//            //writing address into memory
//            if (start_packet == 1)
//            begin
//                add_ptr_meta <= n_w_add; // this would store the address of the first beat of the packet that is about to come
//                w_add_ptr<=w_add_ptr+1;
//                data_in_meta<={n_w_add,NORMAL_PACKET,32'b0};
//                w_en_meta<=1;
//                w_add_meta<=w_add_ptr;
//            end
//        end
        
        
        
 
//    //end
//    else if (state_write == BUFF_FULL)
//    begin
//        data_in <= 0;
//        w_en <=0;
//        if (space_for_packet&& s_axis_tlast == 1) // this is when we have enough space for a single packet
//        begin
//            state_write <= WRITE;
//        end
//    end
    
//    else if (s_axis_tvalid ==0)
//    begin
//        w_en <= 0;
//    end
    
//   // packet count update logic
////    if (s_axis_tlast == 1 && state_write==WRITE && (data_out[2] || (state_read != SEND && data_out[2] == 1)))
////    begin
////        packet_count <= packet_count+1;
////    end
////    else if (data_out[2] == 1 && state_write==WRITE && s_axis_tlast == 1 && state_read == SEND)// packet received and send
////    begin
////        packet_count <= packet_count;
////   end
////    else if (data_out[2] == 1 && ((state_write!=WRITE && s_axis_tlast == 1)|| s_axis_tlast == 0) && state_read == SEND)
////    begin
////        packet_count <= packet_count-1;
////    end
    
    
    
//    // packet send segment
//    if (packet_count >= 1 && state_read ==  WARMUP)
//    begin
//        r_add <= data_out_meta[48:34]; 
//        packet_type_read<=data_out_meta[33:32];
//        cksum_read_old<=data_out_meta[31:16];
//        ip_cksum_read_old<=data_out_meta[15:0];
//        r_add_meta<=r_add_meta+1; // connect r_add_ptr directly to meta_data
//        state_read <= WARMUP_WAIT;
       
//    end
    
//    else if (state_read == WARMUP_WAIT)
//    begin
//        state_read <= SEND;
//        r_add <= r_add+1;
//    end
    
//    else if (state_read == SEND)
    
//    begin

            
//            if (CFH_state != 3)
//            begin
//                m_axis_tlast <= data_out[2];
//                m_axis_tkeep <= 8'b11111111;
//                m_start_packet <= data_out[1:0];
//            end

//            if(packet_type_read != TELEMETRY_PACKET)
//            begin
//                m_axis_tvalid <= 1;
//            end
//            else
//            begin
//                m_axis_tvalid <= 0;
//            end
            
//            // read_beat_counter
//            if(data_out[2]== 1 && packet_type_read != RDMA_PACKET)
//            begin
//                read_beat_counter<=0;
//            end
//            else
//            begin
//                read_beat_counter<=read_beat_counter+1;
//            end
            
            
//            // send analysis data 
            
//            // adding CFH headers to RDMA packets
//            if (packet_type_read == RDMA_PACKET && read_beat_counter == 3)
//            begin
//                m_axis_tdata <= {data_out[66:19],ip_cksum_read_new[7:0],ip_cksum_read_new[15:8]};
              
//            end
//            else if (packet_type_read == RDMA_PACKET && read_beat_counter == 5 && CFH_state == 0)
//            begin
//                m_axis_tdata <= {CFH_HEADER[47:0],udp_checksum_updated[7:0],udp_checksum_updated[15:8]};
//                CFH_state <= 1;
//                // we should stop advancing read ptr and instead reduce r_add by 1 and standby
                
                
//                r_add <= r_add-1;
//            end
//            else if (CFH_state == 1)
//            begin
//                m_axis_tdata <= CFH_HEADER[111:48];
//                r_add <= r_add+1;
//                CFH_state <=2;
//            end
//            else if (CFH_state == 2)
//            begin
//                m_axis_tdata <= {data_out[50:19],rdma_auth[7:0],rdma_auth[15:8],rdma_auth[23:16],rdma_auth[31:24]};
//                r_add <= r_add+1;
//                baki <= data_out;
//                CFH_state <= 3;
//            end
//            else if (CFH_state == 3)
//            begin
//                m_axis_tdata <= {data_out[50:3],baki[66:51]};
//                baki <= data_out;
//                if (data_out[2] == 1)
//                begin
//                    CFH_state <= 4;
//                end
//                else
//                begin
//                    r_add <= r_add+1;    
//                end
//            end
//            else if (CFH_state == 4)
//            begin
//                m_axis_tdata <= {48'b0,baki[66:51]};
//                state_read<= INTRO_DELAY;
//                m_axis_tkeep <= 8'b00000011;
//                m_axis_tlast <= 1;
//                m_start_packet <= 2'b0;
//                state_read<= INTRO_DELAY;
//                CFH_state <=0;
//                read_beat_counter<=0;
//            end

//            //
//            else if (read_beat_counter == 6 && packet_type_read == NORMAL_PACKET)

//            begin
            
////                m_axis_tdata <= {
////                      8'hAA,
////                      score,
////                      experiment_threshold,
////                      32'b0,
////                      8'hBB
////                   };
//                   m_axis_tdata<=data_out[66:3];
            
//            end
//            else if (read_beat_counter == 2 && packet_type_read == RDMA_PACKET)
//            begin
//                ip_length_updated = {data_out[10:3], data_out[18:11]} + 16'd18;
//                m_axis_tdata <= {
//                    data_out[66:19],
//                    ip_length_updated[7:0],
//                    ip_length_updated[15:8]
//                };
//            end
//            else if(read_beat_counter == 4 && packet_type_read == RDMA_PACKET)
//            begin   
//                udp_length_updated = {data_out[58:51], data_out[66:59]} + 16'd18;

//                    m_axis_tdata <= {
//                        udp_length_updated[7:0],   // output byte 7: UDP length LSB
//                        udp_length_updated[15:8],  // output byte 6: UDP length MSB
//                        data_out[50:3]             // preserve beat bytes 0-5
//                    };
//            end
                
            
//            else
//            begin
//                m_axis_tdata <= data_out[66:3];
//            end
            
            
//            // shift state at end of packet
//            if (data_out[2] == 1 && packet_type_read != RDMA_PACKET) // route for normal and telemetry packets
//            begin
//                state_read<= INTRO_DELAY;
          
//            end
//            else if (!(packet_type_read == RDMA_PACKET && read_beat_counter == 5 && CFH_state == 0) && !(CFH_state>0)) // route for normal and telemetry packets
//            begin
//                r_add <= r_add+1;
//            end
            
        
        
//    end
//    else if (state_read == INTRO_DELAY)
//    begin
//    m_axis_tvalid <= 0;
//    m_axis_tkeep <= 0;
//    m_axis_tlast <= 0;
    
//        if(packet_count >= 1)
//        begin
//            state_read <= WARMUP;
//        end
    
//    end
     
//    end
//end
//endmodule