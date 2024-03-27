Import-Module '.\src\CISDSCResourceGeneration\CISDSCResourceGeneration.psd1' -Force
$Splat = @{
    BenchmarkPath            = 'C:\CIS\Benchmarks\CIS_Microsoft_Windows_Server_2019_Benchmark_v1.3.0.xlsx'
    BenchmarkVersion         = '1.3.0'
    GPOPath                  = 'C:\CIS\WS2019\Server2019v1.3.0'
    OutputPath               = '.\src\CISDSC\dscresources'
    StaticCorrectionsPath    = '.\csvs\static_corrections\Server2019_1809_corrections.csv'
    ParameterValidationsPath = '.\csvs\parameter_validations\Server2019_1809_validations.csv'
    ParameterOverridesPath   = '.\csvs\parameter_overrides\Server2019_1809_overrides.csv'
    OS                       = 'Microsoft Windows Server 2019 Member Server'
    OSBuild                  = '1809'
}
ConvertTo-DSC @Splat
