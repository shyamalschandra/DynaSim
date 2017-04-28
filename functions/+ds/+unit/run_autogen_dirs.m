%% Run autogen dirs tests

%% Rename autogenDirs_newSave to autogenDirs
finalDir = fullfile(ds.getConfig('ds_testData_path'), 'autogenDirs');
if ~exist(finalDir, 'dir')
  newDir = fullfile(ds.getConfig('ds_testData_path'), 'autogenDirs_newSave');
  movefile(newDir, finalDir);
end

%% Run tests
result = runtests('ds.unit.test_autogenDirs_all');