function Dn = wjn_keep_channels(filename,channels)


D=spm_eeg_load(filename);

if ischar(channels)
    channels = {channels};
end

obc = D.badchannels;

bc = 1:D.nchannels;

bc(ci(channels,D.chanlabels,2))=[];

D=badchannels(D,bc,1);

save(D);

Dn=wjn_remove_bad_channels(D.fullfile);
D=badchannels(D,':',0);
D=badchannels(D,obc,1);
save(D);