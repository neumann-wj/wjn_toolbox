function lead_job
% - Lead-DBS Job created on 20-Mar-2017:
% --------------------------------------



% Execute job:
% ---------------------------------------

options=getoptslocal;

addpath(genpath('E:\Dropbox\matlab\leaddbs'));
addpath('E:\Dropbox\matlab\spm12');


allpatdirs=options.uipatdirs;
for pat=1:length(allpatdirs)
% set subject specific options:
options.root=[fileparts(allpatdirs{pat}),filesep];
[~,thispatdir]=fileparts(allpatdirs{pat});
options.patientname=thispatdir;
options.uipatdirs=allpatdirs{pat};
ea_run('run',options);
end




function options=getoptslocal
options.endtolerance = 10;
options.sprungwert = 4;
options.refinesteps = 0;
options.tra_stdfactor = 0.9;
options.cor_stdfactor = 1;
options.earoot = 'E:\Dropbox\matlab\leaddbs\';
options.dicomimp = 0;
options.normalize.do = 0;
options.normalize.method = [];
options.normalize.check = 0;
options.coregmr.method = '';
options.coregct.do = 0;
options.coregctcheck = 0;
options.modality = 1;
options.verbose = 3;
options.sides = [1 2];
options.doreconstruction = 0;
options.autoimprove = 0;
options.axiscontrast = 8;
options.zresolution = 10;
options.atl.genpt = 0;
options.atl.normalize = 0;
options.atl.can = 1;
options.atl.pt = 0;
options.atl.ptnative = 0;
options.native = 0;
options.d2.col_overlay = 1;
options.d2.con_overlay = 1;
options.d2.con_color = [1 1 1];
options.d2.lab_overlay = 1;
options.d2.bbsize = 50;
options.d2.backdrop = 'MNI_ICBM_2009b_NLIN_ASYM T1';
options.d2.write = 0;
options.d2.atlasopacity = 0.15;
options.manualheightcorrection = 0;
options.d3.write = 0;
options.d3.prolong_electrode = 2;
options.d3.verbose = 'on';
options.d3.elrendering = 1;
options.d3.hlactivecontacts = 0;
options.d3.showactivecontacts = 1;
options.d3.showpassivecontacts = 1;
options.d3.showisovolume = 0;
options.d3.isovscloud = 0;
options.d3.mirrorsides = 0;
options.d3.autoserver = 0;
options.d3.expdf = 0;
options.numcontacts = 4;
options.writeoutpm = 1;
options.expstatvat.do = 0;
options.fiberthresh = 10;
options.writeoutstats = 1;
%%
options.colormap = [0.2081 0.1663 0.5292
                    0.21162380952381 0.189780952380952 0.57767619047619
                    0.212252380952381 0.213771428571429 0.626971428571429
                    0.2081 0.2386 0.677085714285714
                    0.195904761904762 0.264457142857143 0.7279
                    0.170728571428571 0.291938095238095 0.779247619047619
                    0.125271428571429 0.324242857142857 0.830271428571429
                    0.0591333333333334 0.359833333333333 0.868333333333333
                    0.0116952380952381 0.387509523809524 0.881957142857143
                    0.00595714285714286 0.408614285714286 0.882842857142857
                    0.0165142857142857 0.4266 0.878633333333333
                    0.032852380952381 0.443042857142857 0.871957142857143
                    0.0498142857142857 0.458571428571429 0.864057142857143
                    0.0629333333333333 0.473690476190476 0.855438095238095
                    0.0722666666666667 0.488666666666667 0.8467
                    0.0779428571428571 0.503985714285714 0.838371428571429
                    0.079347619047619 0.52002380952381 0.831180952380952
                    0.0749428571428571 0.537542857142857 0.826271428571429
                    0.0640571428571428 0.556985714285714 0.823957142857143
                    0.0487714285714286 0.577223809523809 0.822828571428571
                    0.0343428571428572 0.596580952380952 0.819852380952381
                    0.0265 0.6137 0.8135
                    0.0238904761904762 0.628661904761905 0.803761904761905
                    0.0230904761904762 0.641785714285714 0.791266666666667
                    0.0227714285714286 0.653485714285714 0.776757142857143
                    0.0266619047619048 0.664195238095238 0.760719047619048
                    0.0383714285714286 0.674271428571429 0.743552380952381
                    0.0589714285714286 0.683757142857143 0.725385714285714
                    0.0843 0.692833333333333 0.706166666666667
                    0.113295238095238 0.7015 0.685857142857143
                    0.145271428571429 0.709757142857143 0.664628571428571
                    0.180133333333333 0.717657142857143 0.642433333333333
                    0.217828571428571 0.725042857142857 0.619261904761905
                    0.258642857142857 0.731714285714286 0.595428571428571
                    0.302171428571429 0.737604761904762 0.571185714285714
                    0.348166666666667 0.742433333333333 0.547266666666667
                    0.395257142857143 0.7459 0.524442857142857
                    0.442009523809524 0.748080952380952 0.503314285714286
                    0.487123809523809 0.749061904761905 0.483976190476191
                    0.530028571428571 0.749114285714286 0.466114285714286
                    0.570857142857143 0.748519047619048 0.449390476190476
                    0.609852380952381 0.747314285714286 0.433685714285714
                    0.6473 0.7456 0.4188
                    0.683419047619047 0.743476190476191 0.404433333333333
                    0.718409523809524 0.741133333333333 0.39047619047619
                    0.752485714285714 0.7384 0.376814285714286
                    0.785842857142857 0.735566666666667 0.363271428571429
                    0.818504761904762 0.732733333333333 0.349790476190476
                    0.850657142857143 0.7299 0.336028571428571
                    0.882433333333333 0.727433333333333 0.3217
                    0.913933333333333 0.725785714285714 0.30627619047619
                    0.944957142857143 0.726114285714286 0.288642857142857
                    0.973895238095238 0.731395238095238 0.266647619047619
                    0.993771428571429 0.745457142857143 0.240347619047619
                    0.999042857142857 0.765314285714286 0.216414285714286
                    0.995533333333333 0.786057142857143 0.196652380952381
                    0.988 0.8066 0.179366666666667
                    0.978857142857143 0.827142857142857 0.163314285714286
                    0.9697 0.848138095238095 0.147452380952381
                    0.962585714285714 0.870514285714286 0.1309
                    0.958871428571429 0.8949 0.113242857142857
                    0.95982380952381 0.921833333333333 0.0948380952380953
                    0.9661 0.951442857142857 0.0755333333333333
                    0.9763 0.9831 0.0538];
