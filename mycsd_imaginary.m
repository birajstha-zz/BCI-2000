clear all
clc

tic

datadir='D:\Motor Imagery Dataset\';
load('D:\myfiles\data\vars','G','H');

len=1968;
allpairT1=cell(1,64);
allpairT2=cell(1,64);

for i=1:64
    allpairT1{1,i}=zeros(64,len);
    allpairT2{1,i}=zeros(64,len);
end

recording=[6 10 14];


samprate=160;

order=4;
pass_band=[4 8];


countT1=1;
countT2=1;

subject=1:10;

for sbj=subject
    %if sbj==29|sbj==30|sbj==34|sbj==37|sbj==41|sbj==51|sbj==64|sbj==72|sbj==73|sbj==74|sbj==76|sbj==89|sbj==90|sbj==100|sbj==102
    clc
    sbj
    if ismember(sbj,[100 106])==1
        continue;
    end
    
    for rec=recording
        [T]=ExtractTall(datadir,samprate,sbj,rec,order,pass_band);
        clear ExtractTall;
        %         for i=1:size(T,1)
        %             T{i,1}=T{i,1}(:,channels);
        %         end
        
        for i=1:size(T,1)
            HT{i,1}=hilbert(T{i,1});
            HT{i,2}=T{i,2};
            
            IPT{i,1}=angle(HT{i,1});
            IPT{i,2}=T{i,2};
        end
        clear HT;
        for i=3:28
            if IPT{i,2}=='T1'
                if size([IPT{(i-1),1};IPT{i,1};IPT{i+1,1}],1)==len
                    T1=[IPT{(i-1),1};IPT{i,1};IPT{i+1,1}];
                    for ip=1:64
                        for jp=1:64
                            allpairT1{1,ip}(jp,:)=allpairT1{1,ip}(jp,:)+[exp(j*(T1(:,ip)-T1(:,jp)))]';
                        end
                    end
                    countT1=countT1+1;
                end
                
            elseif IPT{i,2}=='T2'
                if size([IPT{(i-1),1};IPT{i,1};IPT{i+1,1}],1)==len
                    T2=[IPT{(i-1),1};IPT{i,1};IPT{i+1,1}];
                    for ip=1:64
                        for jp=1:64
                            allpairT2{1,ip}(jp,:)=allpairT2{1,ip}(jp,:)+[exp(j*(T2(:,ip)-T2(:,jp)))]';
                        end
                    end
                    countT2=countT2+1;
                end
            end
        end
    end
   clear 'IPT' 'HT' 'T1' 'T2';
end





% Calculate Average IPLV
countT1=countT1;
countT2=countT2;

for i=1:64
    for j=1:64
    mean_allpairT1{1,i}(j,1:len)=allpairT1{1,i}(j,:)./countT1;
    mean_allpairT2{1,i}(j,1:len)=allpairT2{1,i}(j,:)./countT2;
    end
end


clearvars -except mean_allpairT1 mean_allpairT2 len countT1 countT2

IT1=NaN*ones(64,64,len);

for i=1:64
    for j=1:64
        IT1(i,j,:)=abs(mean_allpairT1{1,i}(j,:));
    end
end

clearvars -except IT1 mean_allpairT2 len countT1 countT2

IT2=NaN*ones(64,64,len);

for i=1:64
    for j=1:64
        IT2(i,j,:)=abs(mean_allpairT2{1,i}(j,:));
    end
end

clearvars -except IT1 IT2 len countT1 countT2
save('plv_imag_HnF_Alpha.mat');

toc
