# Reactivating Windows after replacing the hard disk

Steps to restore your system image and ensure Windows stays/gets activated.

1. Before you change the disk
    - Sign in with a Microsoft account and confirm the digital license is linked: Settings → Accounts → Your info and Settings → Update & Security → Activation (should say “Windows is activated with a digital license linked to your Microsoft account”).
    - Record the product key (if present) with an elevated command prompt:
      ```
      wmic path softwarelicensingservice get OA3xOriginalProductKey
      ```
      Your Key is written in the Hidden Documents.  
    - Create Windows installation/recovery media (Media Creation Tool) so you can boot and recover if needed.

2. Restore the system image to the new drive
    - Connect the new drive and the disk containing the system image to the PC.
    - Boot from the Windows installation USB:
      - Choose Repair your computer → Troubleshoot → System Image Recovery.
    - Select the image on your hard disk and follow the wizard to restore.
    - If you used a third‑party clone tool, follow that tool’s restore/cloning procedure.

3. Repair boot if the restored system won’t start
    - Boot from installation media → Repair your computer → Troubleshoot → Advanced options → Startup Repair.
    - Or use Command Prompt (from Advanced options):
      ```
      bootrec /fixmbr
      bootrec /fixboot
      bootrec /scanos
      bootrec /rebuildbcd
      ```

4. Verify activation after restore
    - Settings → Update & Security → Activation (or run the following in an elevated command prompt):
      ```
      slmgr.vbs /dlv
      ```
    - If Windows is already activated, nothing else is needed.

5. If Windows is not activated
    - Sign in with the Microsoft account that has the linked digital license.
    - Run the Activation Troubleshooter: Settings → Update & Security → Activation → Troubleshoot → “I changed hardware on this device recently” and follow the steps to select this device and reactivate.
    - If you have a product key, change it: Settings → Update & Security → Activation → Change product key, or run:
      ```
      slmgr.vbs /ipk <your-product-key>
      slmgr.vbs /ato
      ```
    - As a fallback, use phone activation or contact Microsoft Support:
      ```
      slui 4
      ```

6. Useful notes and gotchas
    - For OEM licenses (OEM_DM), activation is typically tied to the motherboard — changing only the hard disk usually does not break activation.
    - Keep BIOS mode consistent (UEFI vs Legacy) and use the same partition style (GPT vs MBR) as the original image to avoid boot problems.
    - Keep a backup of the product key and ensure the Microsoft account used for the license is accessible.

If activation still fails after these steps, contact Microsoft Support and be ready to provide license/product and hardware details.