function experiments = stack_vot2016()

set_global_variable('bundle', 'http://data.votchallenge.net/vot2016/vot2016.zip');

baseline.name = 'baseline';
baseline.converter = [];
baseline.type = 'supervised';
baseline.tags = {'camera_motion', 'illum_change', 'occlusion', 'size_change', 'motion_change', 'empty'};

baseline.parameters.repetitions = 15;
baseline.parameters.burnin = 10;
baseline.parameters.skip_initialize = 5;
baseline.parameters.failure_overlap = 0;

unsupervised.name = 'unsupervised';
unsupervised.converter = [];
unsupervised.type = 'unsupervised';
unsupervised.tags = {'camera_motion', 'illum_change', 'occlusion', 'size_change', 'motion_change', 'empty'};

unsupervised.parameters.repetitions = 1;
unsupervised.parameters.burnin = 0;

experiments = {baseline, unsupervised};

end

