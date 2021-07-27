contract Contract {
    function main() {
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        memory[0x1c:0x3c] = msg.data[0x00:0x20];
        var var0 = memory[0x00:0x20];
    
        if (msg.value) { revert(memory[0x00:0x00]); }
    
        if (var0 == 0x83b43589) {
            // Dispatch table entry for 0x83b43589 (unknown)
            memory[0x0220:0x0240] = msg.sender;
            memory[0x0240:0x0260] = msg.sender;
            memory[0x0260:0x0280] = 0x00;
            goto label_0124;
        } else if (var0 == 0xa5b81fdf) {
            // Dispatch table entry for 0xa5b81fdf (unknown)
            memory[0x0240:0x0260] = msg.sender;
            memory[0x0260:0x0280] = 0x00;
        
            if (msg.data[0xa4:0xc4] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0220:0x0240] = msg.data[0xa4:0xc4];
            goto label_0124;
        } else if (var0 == 0x538baeab) {
            // Dispatch table entry for 0x538baeab (unknown)
            memory[0x0260:0x0280] = 0x00;
        
            if (msg.data[0xa4:0xc4] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0220:0x0240] = msg.data[0xa4:0xc4];
        
            if (msg.data[0xc4:0xe4] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0240:0x0260] = msg.data[0xc4:0xe4];
            goto label_0124;
        } else if (var0 != 0x1bb6364e) {
            if (var0 == 0x25829410) {
                // Dispatch table entry for 0x25829410 (unknown)
                memory[0x0140:0x0160] = 0x05;
                memory[0x0160:0x0180] = 0x302e342e33000000000000000000000000000000000000000000000000000000;
                var1 = 0x0140;
                var temp93 = memory[var1:var1 + 0x20] + 0x20;
                var2 = temp93;
                var temp94;
                temp94, memory[0x01e0:0x01e0 + var2] = address(0x04).call.gas(msg.gas)(memory[var1:var1 + var2]);
            
                if (!temp94) { revert(memory[0x00:0x00]); }
            
                var temp95 = memory[0x01e0:0x0200];
                var temp96 = (temp95 + 0x1f) - temp95 - 0x01 % 0x20 - temp95;
                memory[temp95 + 0x0200:temp95 + 0x0200 + temp96] = msg.data[msg.data.length:msg.data.length + temp96];
                memory[0x01c0:0x01e0] = 0x20;
                var temp97 = memory[0x01e0:0x0200] + 0x40;
                return memory[0x01c0:0x01c0 + (temp97 + 0x1f) - temp97 - 0x01 % 0x20];
            } else if (var0 == 0xc47f0027) {
                // Dispatch table entry for setName(string)
                memory[0x0140:0x018a] = msg.data[msg.data[0x04:0x24] + 0x04:msg.data[0x04:0x24] + 0x04 + 0x4a];
            
                if (msg.data[msg.data[0x04:0x24] + 0x04:msg.data[0x04:0x24] + 0x04 + 0x20] > 0x2a) { revert(memory[0x00:0x00]); }
            
                if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0140;
                var2 = var1;
                memory[0xc0:0xe0] = 0x00;
                var3 = keccak256(memory[0xc0:0xe0]);
                var temp90 = memory[var2:var2 + 0x20] + 0x20;
                var4 = temp90;
                var5 = 0x0120;
                memory[var5:var5 + 0x20] = 0x00;
                var6 = 0x03;
            
                if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_08B0; }
            
            label_08B4:
                storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                var temp91 = var5;
                var temp92 = memory[temp91:temp91 + 0x20] + 0x01;
                memory[temp91:temp91 + 0x20] = temp92;
            
                if (var6 == temp92) { stop(); }
            
                if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_08B4; }
            
            label_08B0:
                stop();
            } else if (var0 == 0xb84c8246) {
                // Dispatch table entry for setSymbol(string)
                memory[0x0140:0x0174] = msg.data[msg.data[0x04:0x24] + 0x04:msg.data[0x04:0x24] + 0x04 + 0x34];
            
                if (msg.data[msg.data[0x04:0x24] + 0x04:msg.data[0x04:0x24] + 0x04 + 0x20] > 0x14) { revert(memory[0x00:0x00]); }
            
                if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0140;
                var2 = var1;
                memory[0xc0:0xe0] = 0x01;
                var3 = keccak256(memory[0xc0:0xe0]);
                var temp87 = memory[var2:var2 + 0x20] + 0x20;
                var4 = temp87;
                var5 = 0x0120;
                memory[var5:var5 + 0x20] = 0x00;
                var6 = 0x02;
            
                if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_0946; }
            
            label_094A:
                storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                var temp88 = var5;
                var temp89 = memory[temp88:temp88 + 0x20] + 0x01;
                memory[temp88:temp88 + 0x20] = temp89;
            
                if (var6 == temp89) { stop(); }
            
                if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_094A; }
            
            label_0946:
                stop();
            } else if (var0 != 0xab033ea9) {
                if (var0 != 0x238efcbc) {
                    if (var0 != 0xd4a22bde) {
                        if (var0 != 0xec38a862) {
                            if (var0 != 0x7a550365) {
                                if (var0 != 0xbdc8144b) {
                                    if (var0 != 0x70897b23) {
                                        if (var0 != 0xfe56e232) {
                                            if (var0 != 0x8a0dac4a) {
                                                if (var0 != 0x14c64402) {
                                                    if (var0 == 0x94148415) {
                                                        // Dispatch table entry for 0x94148415 (unknown)
                                                        memory[0x0120:0x0140] = 0x00;
                                                    
                                                        if (msg.data[memory[0x0120:0x0140] + 0x04:memory[0x0120:0x0140] + 0x04 + 0x20] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                    
                                                    label_0E2D:
                                                        memory[0x0120:0x0140] = memory[0x0120:0x0140] + 0x20;
                                                    
                                                        if (memory[0x0120:0x0140] >= 0x0280) {
                                                            memory[0x0160:0x0180] = storage[0x08];
                                                            memory[0x0180:0x01a0] = storage[0x07];
                                                            memory[0x0140:0x0160] = 0x00;
                                                            var1 = 0x0140;
                                                            var2 = 0x0120;
                                                            memory[var2:var2 + 0x20] = 0x00;
                                                            var3 = 0x02;
                                                        
                                                            if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0E81; }
                                                        
                                                        label_0E89:
                                                            var temp73 = var2;
                                                            var temp74 = memory[temp73:temp73 + 0x20] + 0x01;
                                                            memory[temp73:temp73 + 0x20] = temp74;
                                                        
                                                            if (var3 == temp74) { goto label_0E99; }
                                                        
                                                            if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0E89; }
                                                        
                                                        label_0E81:
                                                            memory[var1:var1 + 0x20] = 0x01;
                                                        
                                                        label_0E99:
                                                        
                                                            if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                        
                                                            memory[0x0140:0x0540] = msg.data[msg.data.length:msg.data.length + 0x0400];
                                                            var1 = 0x0540;
                                                            memory[var1:var1 + 0x20] = 0x00;
                                                            var2 = 0x14;
                                                            var3 = 0x04;
                                                            var4 = memory[0x0540:0x0560];
                                                        
                                                            if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                        
                                                        label_0ED0:
                                                        
                                                            if (msg.data[var4 * 0x20 + var3:var4 * 0x20 + var3 + 0x20]) {
                                                                var3 = 0x00;
                                                                var4 = memory[0x0540:0x0560];
                                                            
                                                                if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                            
                                                                memory[0xc0:0xe0] = 0x0d;
                                                            
                                                                if (!(storage[keccak256(memory[0xc0:0xe0]) + var4] ~ var3)) { revert(memory[0x00:0x00]); }
                                                            
                                                                var3 = 0x00;
                                                                var4 = 0x01;
                                                                var5 = 0x0c;
                                                                var6 = 0x04;
                                                                var7 = memory[0x0540:0x0560];
                                                            
                                                                if (var7 >= 0x14) { revert(memory[0x00:0x00]); }
                                                            
                                                                memory[0xe0:0x0100] = msg.data[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20];
                                                                memory[0xc0:0xe0] = var5;
                                                                memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                            
                                                                if (storage[keccak256(memory[0xc0:0xe0]) + var4] <= var3) { revert(memory[0x00:0x00]); }
                                                            
                                                                var3 = 0x1f;
                                                                var4 = 0x04;
                                                                var5 = memory[0x0540:0x0560];
                                                            
                                                                if (var5 >= 0x14) { revert(memory[0x00:0x00]); }
                                                            
                                                                memory[0x0560:0x0580] = msg.data[var5 * 0x20 + var4:var5 * 0x20 + var4 + 0x20] & var3;
                                                                var3 = 0x0580;
                                                                memory[var3:var3 + 0x20] = 0x00;
                                                                var4 = 0x20;
                                                                var temp75 = memory[0x0560:0x0580];
                                                                var5 = temp75;
                                                                var6 = memory[0x0580:0x05a0];
                                                            
                                                                if (var5 + var6 < var5) { revert(memory[0x00:0x00]); }
                                                            
                                                            label_0FAF:
                                                                memory[0x05a0:0x05c0] = (var5 + var6) % 0x20;
                                                                var5 = 0x04;
                                                                var6 = memory[0x0540:0x0560];
                                                            
                                                                if (var6 >= 0x14) { revert(memory[0x00:0x00]); }
                                                            
                                                                var5 = msg.data[var6 * 0x20 + var5:var6 * 0x20 + var5 + 0x20];
                                                                var6 = 0x0140;
                                                                var7 = memory[0x05a0:0x05c0];
                                                            
                                                                if (var7 >= 0x20) { revert(memory[0x00:0x00]); }
                                                            
                                                                if (!(memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] ~ var5)) { revert(memory[0x00:0x00]); }
                                                            
                                                                var5 = 0x0140;
                                                                var6 = memory[0x05a0:0x05c0];
                                                            
                                                                if (var6 >= 0x20) { revert(memory[0x00:0x00]); }
                                                            
                                                                if (memory[var6 * 0x20 + var5:var6 * 0x20 + var5 + 0x20]) {
                                                                    var temp76 = var3;
                                                                    var temp77 = memory[temp76:temp76 + 0x20] + 0x01;
                                                                    memory[temp76:temp76 + 0x20] = temp77;
                                                                
                                                                    if (var4 != temp77) {
                                                                        var temp78 = memory[0x0560:0x0580];
                                                                        var5 = temp78;
                                                                        var6 = memory[0x0580:0x05a0];
                                                                    
                                                                        if (var5 + var6 >= var5) { goto label_0FAF; }
                                                                        else { revert(memory[0x00:0x00]); }
                                                                    } else {
                                                                    label_1063:
                                                                        var3 = 0x04;
                                                                        var4 = memory[0x0540:0x0560];
                                                                    
                                                                        if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                    
                                                                        var3 = msg.data[var4 * 0x20 + var3:var4 * 0x20 + var3 + 0x20];
                                                                        var4 = memory[0x0540:0x0560];
                                                                    
                                                                        if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                    
                                                                        memory[0xc0:0xe0] = 0x0d;
                                                                        storage[keccak256(memory[0xc0:0xe0]) + var4] = var3;
                                                                        var temp79 = var1;
                                                                        var temp80 = memory[temp79:temp79 + 0x20] + 0x01;
                                                                        memory[temp79:temp79 + 0x20] = temp80;
                                                                    
                                                                        if (var2 != temp80) {
                                                                            var3 = 0x04;
                                                                            var4 = memory[0x0540:0x0560];
                                                                        
                                                                            if (var4 < 0x14) { goto label_0ED0; }
                                                                            else { revert(memory[0x00:0x00]); }
                                                                        } else {
                                                                        label_10AB:
                                                                            memory[0x0540:0x0560] = msg.data[0x04:0x24];
                                                                            memory[0x0560:0x0580] = msg.data[0x24:0x44];
                                                                            memory[0x0580:0x05a0] = msg.data[0x44:0x64];
                                                                            memory[0x05a0:0x05c0] = msg.data[0x64:0x84];
                                                                            memory[0x05c0:0x05e0] = msg.data[0x84:0xa4];
                                                                            memory[0x05e0:0x0600] = msg.data[0xa4:0xc4];
                                                                            memory[0x0600:0x0620] = msg.data[0xc4:0xe4];
                                                                            memory[0x0620:0x0640] = msg.data[0xe4:0x0104];
                                                                            memory[0x0640:0x0660] = msg.data[0x0104:0x0124];
                                                                            memory[0x0660:0x0680] = msg.data[0x0124:0x0144];
                                                                            memory[0x0680:0x06a0] = msg.data[0x0144:0x0164];
                                                                            memory[0x06a0:0x06c0] = msg.data[0x0164:0x0184];
                                                                            memory[0x06c0:0x06e0] = msg.data[0x0184:0x01a4];
                                                                            memory[0x06e0:0x0700] = msg.data[0x01a4:0x01c4];
                                                                            memory[0x0700:0x0720] = msg.data[0x01c4:0x01e4];
                                                                            memory[0x0720:0x0740] = msg.data[0x01e4:0x0204];
                                                                            memory[0x0740:0x0760] = msg.data[0x0204:0x0224];
                                                                            memory[0x0760:0x0780] = msg.data[0x0224:0x0244];
                                                                            memory[0x0780:0x07a0] = msg.data[0x0244:0x0264];
                                                                            memory[0x07a0:0x07c0] = msg.data[0x0264:0x0284];
                                                                            log(memory[0x0540:0x07c0], [0x695ac3ac73f08f2002284ffe563cefe798ee2878a5e04219522e2e99eb89d168]);
                                                                            stop();
                                                                        }
                                                                    }
                                                                } else {
                                                                    var5 = 0x04;
                                                                    var6 = memory[0x0540:0x0560];
                                                                
                                                                    if (var6 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                
                                                                    var5 = msg.data[var6 * 0x20 + var5:var6 * 0x20 + var5 + 0x20];
                                                                    var6 = 0x0140;
                                                                    var7 = memory[0x05a0:0x05c0];
                                                                
                                                                    if (var7 >= 0x20) { revert(memory[0x00:0x00]); }
                                                                
                                                                    memory[var7 * 0x20 + var6:var7 * 0x20 + var6 + 0x20] = var5;
                                                                    goto label_1063;
                                                                }
                                                            } else {
                                                                var3 = memory[0x0540:0x0560];
                                                            
                                                                if (var3 >= 0x14) { revert(memory[0x00:0x00]); }
                                                            
                                                                memory[0xc0:0xe0] = 0x0d;
                                                            
                                                                if (!storage[keccak256(memory[0xc0:0xe0]) + var3]) { goto label_10AB; }
                                                                else { revert(memory[0x00:0x00]); }
                                                            }
                                                        } else if (!(msg.data[memory[0x0120:0x0140] + 0x04:memory[0x0120:0x0140] + 0x04 + 0x20] >> 0xa0)) { goto label_0E2D; }
                                                        else { revert(memory[0x00:0x00]); }
                                                    } else if (var0 != 0xa9059cbb) {
                                                        if (var0 != 0x23b872dd) {
                                                            if (var0 != 0x095ea7b3) {
                                                                if (var0 != 0x39509351) {
                                                                    if (var0 != 0xa457c2d7) {
                                                                        if (var0 != 0x9fd5a6cf) {
                                                                            if (var0 == 0x01e1d114) {
                                                                                // Dispatch table entry for totalAssets()
                                                                                var1 = 0x06;
                                                                                // Unhandled termination
                                                                            } else if (var0 == 0xd0e30db0) {
                                                                                // Dispatch table entry for deposit()
                                                                                memory[0x0140:0x0160] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                                                                                memory[0x0160:0x0180] = msg.sender;
                                                                                goto label_197F;
                                                                            } else if (var0 == 0xb6b55f25) {
                                                                                // Dispatch table entry for deposit(uint256)
                                                                                memory[0x0160:0x0180] = msg.sender;
                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                goto label_197F;
                                                                            } else if (var0 == 0x6e553f65) {
                                                                                // Dispatch table entry for deposit(uint256,address)
                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                            
                                                                                if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0160:0x0180] = msg.data[0x24:0x44];
                                                                            
                                                                            label_197F:
                                                                            
                                                                                if (storage[0x1b]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                storage[0x1b] = 0x01;
                                                                            
                                                                                if (storage[0x0e]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x01a0:0x01c0] = address(this);
                                                                                memory[0x01c0:0x01e0] = 0x00;
                                                                                memory[0x0180:0x01a0] = 0x00;
                                                                                var1 = 0x0180;
                                                                                var2 = 0x0120;
                                                                                memory[var2:var2 + 0x20] = 0x00;
                                                                                var3 = 0x02;
                                                                            
                                                                                if (memory[0x0160:0x0180] == memory[memory[0x0120:0x0140] * 0x20 + 0x01a0:memory[0x0120:0x0140] * 0x20 + 0x01a0 + 0x20]) { goto label_19D5; }
                                                                            
                                                                            label_19DD:
                                                                                var temp48 = var2;
                                                                                var temp49 = memory[temp48:temp48 + 0x20] + 0x01;
                                                                                memory[temp48:temp48 + 0x20] = temp49;
                                                                            
                                                                                if (var3 == temp49) { goto label_19ED; }
                                                                            
                                                                                if (memory[0x0160:0x0180] != memory[memory[0x0120:0x0140] * 0x20 + 0x01a0:memory[0x0120:0x0140] * 0x20 + 0x01a0 + 0x20]) { goto label_19DD; }
                                                                            
                                                                            label_19D5:
                                                                                memory[var1:var1 + 0x20] = 0x01;
                                                                            
                                                                            label_19ED:
                                                                            
                                                                                if (memory[0x0180:0x01a0]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0180:0x01a0] = memory[0x0140:0x0160];
                                                                            
                                                                                if (memory[0x0180:0x01a0] != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                                                                                    var1 = storage[0x0f];
                                                                                    var2 = memory[0x0140:0x0160];
                                                                                    var3 = memory[0x0160:0x0180];
                                                                                    var4 = memory[0x0180:0x01a0];
                                                                                    var5 = 0x06;
                                                                                    // Unhandled termination
                                                                                } else {
                                                                                    var1 = storage[0x0f];
                                                                                    var2 = memory[0x0140:0x0160];
                                                                                    var3 = memory[0x0160:0x0180];
                                                                                    var4 = memory[0x0180:0x01a0];
                                                                                    var5 = 0x06;
                                                                                    // Unhandled termination
                                                                                }
                                                                            } else if (var0 == 0x75de2902) {
                                                                                // Dispatch table entry for 0x75de2902 (unknown)
                                                                                memory[0x0160:0x0180] = 0x70a08231;
                                                                                memory[0x0180:0x01a0] = address(this);
                                                                                var temp47;
                                                                                temp47, memory[0x01e0:0x0200] = address(storage[0x06]).staticcall.gas(msg.gas)(memory[0x017c:0x01a0]);
                                                                            
                                                                                if (!temp47) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0200:0x0220] = memory[0x01e0:0x0200];
                                                                                var1 = memory[0x0140:0x0160];
                                                                                var2 = memory[0x0160:0x0180];
                                                                                var3 = memory[0x0180:0x01a0];
                                                                                var4 = memory[0x01a0:0x01c0];
                                                                                var5 = memory[0x01c0:0x01e0];
                                                                                var6 = memory[0x01e0:0x0200];
                                                                                var7 = memory[0x0200:0x0220];
                                                                                memory[0x0220:0x0240] = memory[0x0200:0x0220];
                                                                                var8 = memory[0x0220:0x0240];
                                                                                var9 = 0x06;
                                                                                // Unhandled termination
                                                                            } else if (var0 == 0x3ccfd60b) {
                                                                                // Dispatch table entry for withdraw()
                                                                                memory[0x0140:0x0160] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                                                                                memory[0x0160:0x0180] = msg.sender;
                                                                                memory[0x0180:0x01a0] = 0x01;
                                                                                goto label_1E1D;
                                                                            } else if (var0 == 0x2e1a7d4d) {
                                                                                // Dispatch table entry for withdraw(uint256)
                                                                                memory[0x0160:0x0180] = msg.sender;
                                                                                memory[0x0180:0x01a0] = 0x01;
                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                goto label_1E1D;
                                                                            } else if (var0 == 0xf714ce) {
                                                                                // Dispatch table entry for withdraw(uint256,address)
                                                                                memory[0x0180:0x01a0] = 0x01;
                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                            
                                                                                if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0160:0x0180] = msg.data[0x24:0x44];
                                                                                goto label_1E1D;
                                                                            } else if (var0 == 0xe63697c8) {
                                                                                // Dispatch table entry for withdraw(uint256,address,uint256)
                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                            
                                                                                if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0160:0x0180] = msg.data[0x24:0x44];
                                                                                memory[0x0180:0x01a0] = msg.data[0x44:0x64];
                                                                            
                                                                            label_1E1D:
                                                                            
                                                                                if (storage[0x1b]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                storage[0x1b] = 0x01;
                                                                                memory[0x01a0:0x01c0] = memory[0x0140:0x0160];
                                                                            
                                                                                if (memory[0x0180:0x01a0] > 0x2710) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                if (memory[0x01a0:0x01c0] != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                                    memory[0xc0:0xe0] = 0x03;
                                                                                
                                                                                    if (memory[0x01a0:0x01c0] > storage[keccak256(memory[0xc0:0x0100])]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                label_1EA6:
                                                                                
                                                                                    if (memory[0x01a0:0x01c0] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    var1 = memory[0x0140:0x0160];
                                                                                    var2 = memory[0x0160:0x0180];
                                                                                    var3 = memory[0x0180:0x01a0];
                                                                                    var4 = memory[0x01a0:0x01c0];
                                                                                    var5 = memory[0x01c0:0x01e0];
                                                                                    memory[0x01e0:0x0200] = memory[0x01a0:0x01c0];
                                                                                    var6 = memory[0x01e0:0x0200];
                                                                                    var7 = 0x06;
                                                                                    // Unhandled termination
                                                                                } else {
                                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                                    memory[0xc0:0xe0] = 0x03;
                                                                                    memory[0x01a0:0x01c0] = storage[keccak256(memory[0xc0:0x0100])];
                                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                                    memory[0xc0:0xe0] = 0x03;
                                                                                
                                                                                    if (memory[0x01a0:0x01c0] <= storage[keccak256(memory[0xc0:0x0100])]) { goto label_1EA6; }
                                                                                    else { revert(memory[0x00:0x00]); }
                                                                                }
                                                                            } else if (var0 != 0x99530b06) {
                                                                                if (var0 == 0x14b4e26e) {
                                                                                    // Dispatch table entry for 0x14b4e26e (unknown)
                                                                                    memory[0x0140:0x0160] = 0x64;
                                                                                    memory[0x0160:0x0180] = 0x01;
                                                                                    goto label_24D5;
                                                                                } else if (var0 == 0xc713326c) {
                                                                                    // Dispatch table entry for 0xc713326c (unknown)
                                                                                    memory[0x0160:0x0180] = 0x01;
                                                                                    memory[0x0140:0x0160] = msg.data[0xa4:0xc4];
                                                                                    goto label_24D5;
                                                                                } else if (var0 == 0x4afa4982) {
                                                                                    // Dispatch table entry for 0x4afa4982 (unknown)
                                                                                    memory[0x0140:0x0160] = msg.data[0xa4:0xc4];
                                                                                    memory[0x0160:0x0180] = msg.data[0xc4:0xe4];
                                                                                
                                                                                label_24D5:
                                                                                
                                                                                    if (msg.data[0x04:0x24] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0xc0:0xe0] = 0x0d;
                                                                                
                                                                                    if (storage[keccak256(memory[0xc0:0xe0]) + 0x13]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (storage[0x0e]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (!(msg.data[0x04:0x24] ~ 0x00)) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                
                                                                                    if (storage[keccak256(memory[0xc0:0xe0]) + 0x01]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0x0180:0x01a0] = 0xfbfa77cf;
                                                                                    var temp42;
                                                                                    temp42, memory[0x01e0:0x0200] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x019c:0x01a0]);
                                                                                
                                                                                    if (!temp42) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (address(this) != memory[0x01e0:0x0200]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0x0180:0x01a0] = 0x1f1fcd51;
                                                                                    var temp43;
                                                                                    temp43, memory[0x01e0:0x0200] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x019c:0x01a0]);
                                                                                
                                                                                    if (!temp43) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (storage[0x06] != memory[0x01e0:0x0200]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    var1 = 0x2710;
                                                                                    var temp44 = storage[0x10];
                                                                                    var2 = temp44;
                                                                                    var3 = msg.data[0x24:0x44];
                                                                                
                                                                                    if (var2 + var3 < var2) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (var2 + var3 > var1) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (msg.data[0x44:0x64] > msg.data[0x64:0x84]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    if (msg.data[0x84:0xa4] > 0x1388) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                    var temp45 = keccak256(memory[0xc0:0xe0]);
                                                                                    storage[temp45] = msg.data[0x84:0xa4];
                                                                                    storage[temp45 + 0x01] = block.timestamp;
                                                                                    storage[temp45 + 0x02] = msg.data[0x24:0x44];
                                                                                    storage[temp45 + 0x03] = msg.data[0x44:0x64];
                                                                                    storage[temp45 + 0x04] = msg.data[0x64:0x84];
                                                                                    storage[temp45 + 0x05] = block.timestamp;
                                                                                    storage[temp45 + 0x06] = 0x00;
                                                                                    storage[temp45 + 0x07] = 0x00;
                                                                                    storage[temp45 + 0x08] = 0x00;
                                                                                    memory[0x0180:0x01a0] = msg.data[0x24:0x44];
                                                                                    memory[0x01a0:0x01c0] = msg.data[0x44:0x64];
                                                                                    memory[0x01c0:0x01e0] = msg.data[0x64:0x84];
                                                                                    memory[0x01e0:0x0200] = msg.data[0x84:0xa4];
                                                                                    log(memory[0x0180:0x0200], [0x5a6abd2af9fe6c0554fa08649e2d86e4393ff19dc304d072d38d295c9291d4dc, msg.data[0x04:0x24]]);
                                                                                    var1 = 0x10;
                                                                                    var temp46 = storage[var1];
                                                                                    var2 = temp46;
                                                                                    var3 = msg.data[0x24:0x44];
                                                                                
                                                                                    if (var2 + var3 < var2) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    storage[var1] = var2 + var3;
                                                                                    memory[0xc0:0xe0] = 0x0d;
                                                                                    storage[keccak256(memory[0xc0:0xe0]) + 0x13] = msg.data[0x04:0x24];
                                                                                    var1 = memory[0x0140:0x0160];
                                                                                    var2 = memory[0x0160:0x0180];
                                                                                    var3 = 0x06;
                                                                                    // Unhandled termination
                                                                                } else if (var0 != 0x7c6a4f24) {
                                                                                    if (var0 != 0xe722befe) {
                                                                                        if (var0 != 0x4757a156) {
                                                                                            if (var0 != 0xd0194ed6) {
                                                                                                if (var0 != 0x11bc8245) {
                                                                                                    if (var0 != 0x6cb56d19) {
                                                                                                        if (var0 == 0xa0e4af9a) {
                                                                                                            // Dispatch table entry for 0xa0e4af9a (unknown)
                                                                                                            memory[0x0140:0x0160] = msg.sender;
                                                                                                            goto label_2F5F;
                                                                                                        } else if (var0 != 0xbb994d48) {
                                                                                                            if (var0 != 0xf76e4caa) {
                                                                                                                if (var0 != 0xb22439f5) {
                                                                                                                    if (var0 == 0xbf3759b5) {
                                                                                                                        // Dispatch table entry for 0xbf3759b5 (unknown)
                                                                                                                        memory[0x0140:0x0160] = msg.sender;
                                                                                                                        goto label_32FB;
                                                                                                                    } else if (var0 != 0xbdcf36bb) {
                                                                                                                        if (var0 == 0x112c1f9b) {
                                                                                                                            // Dispatch table entry for 0x112c1f9b (unknown)
                                                                                                                            memory[0x0140:0x0160] = msg.sender;
                                                                                                                            goto label_3370;
                                                                                                                        } else if (var0 != 0xd7648013) {
                                                                                                                            if (var0 == 0x153c27c4) {
                                                                                                                                // Dispatch table entry for 0x153c27c4 (unknown)
                                                                                                                                var1 = 0x06;
                                                                                                                                // Unhandled termination
                                                                                                                            } else if (var0 == 0xd3406abd) {
                                                                                                                                // Dispatch table entry for 0xd3406abd (unknown)
                                                                                                                                memory[0x0140:0x0160] = msg.sender;
                                                                                                                                goto label_3455;
                                                                                                                            } else if (var0 != 0x33586b67) {
                                                                                                                                if (var0 == 0xa1d9bafc) {
                                                                                                                                    // Dispatch table entry for 0xa1d9bafc (unknown)
                                                                                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                                                
                                                                                                                                    if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                                                                
                                                                                                                                    if (!(storage[0x0b] ~ 0x00)) {
                                                                                                                                    label_3617:
                                                                                                                                        var temp15 = msg.data[0x04:0x24];
                                                                                                                                        var1 = temp15;
                                                                                                                                        var2 = msg.data[0x44:0x64];
                                                                                                                                    
                                                                                                                                        if (var1 + var2 < var1) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        var1 = var1 + var2;
                                                                                                                                        memory[0x0140:0x0160] = 0x70a08231;
                                                                                                                                        memory[0x0160:0x0180] = msg.sender;
                                                                                                                                        var temp16;
                                                                                                                                        temp16, memory[0x01c0:0x01e0] = address(storage[0x06]).staticcall.gas(msg.gas)(memory[0x015c:0x0180]);
                                                                                                                                    
                                                                                                                                        if (!temp16) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (memory[0x01c0:0x01e0] < var1) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (msg.data[0x24:0x44] <= 0x00) {
                                                                                                                                            var1 = memory[0x0140:0x0160];
                                                                                                                                            memory[0x0160:0x0180] = msg.sender;
                                                                                                                                            memory[0x0180:0x01a0] = msg.data[0x04:0x24];
                                                                                                                                            var2 = memory[0x0180:0x01a0];
                                                                                                                                            var3 = memory[0x0160:0x0180];
                                                                                                                                            var4 = 0x06;
                                                                                                                                            // Unhandled termination
                                                                                                                                        } else {
                                                                                                                                            memory[0x0140:0x0160] = msg.sender;
                                                                                                                                            memory[0x0160:0x0180] = msg.data[0x24:0x44];
                                                                                                                                            var1 = memory[0x0160:0x0180];
                                                                                                                                            var2 = memory[0x0140:0x0160];
                                                                                                                                            var3 = 0x06;
                                                                                                                                            // Unhandled termination
                                                                                                                                        }
                                                                                                                                    } else {
                                                                                                                                        memory[0x0140:0x0160] = 0x6e905e17;
                                                                                                                                        memory[0x0160:0x0180] = msg.sender;
                                                                                                                                        var temp17;
                                                                                                                                        temp17, memory[0x01c0:0x01e0] = address(storage[0x0b]).staticcall.gas(msg.gas)(memory[0x015c:0x0180]);
                                                                                                                                    
                                                                                                                                        if (!temp17) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (!memory[0x01c0:0x01e0]) {
                                                                                                                                            memory[0x0140:0x0160] = msg.sender;
                                                                                                                                        
                                                                                                                                            if (!address(storage[0x0b]).code.length) { revert(memory[0x00:0x00]); }
                                                                                                                                        
                                                                                                                                            memory[0x0160:0x0180] = 0x039aa250;
                                                                                                                                            memory[0x0180:0x01a0] = memory[0x0140:0x0160];
                                                                                                                                            var temp18;
                                                                                                                                            temp18, memory[0x00:0x00] = address(storage[0x0b]).call.gas(msg.gas)(memory[0x017c:0x01a0]);
                                                                                                                                        
                                                                                                                                            if (temp18) { goto label_3617; }
                                                                                                                                            else { revert(memory[0x00:0x00]); }
                                                                                                                                        } else {
                                                                                                                                            memory[0x01e0:0x0200] = msg.sender;
                                                                                                                                            var1 = memory[0x0140:0x0160];
                                                                                                                                            var2 = memory[0x0160:0x0180];
                                                                                                                                            var3 = memory[0x0180:0x01a0];
                                                                                                                                            var4 = memory[0x01a0:0x01c0];
                                                                                                                                            var5 = memory[0x01c0:0x01e0];
                                                                                                                                            var6 = memory[0x01e0:0x0200];
                                                                                                                                            var var7 = memory[0x0200:0x0220];
                                                                                                                                            memory[0x0220:0x0240] = msg.sender;
                                                                                                                                            var var8 = memory[0x0220:0x0240];
                                                                                                                                            var var9 = 0x06;
                                                                                                                                            // Unhandled termination
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                } else if (var0 == 0x01681a62) {
                                                                                                                                    // Dispatch table entry for sweep(address)
                                                                                                                                    memory[0x0140:0x0160] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                                                                                                                                    goto label_3BF5;
                                                                                                                                } else if (var0 == 0x6ea056a9) {
                                                                                                                                    // Dispatch table entry for sweep(address,uint256)
                                                                                                                                    memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                                                                                
                                                                                                                                label_3BF5:
                                                                                                                                
                                                                                                                                    if (msg.data[0x04:0x24] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                                                                                
                                                                                                                                    if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                                                                                                                                
                                                                                                                                    if (!(msg.data[0x04:0x24] ~ storage[0x06])) { revert(memory[0x00:0x00]); }
                                                                                                                                
                                                                                                                                    memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                                                                                
                                                                                                                                    if (memory[0x0160:0x0180] != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                                                                                                                                    label_3C95:
                                                                                                                                        var1 = memory[0x0140:0x0160];
                                                                                                                                        var2 = memory[0x0160:0x0180];
                                                                                                                                        memory[0x0180:0x01a0] = msg.data[0x04:0x24];
                                                                                                                                        memory[0x01a0:0x01c0] = storage[0x07];
                                                                                                                                        memory[0x01c0:0x01e0] = memory[0x0160:0x0180];
                                                                                                                                        var3 = memory[0x01c0:0x01e0];
                                                                                                                                        var4 = memory[0x01a0:0x01c0];
                                                                                                                                        var5 = memory[0x0180:0x01a0];
                                                                                                                                        var6 = 0x06;
                                                                                                                                        // Unhandled termination
                                                                                                                                    } else {
                                                                                                                                        memory[0x0180:0x01a0] = 0x70a08231;
                                                                                                                                        memory[0x01a0:0x01c0] = address(this);
                                                                                                                                        var temp14;
                                                                                                                                        temp14, memory[0x0200:0x0220] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x019c:0x01c0]);
                                                                                                                                    
                                                                                                                                        if (!temp14) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        memory[0x0160:0x0180] = memory[0x0200:0x0220];
                                                                                                                                        goto label_3C95;
                                                                                                                                    }
                                                                                                                                } else if (var0 == 0x06fdde03) {
                                                                                                                                    // Dispatch table entry for name()
                                                                                                                                    var1 = 0x00;
                                                                                                                                    memory[0xc0:0xe0] = var1;
                                                                                                                                    var2 = keccak256(memory[0xc0:0xe0]);
                                                                                                                                    var3 = 0x0180;
                                                                                                                                    var temp8 = storage[var2] + 0x20;
                                                                                                                                    var4 = temp8;
                                                                                                                                    var5 = 0x0120;
                                                                                                                                    memory[var5:var5 + 0x20] = 0x00;
                                                                                                                                    var6 = 0x03;
                                                                                                                                
                                                                                                                                    if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_3D0F; }
                                                                                                                                
                                                                                                                                label_3D13:
                                                                                                                                    memory[var3 + memory[0x0120:0x0140] * 0x20:var3 + memory[0x0120:0x0140] * 0x20 + 0x20] = storage[var2 + memory[0x0120:0x0140]];
                                                                                                                                    var temp9 = var5;
                                                                                                                                    var temp10 = memory[temp9:temp9 + 0x20] + 0x01;
                                                                                                                                    memory[temp9:temp9 + 0x20] = temp10;
                                                                                                                                
                                                                                                                                    if (var6 == temp10) { goto label_3D35; }
                                                                                                                                
                                                                                                                                    if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_3D13; }
                                                                                                                                
                                                                                                                                label_3D0F:
                                                                                                                                
                                                                                                                                label_3D35:
                                                                                                                                    var temp11 = memory[0x0180:0x01a0];
                                                                                                                                    var temp12 = (temp11 + 0x1f) - temp11 - 0x01 % 0x20 - temp11;
                                                                                                                                    memory[temp11 + 0x01a0:temp11 + 0x01a0 + temp12] = msg.data[msg.data.length:msg.data.length + temp12];
                                                                                                                                    memory[0x0160:0x0180] = 0x20;
                                                                                                                                    var temp13 = memory[0x0180:0x01a0] + 0x40;
                                                                                                                                    return memory[0x0160:0x0160 + (temp13 + 0x1f) - temp13 - 0x01 % 0x20];
                                                                                                                                } else if (var0 == 0x95d89b41) {
                                                                                                                                    // Dispatch table entry for symbol()
                                                                                                                                    var1 = 0x01;
                                                                                                                                    memory[0xc0:0xe0] = var1;
                                                                                                                                    var var2 = keccak256(memory[0xc0:0xe0]);
                                                                                                                                    var var3 = 0x0180;
                                                                                                                                    var temp2 = storage[var2] + 0x20;
                                                                                                                                    var var4 = temp2;
                                                                                                                                    var var5 = 0x0120;
                                                                                                                                    memory[var5:var5 + 0x20] = 0x00;
                                                                                                                                    var var6 = 0x02;
                                                                                                                                
                                                                                                                                    if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_3DB4; }
                                                                                                                                
                                                                                                                                label_3DB8:
                                                                                                                                    memory[var3 + memory[0x0120:0x0140] * 0x20:var3 + memory[0x0120:0x0140] * 0x20 + 0x20] = storage[var2 + memory[0x0120:0x0140]];
                                                                                                                                    var temp3 = var5;
                                                                                                                                    var temp4 = memory[temp3:temp3 + 0x20] + 0x01;
                                                                                                                                    memory[temp3:temp3 + 0x20] = temp4;
                                                                                                                                
                                                                                                                                    if (var6 == temp4) { goto label_3DDA; }
                                                                                                                                
                                                                                                                                    if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_3DB8; }
                                                                                                                                
                                                                                                                                label_3DB4:
                                                                                                                                
                                                                                                                                label_3DDA:
                                                                                                                                    var temp5 = memory[0x0180:0x01a0];
                                                                                                                                    var temp6 = (temp5 + 0x1f) - temp5 - 0x01 % 0x20 - temp5;
                                                                                                                                    memory[temp5 + 0x01a0:temp5 + 0x01a0 + temp6] = msg.data[msg.data.length:msg.data.length + temp6];
                                                                                                                                    memory[0x0160:0x0180] = 0x20;
                                                                                                                                    var temp7 = memory[0x0180:0x01a0] + 0x40;
                                                                                                                                    return memory[0x0160:0x0160 + (temp7 + 0x1f) - temp7 - 0x01 % 0x20];
                                                                                                                                } else if (var0 == 0x313ce567) {
                                                                                                                                    // Dispatch table entry for decimals()
                                                                                                                                    memory[0x00:0x20] = storage[0x02];
                                                                                                                                    return memory[0x00:0x20];
                                                                                                                                } else if (var0 != 0x70a08231) {
                                                                                                                                    if (var0 != 0xdd62ed3e) {
                                                                                                                                        if (var0 == 0x18160ddd) {
                                                                                                                                            // Dispatch table entry for totalSupply()
                                                                                                                                            memory[0x00:0x20] = storage[0x05];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 == 0xfc0c546a) {
                                                                                                                                            // Dispatch table entry for token()
                                                                                                                                            memory[0x00:0x20] = storage[0x06];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 == 0x5aa6e675) {
                                                                                                                                            // Dispatch table entry for governance()
                                                                                                                                            memory[0x00:0x20] = storage[0x07];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 == 0x88a8d602) {
                                                                                                                                            // Dispatch table entry for management()
                                                                                                                                            memory[0x00:0x20] = storage[0x08];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 == 0x452a9320) {
                                                                                                                                            // Dispatch table entry for guardian()
                                                                                                                                            memory[0x00:0x20] = storage[0x09];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 == 0xb252720b) {
                                                                                                                                            // Dispatch table entry for healthCheck()
                                                                                                                                            memory[0x00:0x20] = storage[0x0b];
                                                                                                                                            return memory[0x00:0x20];
                                                                                                                                        } else if (var0 != 0x39ebf823) {
                                                                                                                                            if (var0 == 0xc822adda) {
                                                                                                                                                // Dispatch table entry for 0xc822adda (unknown)
                                                                                                                                                var var1 = msg.data[0x04:0x24];
                                                                                                                                            
                                                                                                                                                if (var1 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                                                                                            
                                                                                                                                                memory[0xc0:0xe0] = 0x0d;
                                                                                                                                                memory[0x00:0x20] = storage[keccak256(memory[0xc0:0xe0]) + var1];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x3403c2fc) {
                                                                                                                                                // Dispatch table entry for 0x3403c2fc (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x0e];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0xecf70858) {
                                                                                                                                                // Dispatch table entry for 0xecf70858 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x0f];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0xcea55f57) {
                                                                                                                                                // Dispatch table entry for 0xcea55f57 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x10];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0xfc7b9c18) {
                                                                                                                                                // Dispatch table entry for totalDebt()
                                                                                                                                                memory[0x00:0x20] = storage[0x11];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0xc3535b52) {
                                                                                                                                                // Dispatch table entry for 0xc3535b52 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x12];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x3629c8de) {
                                                                                                                                                // Dispatch table entry for activation()
                                                                                                                                                memory[0x00:0x20] = storage[0x13];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x44b81396) {
                                                                                                                                                // Dispatch table entry for 0x44b81396 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x14];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x42232716) {
                                                                                                                                                // Dispatch table entry for 0x42232716 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x15];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x9ec5a894) {
                                                                                                                                                // Dispatch table entry for rewards()
                                                                                                                                                memory[0x00:0x20] = storage[0x16];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0xa6f7f5d6) {
                                                                                                                                                // Dispatch table entry for 0xa6f7f5d6 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x17];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 == 0x87788782) {
                                                                                                                                                // Dispatch table entry for 0x87788782 (unknown)
                                                                                                                                                memory[0x00:0x20] = storage[0x18];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (var0 != 0x7ecebe00) {
                                                                                                                                                if (var0 != 0x3644e515) { revert(memory[0x00:0x00]); }
                                                                                                                                            
                                                                                                                                                memory[0x00:0x20] = storage[0x1a];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                                                                memory[0xc0:0xe0] = 0x19;
                                                                                                                                                memory[0x00:0x20] = storage[keccak256(memory[0xc0:0x0100])];
                                                                                                                                                return memory[0x00:0x20];
                                                                                                                                            } else { revert(memory[0x00:0x00]); }
                                                                                                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                                            memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                                                            memory[0xc0:0xe0] = 0x0c;
                                                                                                                                            var temp0 = keccak256(memory[0xc0:0x0100]);
                                                                                                                                            var1 = temp0;
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0140:0x0160] = storage[keccak256(memory[0xc0:0xe0])];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0160:0x0180] = storage[keccak256(memory[0xc0:0xe0]) + 0x01];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0180:0x01a0] = storage[keccak256(memory[0xc0:0xe0]) + 0x02];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x01a0:0x01c0] = storage[keccak256(memory[0xc0:0xe0]) + 0x03];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x01c0:0x01e0] = storage[keccak256(memory[0xc0:0xe0]) + 0x04];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x01e0:0x0200] = storage[keccak256(memory[0xc0:0xe0]) + 0x05];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0200:0x0220] = storage[keccak256(memory[0xc0:0xe0]) + 0x06];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0220:0x0240] = storage[keccak256(memory[0xc0:0xe0]) + 0x07];
                                                                                                                                            memory[0xc0:0xe0] = var1;
                                                                                                                                            memory[0x0240:0x0260] = storage[keccak256(memory[0xc0:0xe0]) + 0x08];
                                                                                                                                            memory[0xc0:0xe0] = 0x0120;
                                                                                                                                            return memory[0x0140:0x0140 + memory[0xc0:0xe0]];
                                                                                                                                        } else { revert(memory[0x00:0x00]); }
                                                                                                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                                        if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                                                                                    
                                                                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                                                        memory[0xc0:0xe0] = 0x04;
                                                                                                                                        var temp1 = keccak256(memory[0xc0:0x0100]);
                                                                                                                                        memory[0xe0:0x0100] = msg.data[0x24:0x44];
                                                                                                                                        memory[0xc0:0xe0] = temp1;
                                                                                                                                        memory[0x00:0x20] = storage[keccak256(memory[0xc0:0x0100])];
                                                                                                                                        return memory[0x00:0x20];
                                                                                                                                    } else { revert(memory[0x00:0x00]); }
                                                                                                                                } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                                                    memory[0xc0:0xe0] = 0x03;
                                                                                                                                    memory[0x00:0x20] = storage[keccak256(memory[0xc0:0x0100])];
                                                                                                                                    return memory[0x00:0x20];
                                                                                                                                } else { revert(memory[0x00:0x00]); }
                                                                                                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                                                            
                                                                                                                            label_3455:
                                                                                                                                var1 = memory[0x0140:0x0160];
                                                                                                                                memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                                                                                var2 = memory[0x0160:0x0180];
                                                                                                                                var3 = 0x06;
                                                                                                                                // Unhandled termination
                                                                                                                            } else { revert(memory[0x00:0x00]); }
                                                                                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                            memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                                                        
                                                                                                                        label_3370:
                                                                                                                            var1 = memory[0x0140:0x0160];
                                                                                                                            memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                                                                            var2 = memory[0x0160:0x0180];
                                                                                                                            var3 = 0x06;
                                                                                                                            // Unhandled termination
                                                                                                                        } else { revert(memory[0x00:0x00]); }
                                                                                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                        memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                                                    
                                                                                                                    label_32FB:
                                                                                                                        var1 = memory[0x0140:0x0160];
                                                                                                                        memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                                                                        var2 = memory[0x0160:0x0180];
                                                                                                                        var3 = 0x06;
                                                                                                                        // Unhandled termination
                                                                                                                    } else { revert(memory[0x00:0x00]); }
                                                                                                                } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                    memory[0x0160:0x0180] = storage[0x08];
                                                                                                                    memory[0x0180:0x01a0] = storage[0x07];
                                                                                                                    memory[0x0140:0x0160] = 0x00;
                                                                                                                    var1 = 0x0140;
                                                                                                                    var2 = 0x0120;
                                                                                                                    memory[var2:var2 + 0x20] = 0x00;
                                                                                                                    var3 = 0x02;
                                                                                                                
                                                                                                                    if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_31E0; }
                                                                                                                
                                                                                                                label_31E8:
                                                                                                                    var temp19 = var2;
                                                                                                                    var temp20 = memory[temp19:temp19 + 0x20] + 0x01;
                                                                                                                    memory[temp19:temp19 + 0x20] = temp20;
                                                                                                                
                                                                                                                    if (var3 == temp20) { goto label_31F8; }
                                                                                                                
                                                                                                                    if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_31E8; }
                                                                                                                
                                                                                                                label_31E0:
                                                                                                                    memory[var1:var1 + 0x20] = 0x01;
                                                                                                                
                                                                                                                label_31F8:
                                                                                                                
                                                                                                                    if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                                                
                                                                                                                    var1 = 0x0140;
                                                                                                                    memory[var1:var1 + 0x20] = 0x00;
                                                                                                                    var2 = 0x14;
                                                                                                                    var3 = msg.data[0x04:0x24];
                                                                                                                    var4 = memory[0x0140:0x0160];
                                                                                                                
                                                                                                                    if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                                                                
                                                                                                                label_3228:
                                                                                                                    memory[0xc0:0xe0] = 0x0d;
                                                                                                                
                                                                                                                    if (storage[keccak256(memory[0xc0:0xe0]) + var4] != var3) {
                                                                                                                        var temp21 = var1;
                                                                                                                        var temp22 = memory[temp21:temp21 + 0x20] + 0x01;
                                                                                                                        memory[temp21:temp21 + 0x20] = temp22;
                                                                                                                    
                                                                                                                        if (var2 == temp22) { revert(memory[0x00:0x00]); }
                                                                                                                    
                                                                                                                        var3 = msg.data[0x04:0x24];
                                                                                                                        var4 = memory[0x0140:0x0160];
                                                                                                                    
                                                                                                                        if (var4 < 0x14) { goto label_3228; }
                                                                                                                        else { revert(memory[0x00:0x00]); }
                                                                                                                    } else {
                                                                                                                        var3 = 0x00;
                                                                                                                        var4 = memory[0x0140:0x0160];
                                                                                                                    
                                                                                                                        if (var4 >= 0x14) { revert(memory[0x00:0x00]); }
                                                                                                                    
                                                                                                                        memory[0xc0:0xe0] = 0x0d;
                                                                                                                        storage[keccak256(memory[0xc0:0xe0]) + var4] = var3;
                                                                                                                        var3 = memory[0x0140:0x0160];
                                                                                                                        var4 = 0x06;
                                                                                                                        // Unhandled termination
                                                                                                                    }
                                                                                                                } else { revert(memory[0x00:0x00]); }
                                                                                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                                memory[0x0160:0x0180] = storage[0x08];
                                                                                                                memory[0x0180:0x01a0] = storage[0x07];
                                                                                                                memory[0x0140:0x0160] = 0x00;
                                                                                                                var1 = 0x0140;
                                                                                                                var2 = 0x0120;
                                                                                                                memory[var2:var2 + 0x20] = 0x00;
                                                                                                                var3 = 0x02;
                                                                                                            
                                                                                                                if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_3064; }
                                                                                                            
                                                                                                            label_306C:
                                                                                                                var temp23 = var2;
                                                                                                                var temp24 = memory[temp23:temp23 + 0x20] + 0x01;
                                                                                                                memory[temp23:temp23 + 0x20] = temp24;
                                                                                                            
                                                                                                                if (var3 == temp24) { goto label_307C; }
                                                                                                            
                                                                                                                if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_306C; }
                                                                                                            
                                                                                                            label_3064:
                                                                                                                memory[var1:var1 + 0x20] = 0x01;
                                                                                                            
                                                                                                            label_307C:
                                                                                                            
                                                                                                                if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                                            
                                                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                                memory[0xc0:0xe0] = 0x0c;
                                                                                                                memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                            
                                                                                                                if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                                            
                                                                                                                memory[0x0140:0x0160] = 0x00;
                                                                                                                var1 = 0x0180;
                                                                                                                memory[var1:var1 + 0x20] = 0x00;
                                                                                                                var2 = 0x14;
                                                                                                                var temp25 = memory[0x0180:0x01a0];
                                                                                                                memory[0xc0:0xe0] = 0x0d;
                                                                                                                memory[0x0160:0x0180] = storage[keccak256(memory[0xc0:0xe0]) + temp25];
                                                                                                            
                                                                                                                if (!memory[0x0160:0x0180]) { goto label_30E5; }
                                                                                                            
                                                                                                            label_30E9:
                                                                                                            
                                                                                                                if (!(memory[0x0160:0x0180] ~ msg.data[0x04:0x24])) { revert(memory[0x00:0x00]); }
                                                                                                            
                                                                                                                var3 = 0x0140;
                                                                                                                var temp26 = memory[var3:var3 + 0x20];
                                                                                                                var4 = temp26;
                                                                                                                var5 = 0x01;
                                                                                                            
                                                                                                                if (var4 + var5 < var4) { revert(memory[0x00:0x00]); }
                                                                                                            
                                                                                                                memory[var3:var3 + 0x20] = var4 + var5;
                                                                                                                var temp27 = var1;
                                                                                                                var temp28 = memory[temp27:temp27 + 0x20] + 0x01;
                                                                                                                memory[temp27:temp27 + 0x20] = temp28;
                                                                                                            
                                                                                                                if (var2 == temp28) { goto label_312B; }
                                                                                                            
                                                                                                                var temp29 = memory[0x0180:0x01a0];
                                                                                                                memory[0xc0:0xe0] = 0x0d;
                                                                                                                memory[0x0160:0x0180] = storage[keccak256(memory[0xc0:0xe0]) + temp29];
                                                                                                            
                                                                                                                if (memory[0x0160:0x0180]) { goto label_30E9; }
                                                                                                            
                                                                                                            label_30E5:
                                                                                                            
                                                                                                            label_312B:
                                                                                                            
                                                                                                                if (memory[0x0140:0x0160] >= 0x14) { revert(memory[0x00:0x00]); }
                                                                                                            
                                                                                                                memory[0xc0:0xe0] = 0x0d;
                                                                                                                storage[keccak256(memory[0xc0:0xe0]) + 0x13] = msg.data[0x04:0x24];
                                                                                                                var1 = memory[0x0140:0x0160];
                                                                                                                var2 = 0x06;
                                                                                                                // Unhandled termination
                                                                                                            } else { revert(memory[0x00:0x00]); }
                                                                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                            memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                                                        
                                                                                                        label_2F5F:
                                                                                                            memory[0x0180:0x01a0] = memory[0x0140:0x0160];
                                                                                                            memory[0x01a0:0x01c0] = storage[0x07];
                                                                                                            memory[0x01c0:0x01e0] = storage[0x09];
                                                                                                            memory[0x0160:0x0180] = 0x00;
                                                                                                            var1 = 0x0160;
                                                                                                            var2 = 0x0120;
                                                                                                            memory[var2:var2 + 0x20] = 0x00;
                                                                                                            var3 = 0x03;
                                                                                                        
                                                                                                            if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0180:memory[0x0120:0x0140] * 0x20 + 0x0180 + 0x20]) { goto label_2F9E; }
                                                                                                        
                                                                                                        label_2FA6:
                                                                                                            var temp30 = var2;
                                                                                                            var temp31 = memory[temp30:temp30 + 0x20] + 0x01;
                                                                                                            memory[temp30:temp30 + 0x20] = temp31;
                                                                                                        
                                                                                                            if (var3 == temp31) { goto label_2FB6; }
                                                                                                        
                                                                                                            if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0180:memory[0x0120:0x0140] * 0x20 + 0x0180 + 0x20]) { goto label_2FA6; }
                                                                                                        
                                                                                                        label_2F9E:
                                                                                                            memory[var1:var1 + 0x20] = 0x01;
                                                                                                        
                                                                                                        label_2FB6:
                                                                                                        
                                                                                                            if (!memory[0x0160:0x0180]) { revert(memory[0x00:0x00]); }
                                                                                                        
                                                                                                            memory[0xe0:0x0100] = memory[0x0140:0x0160];
                                                                                                            memory[0xc0:0xe0] = 0x0c;
                                                                                                            memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                        
                                                                                                            if (!storage[keccak256(memory[0xc0:0xe0]) + 0x02]) { return memory[0x00:0x00]; }
                                                                                                        
                                                                                                            var1 = memory[0x0140:0x0160];
                                                                                                            memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                                                            var2 = memory[0x0160:0x0180];
                                                                                                            var3 = 0x06;
                                                                                                            // Unhandled termination
                                                                                                        } else { revert(memory[0x00:0x00]); }
                                                                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                        if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                                                    
                                                                                                        if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                                                                                                    
                                                                                                        if (!(msg.data[0x24:0x44] ~ 0x00)) { revert(memory[0x00:0x00]); }
                                                                                                    
                                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                                        memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                    
                                                                                                        if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                                    
                                                                                                        memory[0xe0:0x0100] = msg.data[0x24:0x44];
                                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                                        memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                    
                                                                                                        if (storage[keccak256(memory[0xc0:0xe0]) + 0x01]) { revert(memory[0x00:0x00]); }
                                                                                                    
                                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                                        var temp32 = keccak256(memory[0xc0:0x0100]);
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0140:0x0160] = storage[keccak256(memory[0xc0:0xe0])];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0160:0x0180] = storage[keccak256(memory[0xc0:0xe0]) + 0x01];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0180:0x01a0] = storage[keccak256(memory[0xc0:0xe0]) + 0x02];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x01a0:0x01c0] = storage[keccak256(memory[0xc0:0xe0]) + 0x03];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x01c0:0x01e0] = storage[keccak256(memory[0xc0:0xe0]) + 0x04];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x01e0:0x0200] = storage[keccak256(memory[0xc0:0xe0]) + 0x05];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0200:0x0220] = storage[keccak256(memory[0xc0:0xe0]) + 0x06];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0220:0x0240] = storage[keccak256(memory[0xc0:0xe0]) + 0x07];
                                                                                                        memory[0xc0:0xe0] = temp32;
                                                                                                        memory[0x0240:0x0260] = storage[keccak256(memory[0xc0:0xe0]) + 0x08];
                                                                                                        var1 = memory[0x0140:0x0160];
                                                                                                        var2 = memory[0x0160:0x0180];
                                                                                                        var3 = memory[0x0180:0x01a0];
                                                                                                        var4 = memory[0x01a0:0x01c0];
                                                                                                        var5 = memory[0x01c0:0x01e0];
                                                                                                        var6 = memory[0x01e0:0x0200];
                                                                                                        var7 = memory[0x0200:0x0220];
                                                                                                        var8 = memory[0x0220:0x0240];
                                                                                                        var9 = memory[0x0240:0x0260];
                                                                                                        memory[0x0260:0x0280] = msg.data[0x04:0x24];
                                                                                                        var var10 = memory[0x0260:0x0280];
                                                                                                        var var11 = 0x06;
                                                                                                        // Unhandled termination
                                                                                                    } else { revert(memory[0x00:0x00]); }
                                                                                                } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                    memory[0x0160:0x0180] = storage[0x08];
                                                                                                    memory[0x0180:0x01a0] = storage[0x07];
                                                                                                    memory[0x0140:0x0160] = 0x00;
                                                                                                    var1 = 0x0140;
                                                                                                    var2 = 0x0120;
                                                                                                    memory[var2:var2 + 0x20] = 0x00;
                                                                                                    var3 = 0x02;
                                                                                                
                                                                                                    if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_2BA7; }
                                                                                                
                                                                                                label_2BAF:
                                                                                                    var temp33 = var2;
                                                                                                    var temp34 = memory[temp33:temp33 + 0x20] + 0x01;
                                                                                                    memory[temp33:temp33 + 0x20] = temp34;
                                                                                                
                                                                                                    if (var3 == temp34) { goto label_2BBF; }
                                                                                                
                                                                                                    if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_2BAF; }
                                                                                                
                                                                                                label_2BA7:
                                                                                                    memory[var1:var1 + 0x20] = 0x01;
                                                                                                
                                                                                                label_2BBF:
                                                                                                
                                                                                                    if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                                
                                                                                                    log(memory[0x00:0x00], [0x2260c76a54455627b86a2d3281efbdffb1533093dcbddcbb53dea24cf3699f11, msg.data[0x04:0x24]]);
                                                                                                    storage[0x0b] = msg.data[0x04:0x24];
                                                                                                    stop();
                                                                                                } else { revert(memory[0x00:0x00]); }
                                                                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                                if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                                                                                            
                                                                                                if (msg.data[0x24:0x44] > 0x1388) { revert(memory[0x00:0x00]); }
                                                                                            
                                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                memory[0xc0:0xe0] = 0x0c;
                                                                                                memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                            
                                                                                                if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                            
                                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                                memory[0xc0:0xe0] = 0x0c;
                                                                                                memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                                storage[keccak256(memory[0xc0:0xe0])] = msg.data[0x24:0x44];
                                                                                                memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                                                log(memory[0x0140:0x0160], [0xe57488a65fa53066d4c25bac90db47dda4e5de3025ac12bf76ff07211cf7f39e, msg.data[0x04:0x24]]);
                                                                                                stop();
                                                                                            } else { revert(memory[0x00:0x00]); }
                                                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                            memory[0x0160:0x0180] = storage[0x08];
                                                                                            memory[0x0180:0x01a0] = storage[0x07];
                                                                                            memory[0x0140:0x0160] = 0x00;
                                                                                            var1 = 0x0140;
                                                                                            var2 = 0x0120;
                                                                                            memory[var2:var2 + 0x20] = 0x00;
                                                                                            var3 = 0x02;
                                                                                        
                                                                                            if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_29D6; }
                                                                                        
                                                                                        label_29DE:
                                                                                            var temp35 = var2;
                                                                                            var temp36 = memory[temp35:temp35 + 0x20] + 0x01;
                                                                                            memory[temp35:temp35 + 0x20] = temp36;
                                                                                        
                                                                                            if (var3 == temp36) { goto label_29EE; }
                                                                                        
                                                                                            if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_29DE; }
                                                                                        
                                                                                        label_29D6:
                                                                                            memory[var1:var1 + 0x20] = 0x01;
                                                                                        
                                                                                        label_29EE:
                                                                                        
                                                                                            if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                        
                                                                                            memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                            memory[0xc0:0xe0] = 0x0c;
                                                                                            memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                        
                                                                                            if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                        
                                                                                            memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                            memory[0xc0:0xe0] = 0x0c;
                                                                                            memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                        
                                                                                            if (storage[keccak256(memory[0xc0:0xe0]) + 0x03] > msg.data[0x24:0x44]) { revert(memory[0x00:0x00]); }
                                                                                        
                                                                                            memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                            memory[0xc0:0xe0] = 0x0c;
                                                                                            memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                            storage[keccak256(memory[0xc0:0xe0]) + 0x04] = msg.data[0x24:0x44];
                                                                                            memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                                            log(memory[0x0140:0x0160], [0x1796a8e0760e2de5b72e7bf64fccb7666c48ceab94cb6cae7cb7eff4b6f641ab, msg.data[0x04:0x24]]);
                                                                                            stop();
                                                                                        } else { revert(memory[0x00:0x00]); }
                                                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                        memory[0x0160:0x0180] = storage[0x08];
                                                                                        memory[0x0180:0x01a0] = storage[0x07];
                                                                                        memory[0x0140:0x0160] = 0x00;
                                                                                        var1 = 0x0140;
                                                                                        var2 = 0x0120;
                                                                                        memory[var2:var2 + 0x20] = 0x00;
                                                                                        var3 = 0x02;
                                                                                    
                                                                                        if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_28B7; }
                                                                                    
                                                                                    label_28BF:
                                                                                        var temp37 = var2;
                                                                                        var temp38 = memory[temp37:temp37 + 0x20] + 0x01;
                                                                                        memory[temp37:temp37 + 0x20] = temp38;
                                                                                    
                                                                                        if (var3 == temp38) { goto label_28CF; }
                                                                                    
                                                                                        if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_28BF; }
                                                                                    
                                                                                    label_28B7:
                                                                                        memory[var1:var1 + 0x20] = 0x01;
                                                                                    
                                                                                    label_28CF:
                                                                                    
                                                                                        if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                    
                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                        memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                    
                                                                                        if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                    
                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                        memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                    
                                                                                        if (storage[keccak256(memory[0xc0:0xe0]) + 0x04] < msg.data[0x24:0x44]) { revert(memory[0x00:0x00]); }
                                                                                    
                                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                        memory[0xc0:0xe0] = 0x0c;
                                                                                        memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                        storage[keccak256(memory[0xc0:0xe0]) + 0x03] = msg.data[0x24:0x44];
                                                                                        memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                                        log(memory[0x0140:0x0160], [0x0b728ad785976532c4aaadde09b1cba5f262a7090e83c62d2377bc405678b29c, msg.data[0x04:0x24]]);
                                                                                        stop();
                                                                                    } else { revert(memory[0x00:0x00]); }
                                                                                } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                                    memory[0x0160:0x0180] = storage[0x08];
                                                                                    memory[0x0180:0x01a0] = storage[0x07];
                                                                                    memory[0x0140:0x0160] = 0x00;
                                                                                    var1 = 0x0140;
                                                                                    var2 = 0x0120;
                                                                                    memory[var2:var2 + 0x20] = 0x00;
                                                                                    var3 = 0x02;
                                                                                
                                                                                    if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_275A; }
                                                                                
                                                                                label_2762:
                                                                                    var temp39 = var2;
                                                                                    var temp40 = memory[temp39:temp39 + 0x20] + 0x01;
                                                                                    memory[temp39:temp39 + 0x20] = temp40;
                                                                                
                                                                                    if (var3 == temp40) { goto label_2772; }
                                                                                
                                                                                    if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_2762; }
                                                                                
                                                                                label_275A:
                                                                                    memory[var1:var1 + 0x20] = 0x01;
                                                                                
                                                                                label_2772:
                                                                                
                                                                                    if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                
                                                                                    if (storage[keccak256(memory[0xc0:0xe0]) + 0x01] <= 0x00) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    var1 = 0x10;
                                                                                    var2 = storage[var1];
                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                    var3 = storage[keccak256(memory[0xc0:0xe0]) + 0x02];
                                                                                
                                                                                    if (var2 < var3) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    storage[var1] = var2 - var3;
                                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                    memory[0xc0:0xe0] = 0x0c;
                                                                                    memory[0xc0:0xe0] = keccak256(memory[0xc0:0x0100]);
                                                                                    storage[keccak256(memory[0xc0:0xe0]) + 0x02] = msg.data[0x24:0x44];
                                                                                    var1 = 0x10;
                                                                                    var temp41 = storage[var1];
                                                                                    var2 = temp41;
                                                                                    var3 = msg.data[0x24:0x44];
                                                                                
                                                                                    if (var2 + var3 < var2) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    storage[var1] = var2 + var3;
                                                                                
                                                                                    if (storage[0x10] > 0x2710) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                                    log(memory[0x0140:0x0160], [0xbda9398315c83ccef012bcaa318a2ff7b680f36429d36597bd4bc25ac11ead59, msg.data[0x04:0x24]]);
                                                                                    stop();
                                                                                } else { revert(memory[0x00:0x00]); }
                                                                            } else if (storage[0x02] < 0x4e) {
                                                                                memory[0x0140:0x0160] = 0x0a ** storage[0x02];
                                                                                var1 = memory[0x0140:0x0160];
                                                                                var2 = 0x06;
                                                                                // Unhandled termination
                                                                            } else { revert(memory[0x00:0x00]); }
                                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                            if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                                        
                                                                            memory[0x0140:0x01a1] = msg.data[msg.data[0x84:0xa4] + 0x04:msg.data[0x84:0xa4] + 0x04 + 0x61];
                                                                        
                                                                            if (msg.data[msg.data[0x84:0xa4] + 0x04:msg.data[0x84:0xa4] + 0x04 + 0x20] > 0x41) { revert(memory[0x00:0x00]); }
                                                                        
                                                                            if (!(msg.data[0x04:0x24] ~ 0x00)) { revert(memory[0x00:0x00]); }
                                                                        
                                                                            if (!msg.data[0x64:0x84]) {
                                                                                var1 = 0x01;
                                                                            
                                                                                if (var1) { goto label_1542; }
                                                                                else { revert(memory[0x00:0x00]); }
                                                                            } else if (msg.data[0x64:0x84] >= block.timestamp) {
                                                                            label_1542:
                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                memory[0xc0:0xe0] = 0x19;
                                                                                memory[0x01e0:0x0200] = storage[keccak256(memory[0xc0:0x0100])];
                                                                                memory[0x0520:0x0540] = 0x02;
                                                                                memory[0x0540:0x0560] = 0x1901000000000000000000000000000000000000000000000000000000000000;
                                                                                memory[0x07a0:0x07a2] = address(0x04).call.gas(msg.gas)(memory[0x0540:0x0542]);
                                                                                var temp50 = memory[0x0520:0x0540];
                                                                                memory[temp50 + 0x0780 + 0x20:temp50 + 0x0780 + 0x20 + 0x20] = storage[0x1a];
                                                                                var temp51 = temp50 + 0x20;
                                                                                memory[0x06a0:0x06c0] = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9;
                                                                                memory[0x06c0:0x06e0] = msg.data[0x04:0x24];
                                                                                memory[0x06e0:0x0700] = msg.data[0x24:0x44];
                                                                                memory[0x0700:0x0720] = msg.data[0x44:0x64];
                                                                                memory[0x0720:0x0740] = memory[0x01e0:0x0200];
                                                                                memory[0x0740:0x0760] = msg.data[0x64:0x84];
                                                                                memory[0x0680:0x06a0] = 0x00 + 0x20 + 0x20 + 0x20 + 0x20 + 0x20 + 0x20;
                                                                                memory[temp51 + 0x0780 + 0x20:temp51 + 0x0780 + 0x20 + 0x20] = keccak256(memory[0x0680 + 0x20:0x0680 + 0x20 + memory[0x0680:0x06a0]]);
                                                                                memory[0x0780:0x07a0] = temp51 + 0x20;
                                                                                memory[0x0200:0x0220] = keccak256(memory[0x0780 + 0x20:0x0780 + 0x20 + memory[0x0780:0x07a0]]);
                                                                                var1 = 0x00;
                                                                                var2 = 0x20;
                                                                                var3 = var1 % 0x20 + 0x0300;
                                                                            
                                                                                if (var1 + var2 > memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp52 = var1;
                                                                                memory[0x0320:0x0361] = address(0x04).call.gas(msg.gas)(memory[temp52 - temp52 % 0x20 + 0x20 + 0x0140:temp52 - temp52 % 0x20 + 0x20 + 0x0140 + 0x41]);
                                                                                var temp53 = var3;
                                                                                memory[temp53:temp53 + 0x20] = var2;
                                                                                var1 = temp53;
                                                                                var2 = memory[var1 + 0x20:var1 + 0x20 + 0x20];
                                                                                var3 = 0x00;
                                                                                var4 = memory[var1:var1 + 0x20];
                                                                            
                                                                                if (var4 i> 0x20) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp54 = var3;
                                                                                var3 = var4;
                                                                            
                                                                                if (var3 i< temp54) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0220:0x0240] = var2 / 0x0100 ** (0x20 - var3);
                                                                                var1 = 0x20;
                                                                                var2 = 0x20;
                                                                                var3 = var1 % 0x20 + 0x0320;
                                                                            
                                                                                if (var1 + var2 > memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp55 = var1;
                                                                                memory[0x0340:0x0381] = address(0x04).call.gas(msg.gas)(memory[temp55 - temp55 % 0x20 + 0x20 + 0x0140:temp55 - temp55 % 0x20 + 0x20 + 0x0140 + 0x41]);
                                                                                var temp56 = var3;
                                                                                memory[temp56:temp56 + 0x20] = var2;
                                                                                var1 = temp56;
                                                                                var2 = memory[var1 + 0x20:var1 + 0x20 + 0x20];
                                                                                var3 = 0x00;
                                                                                var4 = memory[var1:var1 + 0x20];
                                                                            
                                                                                if (var4 i> 0x20) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp57 = var3;
                                                                                var3 = var4;
                                                                            
                                                                                if (var3 i< temp57) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0240:0x0260] = var2 / 0x0100 ** (0x20 - var3);
                                                                                var1 = 0x40;
                                                                                var2 = 0x01;
                                                                                var3 = var1 % 0x20 + 0x0340;
                                                                            
                                                                                if (var1 + var2 > memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp58 = var1;
                                                                                memory[0x0360:0x03a1] = address(0x04).call.gas(msg.gas)(memory[temp58 - temp58 % 0x20 + 0x20 + 0x0140:temp58 - temp58 % 0x20 + 0x20 + 0x0140 + 0x41]);
                                                                                var temp59 = var3;
                                                                                memory[temp59:temp59 + 0x20] = var2;
                                                                                var1 = temp59;
                                                                                var2 = memory[var1 + 0x20:var1 + 0x20 + 0x20];
                                                                                var3 = 0x00;
                                                                                var4 = memory[var1:var1 + 0x20];
                                                                            
                                                                                if (var4 i> 0x20) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp60 = var3;
                                                                                var3 = var4;
                                                                            
                                                                                if (var3 i< temp60) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0x0260:0x0280] = var2 / 0x0100 ** (0x20 - var3);
                                                                                memory[0x0280:0x02a0] = memory[0x0200:0x0220];
                                                                                memory[0x02a0:0x02c0] = memory[0x0260:0x0280];
                                                                                memory[0x02c0:0x02e0] = memory[0x0220:0x0240];
                                                                                memory[0x02e0:0x0300] = memory[0x0240:0x0260];
                                                                                memory[0xc0:0xe0] = address(0x01).staticcall.gas(msg.gas)(memory[0x0280:0x0300]);
                                                                            
                                                                                if (memory[0xc0:0xe0] != msg.data[0x04:0x24]) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                memory[0xc0:0xe0] = 0x04;
                                                                                var temp61 = keccak256(memory[0xc0:0x0100]);
                                                                                memory[0xe0:0x0100] = msg.data[0x24:0x44];
                                                                                memory[0xc0:0xe0] = temp61;
                                                                                storage[keccak256(memory[0xc0:0x0100])] = msg.data[0x44:0x64];
                                                                                var temp62 = memory[0x01e0:0x0200];
                                                                                var1 = temp62;
                                                                                var2 = 0x01;
                                                                            
                                                                                if (var1 + var2 < var1) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                                memory[0xc0:0xe0] = 0x19;
                                                                                storage[keccak256(memory[0xc0:0x0100])] = var1 + var2;
                                                                                memory[0x0280:0x02a0] = msg.data[0x44:0x64];
                                                                                log(memory[0x0280:0x02a0], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.data[0x04:0x24], msg.data[0x24:0x44]]);
                                                                                memory[0x00:0x20] = 0x01;
                                                                                return memory[0x00:0x20];
                                                                            } else { revert(memory[0x00:0x00]); }
                                                                        } else { revert(memory[0x00:0x00]); }
                                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                        memory[0xe0:0x0100] = msg.sender;
                                                                        memory[0xc0:0xe0] = 0x04;
                                                                        var temp63 = keccak256(memory[0xc0:0x0100]);
                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                        memory[0xc0:0xe0] = temp63;
                                                                        var1 = keccak256(memory[0xc0:0x0100]);
                                                                        var2 = storage[var1];
                                                                        var3 = msg.data[0x24:0x44];
                                                                    
                                                                        if (var2 < var3) { revert(memory[0x00:0x00]); }
                                                                    
                                                                        storage[var1] = var2 - var3;
                                                                        memory[0xe0:0x0100] = msg.sender;
                                                                        memory[0xc0:0xe0] = 0x04;
                                                                        var temp64 = keccak256(memory[0xc0:0x0100]);
                                                                        memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                        memory[0xc0:0xe0] = temp64;
                                                                        memory[0x0140:0x0160] = storage[keccak256(memory[0xc0:0x0100])];
                                                                        log(memory[0x0140:0x0160], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, msg.data[0x04:0x24]]);
                                                                        memory[0x00:0x20] = 0x01;
                                                                        return memory[0x00:0x20];
                                                                    } else { revert(memory[0x00:0x00]); }
                                                                } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                    memory[0xc0:0xe0] = 0x04;
                                                                    var temp65 = keccak256(memory[0xc0:0x0100]);
                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                    memory[0xc0:0xe0] = temp65;
                                                                    var1 = keccak256(memory[0xc0:0x0100]);
                                                                    var temp66 = storage[var1];
                                                                    var2 = temp66;
                                                                    var3 = msg.data[0x24:0x44];
                                                                
                                                                    if (var2 + var3 < var2) { revert(memory[0x00:0x00]); }
                                                                
                                                                    storage[var1] = var2 + var3;
                                                                    memory[0xe0:0x0100] = msg.sender;
                                                                    memory[0xc0:0xe0] = 0x04;
                                                                    var temp67 = keccak256(memory[0xc0:0x0100]);
                                                                    memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                    memory[0xc0:0xe0] = temp67;
                                                                    memory[0x0140:0x0160] = storage[keccak256(memory[0xc0:0x0100])];
                                                                    log(memory[0x0140:0x0160], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, msg.data[0x04:0x24]]);
                                                                    memory[0x00:0x20] = 0x01;
                                                                    return memory[0x00:0x20];
                                                                } else { revert(memory[0x00:0x00]); }
                                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                                memory[0xe0:0x0100] = msg.sender;
                                                                memory[0xc0:0xe0] = 0x04;
                                                                var temp68 = keccak256(memory[0xc0:0x0100]);
                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                memory[0xc0:0xe0] = temp68;
                                                                storage[keccak256(memory[0xc0:0x0100])] = msg.data[0x24:0x44];
                                                                memory[0x0140:0x0160] = msg.data[0x24:0x44];
                                                                log(memory[0x0140:0x0160], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.sender, msg.data[0x04:0x24]]);
                                                                memory[0x00:0x20] = 0x01;
                                                                return memory[0x00:0x20];
                                                            } else { revert(memory[0x00:0x00]); }
                                                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                            if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
                                                        
                                                            memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                            memory[0xc0:0xe0] = 0x04;
                                                            var temp69 = keccak256(memory[0xc0:0x0100]);
                                                            memory[0xe0:0x0100] = msg.sender;
                                                            memory[0xc0:0xe0] = temp69;
                                                        
                                                            if (storage[keccak256(memory[0xc0:0x0100])] >= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) {
                                                            label_12BE:
                                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                                memory[0x0160:0x0180] = msg.data[0x24:0x44];
                                                                memory[0x0180:0x01a0] = msg.data[0x44:0x64];
                                                                var1 = memory[0x0180:0x01a0];
                                                                var2 = memory[0x0160:0x0180];
                                                                var3 = memory[0x0140:0x0160];
                                                                var4 = 0x06;
                                                                // Unhandled termination
                                                            } else {
                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                memory[0xc0:0xe0] = 0x04;
                                                                var temp70 = keccak256(memory[0xc0:0x0100]);
                                                                memory[0xe0:0x0100] = msg.sender;
                                                                memory[0xc0:0xe0] = temp70;
                                                                var1 = storage[keccak256(memory[0xc0:0x0100])];
                                                                var2 = msg.data[0x44:0x64];
                                                            
                                                                if (var1 < var2) { revert(memory[0x00:0x00]); }
                                                            
                                                                memory[0x0140:0x0160] = var1 - var2;
                                                                var temp71 = memory[0x0140:0x0160];
                                                                memory[0xe0:0x0100] = msg.data[0x04:0x24];
                                                                memory[0xc0:0xe0] = 0x04;
                                                                var temp72 = keccak256(memory[0xc0:0x0100]);
                                                                memory[0xe0:0x0100] = msg.sender;
                                                                memory[0xc0:0xe0] = temp72;
                                                                storage[keccak256(memory[0xc0:0x0100])] = temp71;
                                                                memory[0x0160:0x0180] = memory[0x0140:0x0160];
                                                                log(memory[0x0160:0x0180], [0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, msg.data[0x04:0x24], msg.sender]);
                                                                goto label_12BE;
                                                            }
                                                        } else { revert(memory[0x00:0x00]); }
                                                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                        memory[0x0140:0x0160] = msg.sender;
                                                        memory[0x0160:0x0180] = msg.data[0x04:0x24];
                                                        memory[0x0180:0x01a0] = msg.data[0x24:0x44];
                                                        var1 = memory[0x0180:0x01a0];
                                                        var2 = memory[0x0160:0x0180];
                                                        var3 = memory[0x0140:0x0160];
                                                        var4 = 0x06;
                                                        // Unhandled termination
                                                    } else { revert(memory[0x00:0x00]); }
                                                } else if (!(msg.data[0x04:0x24] >> 0x01)) {
                                                    if (msg.data[0x04:0x24]) {
                                                        memory[0x0160:0x0180] = storage[0x09];
                                                        memory[0x0180:0x01a0] = storage[0x07];
                                                        memory[0x0140:0x0160] = 0x00;
                                                        var1 = 0x0140;
                                                        var2 = 0x0120;
                                                        memory[var2:var2 + 0x20] = 0x00;
                                                        var3 = 0x02;
                                                    
                                                        if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0D94; }
                                                    
                                                    label_0D9C:
                                                        var temp81 = var2;
                                                        var temp82 = memory[temp81:temp81 + 0x20] + 0x01;
                                                        memory[temp81:temp81 + 0x20] = temp82;
                                                    
                                                        if (var3 == temp82) { goto label_0DAC; }
                                                    
                                                        if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0D9C; }
                                                    
                                                    label_0D94:
                                                        memory[var1:var1 + 0x20] = 0x01;
                                                    
                                                    label_0DAC:
                                                    
                                                        if (memory[0x0140:0x0160]) { goto label_0DCF; }
                                                        else { revert(memory[0x00:0x00]); }
                                                    } else if (msg.sender == storage[0x07]) {
                                                    label_0DCF:
                                                        storage[0x0e] = msg.data[0x04:0x24];
                                                        memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                        log(memory[0x0140:0x0160], [0xba40372a3a724dca3c57156128ef1e896724b65b37a17f190b1ad5de68f3a4f3]);
                                                        stop();
                                                    } else { revert(memory[0x00:0x00]); }
                                                } else { revert(memory[0x00:0x00]); }
                                            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                                                memory[0x0160:0x0180] = storage[0x09];
                                                memory[0x0180:0x01a0] = storage[0x07];
                                                memory[0x0140:0x0160] = 0x00;
                                                var1 = 0x0140;
                                                var2 = 0x0120;
                                                memory[var2:var2 + 0x20] = 0x00;
                                                var3 = 0x02;
                                            
                                                if (msg.sender == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0CDB; }
                                            
                                            label_0CE3:
                                                var temp83 = var2;
                                                var temp84 = memory[temp83:temp83 + 0x20] + 0x01;
                                                memory[temp83:temp83 + 0x20] = temp84;
                                            
                                                if (var3 == temp84) { goto label_0CF3; }
                                            
                                                if (msg.sender != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0CE3; }
                                            
                                            label_0CDB:
                                                memory[var1:var1 + 0x20] = 0x01;
                                            
                                            label_0CF3:
                                            
                                                if (!memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                                            
                                                storage[0x09] = msg.data[0x04:0x24];
                                                memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                                log(memory[0x0140:0x0160], [0x837b9ad138a0a1839a9637afce5306a5c13e23eb63365686843a5319a243609c]);
                                                stop();
                                            } else { revert(memory[0x00:0x00]); }
                                        } else if (msg.sender == storage[0x07]) {
                                            if (msg.data[0x04:0x24] > 0x2710) { revert(memory[0x00:0x00]); }
                                        
                                            storage[0x17] = msg.data[0x04:0x24];
                                            memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                            log(memory[0x0140:0x0160], [0x7a7883b0074f96e2c7fab65eb25abf624c488761a5db889e3bb84855dcc6daaf]);
                                            stop();
                                        } else { revert(memory[0x00:0x00]); }
                                    } else if (msg.sender == storage[0x07]) {
                                        if (msg.data[0x04:0x24] > 0x1388) { revert(memory[0x00:0x00]); }
                                    
                                        storage[0x18] = msg.data[0x04:0x24];
                                        memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                        log(memory[0x0140:0x0160], [0x0810a1c261ca2c0cd86a0152c51c43ba9dc329639d2349f98140891b2ea798eb]);
                                        stop();
                                    } else { revert(memory[0x00:0x00]); }
                                } else if (msg.sender == storage[0x07]) {
                                    storage[0x0f] = msg.data[0x04:0x24];
                                    memory[0x0140:0x0160] = msg.data[0x04:0x24];
                                    log(memory[0x0140:0x0160], [0xae565aab888bca5e19e25a13db7b0c9144305bf55cb0f3f4d724f730e5acdd62]);
                                    stop();
                                } else { revert(memory[0x00:0x00]); }
                            } else if (msg.sender == storage[0x07]) {
                                if (msg.data[0x04:0x24] > 0x0de0b6b3a7640000) { revert(memory[0x00:0x00]); }
                            
                                storage[0x15] = msg.data[0x04:0x24];
                                stop();
                            } else { revert(memory[0x00:0x00]); }
                        } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                            if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                        
                            memory[0x0160:0x0180] = address(this);
                            memory[0x0180:0x01a0] = 0x00;
                            memory[0x0140:0x0160] = 0x00;
                            var1 = 0x0140;
                            var2 = 0x0120;
                            memory[var2:var2 + 0x20] = 0x00;
                            var3 = 0x02;
                        
                            if (msg.data[0x04:0x24] == memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0ADE; }
                        
                        label_0AE6:
                            var temp85 = var2;
                            var temp86 = memory[temp85:temp85 + 0x20] + 0x01;
                            memory[temp85:temp85 + 0x20] = temp86;
                        
                            if (var3 == temp86) { goto label_0AF6; }
                        
                            if (msg.data[0x04:0x24] != memory[memory[0x0120:0x0140] * 0x20 + 0x0160:memory[0x0120:0x0140] * 0x20 + 0x0160 + 0x20]) { goto label_0AE6; }
                        
                        label_0ADE:
                            memory[var1:var1 + 0x20] = 0x01;
                        
                        label_0AF6:
                        
                            if (memory[0x0140:0x0160]) { revert(memory[0x00:0x00]); }
                        
                            storage[0x16] = msg.data[0x04:0x24];
                            memory[0x0140:0x0160] = msg.data[0x04:0x24];
                            log(memory[0x0140:0x0160], [0xdf3c41a916aecbf42361a147f8348c242662c3ce20ecef30e826b80642477a3d]);
                            stop();
                        } else { revert(memory[0x00:0x00]); }
                    } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                        if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
                    
                        storage[0x08] = msg.data[0x04:0x24];
                        memory[0x0140:0x0160] = msg.data[0x04:0x24];
                        log(memory[0x0140:0x0160], [0xff54978127edd34aec0f9061fb3b155fbe0ededdfa881ee3e0d541d3a1eef438]);
                        stop();
                    } else { revert(memory[0x00:0x00]); }
                } else if (msg.sender == storage[0x0a]) {
                    storage[0x07] = msg.sender;
                    memory[0x0140:0x0160] = msg.sender;
                    log(memory[0x0140:0x0160], [0x8d55d160c0009eb3d739442df0a3ca089ed64378bfac017e7ddad463f9815b87]);
                    stop();
                } else { revert(memory[0x00:0x00]); }
            } else if (!(msg.data[0x04:0x24] >> 0xa0)) {
                if (msg.sender != storage[0x07]) { revert(memory[0x00:0x00]); }
            
                memory[0x0140:0x0160] = msg.sender;
                log(memory[0x0140:0x0160], [0x90ad4c550d25bd23af61db38d1ff8671b89edaaa0bca0fc36bac5084ecc120bd]);
                storage[0x0a] = msg.data[0x04:0x24];
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (!(msg.data[0xa4:0xc4] >> 0xa0)) {
            memory[0x0220:0x0240] = msg.data[0xa4:0xc4];
        
            if (msg.data[0xc4:0xe4] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0240:0x0260] = msg.data[0xc4:0xe4];
        
            if (msg.data[0xe4:0x0104] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0260:0x0280] = msg.data[0xe4:0x0104];
        
        label_0124:
        
            if (msg.data[0x04:0x24] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            if (msg.data[0x24:0x44] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            if (msg.data[0x44:0x64] >> 0xa0) { revert(memory[0x00:0x00]); }
        
            memory[0x0140:0x01a0] = msg.data[msg.data[0x64:0x84] + 0x04:msg.data[0x64:0x84] + 0x04 + 0x60];
        
            if (msg.data[msg.data[0x64:0x84] + 0x04:msg.data[0x64:0x84] + 0x04 + 0x20] > 0x40) { revert(memory[0x00:0x00]); }
        
            memory[0x01c0:0x0200] = msg.data[msg.data[0x84:0xa4] + 0x04:msg.data[0x84:0xa4] + 0x04 + 0x40];
        
            if (msg.data[msg.data[0x84:0xa4] + 0x04:msg.data[0x84:0xa4] + 0x04 + 0x20] > 0x20) { revert(memory[0x00:0x00]); }
        
            if (storage[0x13]) { revert(memory[0x00:0x00]); }
        
            storage[0x06] = msg.data[0x04:0x24];
            memory[0x02c0:0x02e0] = 0x00;
        
            if (keccak256(memory[0x0140 + 0x20:0x0140 + 0x20 + memory[0x0140:0x0160]]) != keccak256(memory[0x02c0 + 0x20:0x02c0 + 0x20 + memory[0x02c0:0x02e0]])) {
                var1 = 0x0140;
                var2 = var1;
                memory[0xc0:0xe0] = 0x00;
                var3 = keccak256(memory[0xc0:0xe0]);
                var temp98 = memory[var2:var2 + 0x20] + 0x20;
                var4 = temp98;
                var5 = 0x0120;
                memory[var5:var5 + 0x20] = 0x00;
                var6 = 0x03;
            
                if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_0316; }
            
            label_031A:
                storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                var temp99 = var5;
                var temp100 = memory[temp99:temp99 + 0x20] + 0x01;
                memory[temp99:temp99 + 0x20] = temp100;
            
                if (var6 == temp100) { goto label_033C; }
            
                if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_031A; }
            
            label_0316:
            
            label_033C:
                memory[0x02c0:0x02e0] = 0x00;
            
                if (keccak256(memory[0x01c0 + 0x20:0x01c0 + 0x20 + memory[0x01c0:0x01e0]]) != keccak256(memory[0x02c0 + 0x20:0x02c0 + 0x20 + memory[0x02c0:0x02e0]])) {
                label_0484:
                    var1 = 0x01c0;
                    var2 = var1;
                    memory[0xc0:0xe0] = 0x01;
                    var3 = keccak256(memory[0xc0:0xe0]);
                    var temp101 = memory[var2:var2 + 0x20] + 0x20;
                    var4 = temp101;
                    var5 = 0x0120;
                    memory[var5:var5 + 0x20] = 0x00;
                    var6 = 0x02;
                
                    if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_04B2; }
                
                label_04B6:
                    storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                    var temp102 = var5;
                    var temp103 = memory[temp102:temp102 + 0x20] + 0x01;
                    memory[temp102:temp102 + 0x20] = temp103;
                
                    if (var6 == temp103) { goto label_04D8; }
                
                    if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_04B6; }
                
                label_04B2:
                
                label_04D8:
                    memory[0x02a0:0x02c0] = 0x313ce567;
                    var temp104;
                    temp104, memory[0x0300:0x0320] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x02bc:0x02c0]);
                
                    if (!temp104) { revert(memory[0x00:0x00]); }
                
                label_0500:
                
                    if (returndata.length <= 0x1f) { revert(memory[0x00:0x00]); }
                
                    memory[0x0280:0x02a0] = memory[0x0300:0x0320];
                    storage[0x02] = memory[0x0280:0x02a0];
                
                    if (memory[0x0280:0x02a0] >= 0x0100) { revert(memory[0x00:0x00]); }
                
                    storage[0x07] = msg.data[0x24:0x44];
                    memory[0x02a0:0x02c0] = msg.data[0x24:0x44];
                    log(memory[0x02a0:0x02c0], [0x8d55d160c0009eb3d739442df0a3ca089ed64378bfac017e7ddad463f9815b87]);
                    storage[0x08] = memory[0x0240:0x0260];
                    memory[0x02a0:0x02c0] = memory[0x0240:0x0260];
                    log(memory[0x02a0:0x02c0], [0xff54978127edd34aec0f9061fb3b155fbe0ededdfa881ee3e0d541d3a1eef438]);
                    storage[0x16] = msg.data[0x44:0x64];
                    memory[0x02a0:0x02c0] = msg.data[0x44:0x64];
                    log(memory[0x02a0:0x02c0], [0xdf3c41a916aecbf42361a147f8348c242662c3ce20ecef30e826b80642477a3d]);
                    storage[0x09] = memory[0x0220:0x0240];
                    memory[0x02a0:0x02c0] = memory[0x0220:0x0240];
                    log(memory[0x02a0:0x02c0], [0x837b9ad138a0a1839a9637afce5306a5c13e23eb63365686843a5319a243609c]);
                    storage[0x18] = 0x03e8;
                    memory[0x02a0:0x02c0] = 0x03e8;
                    memory[0x02c0:0x02e0] = memory[0x02a0:0x02c0];
                    log(memory[0x02c0:0x02e0], [0x0810a1c261ca2c0cd86a0152c51c43ba9dc329639d2349f98140891b2ea798eb]);
                    storage[0x17] = 0xc8;
                    memory[0x02a0:0x02c0] = 0xc8;
                    memory[0x02c0:0x02e0] = memory[0x02a0:0x02c0];
                    log(memory[0x02c0:0x02e0], [0x7a7883b0074f96e2c7fab65eb25abf624c488761a5db889e3bb84855dcc6daaf]);
                    storage[0x0b] = memory[0x0260:0x0280];
                    log(memory[0x00:0x00], [0x2260c76a54455627b86a2d3281efbdffb1533093dcbddcbb53dea24cf3699f11, memory[0x0260:0x0280]]);
                    storage[0x12] = block.timestamp;
                    storage[0x13] = block.timestamp;
                    storage[0x15] = 0x29d635a8e000;
                    memory[0x06a0:0x06c0] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f;
                    memory[0x0560:0x0580] = 0x0b;
                    memory[0x0580:0x05a0] = 0x596561726e205661756c74000000000000000000000000000000000000000000;
                    memory[0x06c0:0x06e0] = keccak256(memory[0x0560 + 0x20:0x0560 + 0x20 + memory[0x0560:0x0580]]);
                    memory[0x0620:0x0640] = 0x05;
                    memory[0x0640:0x0660] = 0x302e342e33000000000000000000000000000000000000000000000000000000;
                    memory[0x06e0:0x0700] = keccak256(memory[0x0620 + 0x20:0x0620 + 0x20 + memory[0x0620:0x0640]]);
                    var1 = 0x00 + 0x20 + 0x20 + 0x20;
                    // Unhandled termination
                } else {
                label_0368:
                    memory[0x0300:0x0320] = 0x02;
                    memory[0x0320:0x0340] = 0x7976000000000000000000000000000000000000000000000000000000000000;
                    memory[0x0440:0x0442] = address(0x04).call.gas(msg.gas)(memory[0x0320:0x0322]);
                    var1 = memory[0x0300:0x0320];
                    memory[0x0360:0x0380] = 0x95d89b41;
                    var temp105;
                    temp105, memory[0x03c0:0x0420] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x037c:0x0380]);
                
                    if (!temp105) { revert(memory[0x00:0x00]); }
                
                    if (returndata.length <= 0x3f) { revert(memory[0x00:0x00]); }
                
                    if (memory[memory[0x03c0:0x03e0] + 0x03c0:memory[0x03c0:0x03e0] + 0x03c0 + 0x20] >= 0x15) { revert(memory[0x00:0x00]); }
                
                    var temp106 = var1;
                    memory[temp106 + 0x0420 + 0x20:temp106 + 0x0420 + 0x20 + 0x14] = address(0x04).call.gas(msg.gas)(memory[0x0400:0x0414]);
                    memory[0x0420:0x0440] = temp106 + memory[0x03e0:0x0400];
                    var1 = 0x0420;
                    var2 = var1;
                    memory[0xc0:0xe0] = 0x01;
                    var3 = keccak256(memory[0xc0:0xe0]);
                    var temp107 = memory[var2:var2 + 0x20] + 0x20;
                    var4 = temp107;
                    var5 = 0x0120;
                    memory[var5:var5 + 0x20] = 0x00;
                    var6 = 0x02;
                
                    if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_0453; }
                
                label_0457:
                    storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                    var temp108 = var5;
                    var temp109 = memory[temp108:temp108 + 0x20] + 0x01;
                    memory[temp108:temp108 + 0x20] = temp109;
                
                    if (var6 == temp109) { goto label_0479; }
                
                    if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_0457; }
                
                label_0453:
                
                label_0479:
                    memory[0x02a0:0x02c0] = 0x313ce567;
                    var temp110;
                    temp110, memory[0x0300:0x0320] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x02bc:0x02c0]);
                
                    if (temp110) { goto label_0500; }
                    else { revert(memory[0x00:0x00]); }
                }
            } else {
                var1 = 0x00;
                memory[0x0300:0x0320] = 0x95d89b41;
                var temp111;
                temp111, memory[0x0360:0x03c0] = address(msg.data[0x04:0x24]).staticcall.gas(msg.gas)(memory[0x031c:0x0320]);
            
                if (!temp111) { revert(memory[0x00:0x00]); }
            
                if (returndata.length <= 0x3f) { revert(memory[0x00:0x00]); }
            
                if (memory[memory[0x0360:0x0380] + 0x0360:memory[0x0360:0x0380] + 0x0360 + 0x20] >= 0x15) { revert(memory[0x00:0x00]); }
            
                var temp112 = var1;
                memory[temp112 + 0x0420 + 0x20:temp112 + 0x0420 + 0x20 + 0x14] = address(0x04).call.gas(msg.gas)(memory[0x03a0:0x03b4]);
                var temp113 = temp112 + memory[0x0380:0x03a0];
                memory[0x03c0:0x03e0] = 0x07;
                memory[0x03e0:0x0400] = 0x20795661756c7400000000000000000000000000000000000000000000000000;
                memory[temp113 + 0x0420 + 0x20:temp113 + 0x0420 + 0x20 + 0x07] = address(0x04).call.gas(msg.gas)(memory[0x03e0:0x03e7]);
                memory[0x0420:0x0440] = temp113 + memory[0x03c0:0x03e0];
                var1 = 0x0420;
                var2 = var1;
                memory[0xc0:0xe0] = 0x00;
                var3 = keccak256(memory[0xc0:0xe0]);
                var temp114 = memory[var2:var2 + 0x20] + 0x20;
                var4 = temp114;
                var5 = 0x0120;
                memory[var5:var5 + 0x20] = 0x00;
                var6 = 0x02;
            
                if (memory[0x0120:0x0140] * 0x20 > var4) { goto label_02B7; }
            
            label_02BB:
                storage[var3 + memory[0x0120:0x0140]] = memory[var2 + memory[0x0120:0x0140] * 0x20:var2 + memory[0x0120:0x0140] * 0x20 + 0x20];
                var temp115 = var5;
                var temp116 = memory[temp115:temp115 + 0x20] + 0x01;
                memory[temp115:temp115 + 0x20] = temp116;
            
                if (var6 == temp116) { goto label_02DD; }
            
                if (memory[0x0120:0x0140] * 0x20 <= var4) { goto label_02BB; }
            
            label_02B7:
            
            label_02DD:
                memory[0x02c0:0x02e0] = 0x00;
            
                if (keccak256(memory[0x01c0 + 0x20:0x01c0 + 0x20 + memory[0x01c0:0x01e0]]) != keccak256(memory[0x02c0 + 0x20:0x02c0 + 0x20 + memory[0x02c0:0x02e0]])) { goto label_0484; }
                else { goto label_0368; }
            }
        } else { revert(memory[0x00:0x00]); }
    }
}