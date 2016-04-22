                   Create 256 GlusterFS volumes using gdeploy

Pre-requisites:
        * Ansible 1.9.x (Note: We do not support ansible 2.0 or above, yet!)
        * gdeploy 2.0-5 or above.

1. Create a VG
   * We create a single VG, the logical volumes are created on demand.

   Run the below command to create a volume on a given list of devices.
  
   $ gdeploy -c vg_create.conf

2. Create LV and a volume
   * Execute the script volcreate.sh which will modify the volume create template
     and run it using gdeploy. The script by default creates 256 volumes, modify
     to suit your needs.


   $ sh volcreate.sh
