function [aalID, aalind,fullnames,everyID,allnames] = aal_get_numbers( regionstr )
%Get the IDs of Aal regions beginning with regionstr eg 'Temporal'
%   also returns the indices into the ROI structire, the full names of the
%   regions found, and a list of all the IDs in the structure
%   (everyID,independent of what was asked for)

a=load('ROI_MNI_V4_List');
allnames={a.ROI(:).Nom_L};

aalind=strmatch(regionstr,allnames);
fullnames=allnames(aalind);
aalID=[a.ROI(aalind).ID];
everyID=[a.ROI(:).ID];


end

