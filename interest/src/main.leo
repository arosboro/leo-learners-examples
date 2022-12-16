// The 'interest' program.
program interest.aleo {
    // 1. define transition called calculate
    // 2. which arguments are needed for calculate
    // 3. arguments principle and rate
    // 4. what types are used for arguments: 
    //      principle = u64 rate (public) = u32
    // 5. output types u32
    // 6. create loop, periods are 10u8 literals

    transition calculate(principle: u32, public rate: u32) -> u32 {
        let amount: u32 = principle;
        for i: u8 in 0u8..10u8 {
            amount += amount * (rate / 100u32);
        }
        return amount;
    }
}
