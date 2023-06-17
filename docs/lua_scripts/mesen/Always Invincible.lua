while (true) do
    -- 0xb0/b1 in memory store the amount of time the B weapon (barrier) lasts.
    -- By continually overwriting the timer to the max value (FF), the players
    -- will always be invincible
    memory.writebyte(0x00b0, 0xff) -- player 1 barrier
    memory.writebyte(0x00b1, 0xff) -- player 2 barrier

    -- Set player 1/2 to always have rapid spray gun
    memory.writebyte(0x00aa, 0x13) -- player 1 rapid spray
    memory.writebyte(0x00ab, 0x13) -- player 2 rapid spray

    -- Set player 1/2 to always have two lives
    memory.writebyte(0x0032, 2) -- player 1 count
    memory.writebyte(0x0033, 2) -- player 2 count

    emu.frameadvance();
end;
