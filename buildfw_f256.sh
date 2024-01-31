FIRMWARE_DIR=bin
VERSION=2024.1_mgr42

rm -rf bin/*

echo "********** Build superbasic **********"

cd f256-superbasic/source
make -B basic release
cd ../..
cp f256-superbasic/source/release/sb0?.bin $FIRMWARE_DIR
cp f256-superbasic/source/release/lockout.bin $FIRMWARE_DIR

echo "********** Build DOS **********"
    
cd f256-dos
make dos_jr.bin
cd ../
cp f256-dos/dos_jr.bin $FIRMWARE_DIR/dos.bin 

echo "********** Build kernel **********"

cd F256_MicroKernel
make
cd ..
cp F256_MicroKernel/3?.bin $FIRMWARE_DIR

echo "********** Build pexec **********"

cd f256_pexec
merlin32 -V pexec.s
cd ../
cp f256_pexec/pexec.bin $FIRMWARE_DIR

echo "********** Build BASIC help **********"

cd foenix-help
make
cd ..
cp foenix-help/bin/help.bin $FIRMWARE_DIR
cp foenix-help/bin/docs/docs_superbasic?.bin $FIRMWARE_DIR
cp foenix-help/bin/docs/docs_superbasic_ref_1.bin $FIRMWARE_DIR/docs_superbasic3.bin
cp foenix-help/bin/docs/docs_superbasic_ref_2.bin $FIRMWARE_DIR/docs_superbasic4.bin


echo "********** Build xdev **********"

cd f256_xdev
merlin32 -V xdev.s
cd ../
cp f256_xdev/xdev.bin $FIRMWARE_DIR

echo "********** ZIP release **********"

cd bin
zip ../f256_firmware_$VERSION.zip *.bin
cd ..


