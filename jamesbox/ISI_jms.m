%%% ISI calculation    function ISI_jms(a,max_isi,desired_trials)
function ISI_jms(a,max_isi,desired_trials)
ISI_hist = zeros(1,max_isi+1);
temp = [];
for tr = desired_trials
   spike_times = find(a(:,tr));
   for sp = 1:length(spike_times)-1
      temp(sp) = spike_times(sp+1)-spike_times(sp);
   end
   temp_hist = hist(temp,[1:max_isi+1]);
   ISI_hist = ISI_hist+temp_hist;
end

ISI_hist = ISI_hist(1:max_isi);
figure
bar(ISI_hist)


