function [T] = ExtractTall( datadir,samprate,subject,recording,order,pass_band)
    
    if subject<10
        temp=subject;
        subject_in_use=['00' num2str(temp)];
    elseif subject>=10 && subject<=99
        temp=subject;
        subject_in_use=['0' num2str(temp)];
    elseif subject>=100
        temp=subject;
        subject_in_use=[num2str(temp)];
    end
        
    if recording<10
        temp=recording;
        recording_in_use=['0' num2str(temp)];
    elseif recording>=10
        temp=recording;
        recording_in_use=[num2str(temp)];
    end
    
    [data, header] = readEDF([datadir,'S',subject_in_use,'\S',subject_in_use,'R',recording_in_use,'.edf']);
   
    [C, D] = butter(order,pass_band/80,'Bandpass');
    
    for i=1:64
        data{i}= filtfilt(C,D,data{i});
    end
    
    [num,den]=iirnotch((50*pi/180),0.2);
    
    for i=1:64
        data{i}= filtfilt(num,den,data{i});
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    data1=data;
%     data1=cell2mat(data);
%     data1=data1';
    
%     load('C:\Users\Biraj\Desktop\myfiles\data\vars');
%     
%     X=CSD(data1,G,H,0.0001);
%     X=X';
%     data1={};
%     for i=1:64
%         data1{1,i}=X(:,i);
%     end
%     
%     clear CSD;
    count=1;
      
    for i=1:30
        if header.annotation.event{i}=='T0'
            temp1=floor((header.annotation.starttime(i)+0.01)*samprate);
            temp2=floor(((header.annotation.starttime(i))+header.annotation.duration(i))*samprate);
            
            for k=1:64
                T{count,1}(:,k)=data1{k}(temp1:temp2);
                
            end 
            T{count,2}='T0';
            count=count+1;
            continue
        
        elseif header.annotation.event{i}=='T1'
            temp1=floor((header.annotation.starttime(i)+0.01)*samprate);
            temp2=floor(((header.annotation.starttime(i))+header.annotation.duration(i))*samprate);
            
            for k=1:64
                T{count,1}(:,k)=data1{k}(temp1:temp2);   
            end
            T{count,2}='T1';
            count=count+1;
            continue
        
        elseif header.annotation.event{i}=='T2'
            temp1=floor((header.annotation.starttime(i)+0.01)*samprate);
            temp2=floor(((header.annotation.starttime(i))+header.annotation.duration(i))*samprate);
            for k=1:64
                T{count,1}(:,k)=data1{k}(temp1:temp2);       
            end
            T{count,2}='T2';
            count=count+1;
            continue
        end

end

