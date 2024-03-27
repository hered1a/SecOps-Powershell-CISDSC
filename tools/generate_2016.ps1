Import-Module '.\src\CISDSCResourceGeneration\CISDSCResourceGeneration.psd1' -Force
$Splat = @{
    BenchmarkPath            = 'C:\CIS\Benchmarks\CIS_Microsoft_Windows_Server_2016_Benchmark_v2.0.0.xlsx'
    BenchmarkVersion         = '2.0.0'
    GPOPath                  = 'C:\CIS\WS2016\Server2016v2.0.0'
    OutputPath               = '.\src\CISDSC\dscresources'
    StaticCorrectionsPath    = '.\csvs\static_corrections\Server2016_1607_corrections.csv'
    ParameterValidationsPath = '.\csvs\parameter_validations\Server2016_1607_validations.csv'
    ParameterOverridesPath   = '.\csvs\parameter_overrides\Server2016_1607_overrides.csv'
    OS                       = 'Microsoft Windows Server 2016 Member Server'
    OSBuild                  = '1607'
}
ConvertTo-DSC @Splat