%%
options.dolc = 0;
options.lcm.seeds = {' \ '};
options.lcm.seeddef = 'manual';
options.lcm.odir = '\\';
options.lcm.omask = [];
options.lcm.struc.do = 1;
options.lcm.struc.connectome = 'No structural connectome found.';
options.lcm.struc.espace = 1;
options.lcm.func.do = 1;
options.lcm.func.connectome = 'resting_state > Full Set (Yeo 2011)';
options.lcm.cmd = 1;
options.uipatdirs = {'E:\Dropbox\Motorneuroscience\visuomotor_tracking_ana\lead\1_LEHMANN_BOSTON_16'};
options.prefs.dev.profile = 'user';
options.prefs.pp.do = 1;
options.prefs.pp.csize = 4;
options.prefs.pp.profile = 'local';
options.prefs.prenii_searchstring = 'anat_*.nii';
options.prefs.prenii_order = {
                              't1'
                              't2'
                              'pd'
                              }';
options.prefs.prenii_unnormalized = 'anat.nii';
options.prefs.prenii_unnormalized_t1 = 'anat_t1.nii';
options.prefs.prenii_unnormalized_pd = 'anat_pd.nii';
options.prefs.tranii_unnormalized = 'postop_tra.nii';
options.prefs.sagnii_unnormalized = 'postop_sag.nii';
options.prefs.cornii_unnormalized = 'postop_cor.nii';
options.prefs.rawctnii_unnormalized = 'postop_ct.nii';
options.prefs.ctnii_coregistered = 'rpostop_ct.nii';
options.prefs.patientdir = '';
options.prefs.prenii = 'lanat.nii';
options.prefs.tranii = 'lpostop_tra.nii';
options.prefs.cornii = 'lpostop_cor.nii';
options.prefs.sagnii = 'lpostop_sag.nii';
options.prefs.ctnii = 'lpostop_ct.nii';
options.prefs.gprenii = 'glanat.nii';
options.prefs.gtranii = 'glpostop_tra.nii';
options.prefs.gcornii = 'glpostop_cor.nii';
options.prefs.gsagnii = 'glpostop_sag.nii';
options.prefs.gctnii = 'glpostop_ct.nii';
options.prefs.rest_prefix = 'res*.nii';
options.prefs.rest_default = 'rest.nii';
options.prefs.lc.struc.maxdist = 2;
options.prefs.lc.struc.minlen = 3;
options.prefs.lc.graphsurfc = [0.2081 0.1663 0.5292];
options.prefs.lc.matsurfc = [0.8 0.7 0.4];
options.prefs.lc.seedsurfc = [0.8 0.1 0.1];
options.prefs.lc.func.regress_global = 1;
options.prefs.lc.func.regress_wmcsf = 1;
options.prefs.lc.func.bphighcutoff = 0.08;
options.prefs.lc.func.bplowcutoff = 0.009;
options.prefs.lc.datadir = 'E:\Dropbox\Motorneuroscience\connectomes\';
options.prefs.lcm.vatseed = 'binary';
options.prefs.b0 = 'b0.nii';
options.prefs.fa = 'fa.nii';
options.prefs.fa2anat = 'fa2anat.nii';
options.prefs.FTR_unnormalized = 'FTR.mat';
options.prefs.FTR_normalized = 'wFTR.mat';
options.prefs.DTD = 'DTD.mat';
options.prefs.HARDI = 'HARDI.mat';
options.prefs.dti = 'dti.nii';
options.prefs.bval = 'dti.bval';
options.prefs.bvec = 'dti.bvec';
options.prefs.sampledtidicom = 'sample_dti_dicom.dcm';
options.prefs.normmatrix = 'lmat.txt';
options.prefs.normalize.default = 'ea_normalize_ants';
options.prefs.normalize.inverse.warp = 'inverse';
options.prefs.normalize.inverse.customtpm = 0;
options.prefs.normalize.createwarpgrids = 0;
options.prefs.normalize.fsl.warpres = 8;
options.prefs.normalize.spm.resolution = 1;
options.prefs.normalize.coreg = 'auto';
options.prefs.ctcoreg.default = 'ea_coregctmri_ants';
options.prefs.mrcoreg.default = 'spm';
options.prefs.mrcoreg.writeoutcoreg = 0;
options.prefs.atlases.default = 'STN-Subdivisions (Accolla 2014)';
options.prefs.hullmethod = 2;
options.prefs.hullsmooth = 5;
options.prefs.hullsimplify = 'auto';
options.prefs.lhullmethod = 2;
options.prefs.lhullsmooth = 3;
options.prefs.lhullsimplify = 'auto';
options.prefs.d2.useprepost = 'pre';
options.prefs.d2.groupcolors = 'lead';
options.prefs.d2.isovolsmoothed = 's';
options.prefs.d2.isovolcolormap = 'jet';
options.prefs.d2.isovolsepcomb = 'combined';
options.prefs.d3.fiberstyle = 'tube';
options.prefs.d3.fiberdiameter = 0.1;
options.prefs.d3.maxfibers = 200;
options.prefs.d3.colorjitter = 0;
options.prefs.d3.cortexcolor = [0.65 0.65 0.65];
options.prefs.d3.cortexalpha = 0.5;
options.prefs.video.path = [-90 10
                            -110 10
                            -180 80
                            -250 10
                            -360 10
                            -450 10];
