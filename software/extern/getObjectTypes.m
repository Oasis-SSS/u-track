function types = getObjectTypes()
% GETOBJECTTYPES Return a dictionary of OMERO object types
%
%   types = getObjectTypes() returns a dictionary of OMERO object types.
%
% See also: GETOBJECTS, GETANNOTATIONTYPES
%
% Copyright (C) 2025, Danuser Lab - UTSouthwestern 
%
% This file is part of u-track.
% 
% u-track is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% u-track is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with u-track.  If not, see <http://www.gnu.org/licenses/>.
% 
% 

% Copyright (C) 2013 University of Dundee & Open Microscopy Environment.
% All rights reserved.
%
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License along
% with this program; if not, write to the Free Software Foundation, Inc.,
% 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

names = {'project', 'dataset', 'image', 'screen', 'plate', 'plateacquisition'};
classnames = {'Project', 'Dataset', 'Image', 'Screen', 'Plate', 'PlateAcquisition'};
types = createObjectDictionary(names, classnames);

for i = 1 : numel(types)
    types(i).annotationLink = str2func(['omero.model.' classnames{i} 'AnnotationLinkI']);
end