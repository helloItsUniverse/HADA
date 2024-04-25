
Initialize              - Variable
                        - SensorInitalize   - Xsens / GPS-RTK / LiDAR / Camera
                        - FilterInitialize  - Vertical / Kalman
                        - initTime check

while
    NextLevel
    
    ImportData          - Xsens / GPS-RTK / LiDAR / Camera
    
    SignalProcessing    - Navigation        - GeoLocation / TransitionalDyn
                        - Sensor(LocalGuidence data processing)
                        - Filter            - Vertical / Horizontal
                        - Integrator
    
    Control             - GlobalGuidance
                        - LocalGuidance

    ExportData          - Motor / Steer

    IdleTime
end

Release                 - Xsens / GPS-RTK / LiDAR / Camera

DrawFigure              - NavFigure / GuideFigure

WriteFile

