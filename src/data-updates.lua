all_loaders = {data.raw["loader"], data.raw["loader-1x1"], data.raw["loader-1x2"]}
power_setting = settings.startup["electric-loader-power-use"].value

for _, loaders in pairs(all_loaders) do
    for _, loader in pairs(loaders) do
        if (loader.energy_source == nil) then
            power_use = power_setting
            if(settings.startup["electric-loader-mode"].value == "exponential") then
                power_use = loader.speed * 32 * power_setting -- (loader speed [in items/s] / 15) * power_setting 
            end

            local buffer = power_use * loader.speed * 0.16 -- 0.5s working full speed

            loader.energy_per_item = power_use.."kJ"
            loader.energy_source = {
                type = "electric",
                buffer_capacity = buffer.."kJ",
                usage_priority = "secondary-input",
                drain = (loader.speed * 32).."kW"
            }
        end
    end
end