options.prefs.video.opts.FrameRate = 24;
options.prefs.video.opts.Duration = 30;
options.prefs.video.opts.Periodic = true;
options.prefs.dicom.dicomfiles = 0;
options.prefs.dicom.assign = 1;
options.prefs.addfibers = {};
options.prefs.native.warp = 'inverse';
options.prefs.ls.autosave = 0;
options.prefs.ls.dir = '';
options.prefs.env.dev = 0;
options.prefs.ixi.meanage = 60;
options.prefs.ixi.dir = '';
options.prefs.ltx.pdfconverter = '';
options.prefs.rawpreniis = {
                            'anat.nii'
                            'anat_t1.nii'
                            'anat_pd.nii'
                            }';
options.prefs.prenii_t1 = 'lanat_t1.nii';
options.prefs.prenii_pd = 'lanat_pd.nii';
options.prefs.gprenii_t1 = 'glanat_t1.nii';
options.prefs.gprenii_pd = 'glanat_pd.nii';
options.prefs.firstrun = 'off';
options.prefs.machine.d2.col_overlay = 1;
options.prefs.machine.d2.con_overlay = 1;
options.prefs.machine.d2.con_color = [1 1 1];
options.prefs.machine.d2.lab_overlay = 1;
options.prefs.machine.d2.bbsize = 50;
options.prefs.machine.d2.backdrop = 'MNI_ICBM_2009b_NLIN_ASYM T1';
options.prefs.machine.space = 'MNI_ICBM_2009b_NLIN_ASYM';
options.prefs.machine.lc.general.parcellation = 'AICHA reordered (Joliot 2015)';
options.prefs.machine.lc.general.parcellationn = 2;
options.prefs.machine.lc.graph.struc_func_sim = 0;
options.prefs.machine.lc.graph.nodal_efficiency = 0;
options.prefs.machine.lc.graph.eigenvector_centrality = 0;
options.prefs.machine.lc.graph.degree_centrality = 0;
options.prefs.machine.lc.graph.fthresh = NaN;
options.prefs.machine.lc.graph.sthresh = NaN;
options.prefs.machine.lc.func.compute_CM = 0;
options.prefs.machine.lc.func.compute_GM = 0;
options.prefs.machine.lc.func.prefs.TR = 2.69;
options.prefs.machine.lc.struc.compute_CM = 0;
options.prefs.machine.lc.struc.compute_GM = 0;
options.prefs.machine.lc.struc.ft.method = 'ea_ft_mesotracking_reisert';
options.prefs.machine.lc.struc.ft.methodn = 1;
options.prefs.machine.lc.struc.ft.do = 1;
options.prefs.machine.lc.struc.ft.normalize = 0;
options.lc.general.parcellation = 'AICHA reordered (Joliot 2015)';
options.lc.general.parcellationn = 2;
options.lc.graph.struc_func_sim = 0;
options.lc.graph.nodal_efficiency = 0;
options.lc.graph.eigenvector_centrality = 0;
options.lc.graph.degree_centrality = 0;
options.lc.graph.fthresh = NaN;
options.lc.graph.sthresh = NaN;
options.lc.func.compute_CM = 0;
options.lc.func.compute_GM = 0;
options.lc.func.prefs.TR = 2.69;
options.lc.struc.compute_CM = 0;
options.lc.struc.compute_GM = 0;
options.lc.struc.ft.method = 'ea_ft_mesotracking_reisert';
options.lc.struc.ft.methodn = 1;
options.lc.struc.ft.do = 1;
options.lc.struc.ft.normalize = 0;
