    re = messagebox("Make sure you have a supported webcam connected", "WebCam Demo", "info", ["Continue" "Stop"], "modal") 

    if re ==1 then
        avicloseall();
        n = camopen(0,[1600,1200]);
        while(1)
            im = camread(n); //get a frame
            br = imdisplay(im,'Press a key to capture reference image');
            if br == -1
                refImage = im;
                break
            end            

        end
        sleep(1000); 
           
        while(1)
            im = camread(n); //get a frame
            im
            br = imdisplay((im+127)-refImage,'Comparing');
            if br == -1
       
                break
           
            end            

        end

        avicloseall();
        imdestroyall

        messagebox("Thanks!", "End of demo", "info", "Done", "modal") ;        

    else
        messagebox("Exit Demo Now", "User Interruption", "warning", "Done", "modal") ;
    end
