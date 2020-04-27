function [G,H] = getGnH(m )

datadir='C:\Users\Biraj\Desktop\Biraj\Database Important\EEG Motor Movement or Imagery Dataset\';


[data, header] = readEDF([datadir,'S001\S001R03.edf']);
montage=header.labels;

montage=cell2mat(montage);
for i=1:64
    for j=1:4
        if montage(i,j)=='.'
            montage(i,j)=0;
        else
            continue;
        end
    end
end

montage=cellstr(montage);

M=ExtractMontage('C:\CSDtoolbox\resource\10-5-System_Mastoids_EGI129.csd',montage);
MapMontage(M);
[G,H]=GetGH(M,m);

end

