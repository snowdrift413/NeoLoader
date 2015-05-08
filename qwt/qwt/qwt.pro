# ----------------------------------------------------
# This file is generated by the Qt Visual Studio Add-in.
# ------------------------------------------------------

TEMPLATE = lib
TARGET = qwt
QT += core

DEFINES += QT_LARGEFILE_SUPPORT QWT_DLL QWT_MAKEDLL QT_DLL

Release: {
#CONFIG += release
DESTDIR = ../../Release
DESTDIR = ../../Release
OBJECTS_DIR += ../../Release/qwt.obj
MOC_DIR += ../../Release/qwt.moc
UI_DIR += ../../Release/qwt.moc
RCC_DIR += ../../Release/qwt.moc
}

Debug: {
#CONFIG += debug
DESTDIR = ../../Debug
DESTDIR = ../../Debug
OBJECTS_DIR += ../../Debug/qwt.obj
MOC_DIR += ../../Debug/qwt.moc
UI_DIR += ../../Debug/qwt.moc
RCC_DIR += ../../Debug/qwt.moc
}

INCLUDEPATH += .
DEPENDPATH += .




HEADERS += ../src/qwt.h \
    ../src/qwt_abstract_scale_draw.h \
    ../src/qwt_arrow_button.h \
    ../src/qwt_clipper.h \
    ../src/qwt_color_map.h \
    ../src/qwt_column_symbol.h \
    ../src/qwt_compass_rose.h \
    ../src/qwt_compat.h \
    ../src/qwt_curve_fitter.h \
    ../src/qwt_date.h \
    ../src/qwt_date_scale_draw.h \
    ../src/qwt_date_scale_engine.h \
    ../src/qwt_dial_needle.h \
    ../src/qwt_event_pattern.h \
    ../src/qwt_global.h \
    ../src/qwt_graphic.h \
    ../src/qwt_interval.h \
    ../src/qwt_interval_symbol.h \
    ../src/qwt_legend_data.h \
    ../src/qwt_math.h \
    ../src/qwt_matrix_raster_data.h \
    ../src/qwt_null_paintdevice.h \
    ../src/qwt_painter.h \
    ../src/qwt_painter_command.h \
    ../src/qwt_picker_machine.h \
    ../src/qwt_pixel_matrix.h \
    ../src/qwt_plot_abstract_barchart.h \
    ../src/qwt_plot_barchart.h \
    ../src/qwt_plot_curve.h \
    ../src/qwt_plot_dict.h \
    ../src/qwt_plot_directpainter.h \
    ../src/qwt_plot_grid.h \
    ../src/qwt_plot_histogram.h \
    ../src/qwt_plot_intervalcurve.h \
    ../src/qwt_plot_item.h \
    ../src/qwt_plot_layout.h \
    ../src/qwt_plot_legenditem.h \
    ../src/qwt_plot_marker.h \
    ../src/qwt_plot_multi_barchart.h \
    ../src/qwt_plot_rasteritem.h \
    ../src/qwt_plot_rescaler.h \
    ../src/qwt_plot_scaleitem.h \
    ../src/qwt_plot_seriesitem.h \
    ../src/qwt_plot_shapeitem.h \
    ../src/qwt_plot_spectrocurve.h \
    ../src/qwt_plot_spectrogram.h \
    ../src/qwt_plot_svgitem.h \
    ../src/qwt_plot_textlabel.h \
    ../src/qwt_plot_tradingcurve.h \
    ../src/qwt_plot_zoneitem.h \
    ../src/qwt_point_3d.h \
    ../src/qwt_point_data.h \
    ../src/qwt_point_mapper.h \
    ../src/qwt_point_polar.h \
    ../src/qwt_raster_data.h \
    ../src/qwt_round_scale_draw.h \
    ../src/qwt_samples.h \
    ../src/qwt_scale_div.h \
    ../src/qwt_scale_draw.h \
    ../src/qwt_scale_engine.h \
    ../src/qwt_scale_map.h \
    ../src/qwt_series_data.h \
    ../src/qwt_series_store.h \
    ../src/qwt_spline.h \
    ../src/qwt_symbol.h \
    ../src/qwt_system_clock.h \
    ../src/qwt_text.h \
    ../src/qwt_text_engine.h \
    ../src/qwt_transform.h \
    ../src/qwt_widget_overlay.h \
    ../src/qwt_wheel.h \
    ../src/qwt_thermo.h \
    ../src/qwt_text_label.h \
    ../src/qwt_slider.h \
    ../src/qwt_scale_widget.h \
    ../src/qwt_sampling_thread.h \
    ../src/qwt_plot_zoomer.h \
    ../src/qwt_plot_renderer.h \
    ../src/qwt_plot_picker.h \
    ../src/qwt_plot_panner.h \
    ../src/qwt_plot_magnifier.h \
    ../src/qwt_plot_glcanvas.h \
    ../src/qwt_plot_canvas.h \
    ../src/qwt_plot.h \
    ../src/qwt_picker.h \
    ../src/qwt_panner.h \
    ../src/qwt_magnifier.h \
    ../src/qwt_legend_label.h \
    ../src/qwt_legend.h \
    ../src/qwt_knob.h \
    ../src/qwt_dyngrid_layout.h \
    ../src/qwt_dial.h \
    ../src/qwt_counter.h \
    ../src/qwt_compass.h \
    ../src/qwt_analog_clock.h \
    ../src/qwt_abstract_slider.h \
    ../src/qwt_abstract_scale.h \
    ../src/qwt_abstract_legend.h
SOURCES += ../src/qwt_abstract_legend.cpp \
    ../src/qwt_abstract_scale.cpp \
    ../src/qwt_abstract_scale_draw.cpp \
    ../src/qwt_abstract_slider.cpp \
    ../src/qwt_analog_clock.cpp \
    ../src/qwt_arrow_button.cpp \
    ../src/qwt_clipper.cpp \
    ../src/qwt_color_map.cpp \
    ../src/qwt_column_symbol.cpp \
    ../src/qwt_compass.cpp \
    ../src/qwt_compass_rose.cpp \
    ../src/qwt_counter.cpp \
    ../src/qwt_curve_fitter.cpp \
    ../src/qwt_date.cpp \
    ../src/qwt_date_scale_draw.cpp \
    ../src/qwt_date_scale_engine.cpp \
    ../src/qwt_dial.cpp \
    ../src/qwt_dial_needle.cpp \
    ../src/qwt_dyngrid_layout.cpp \
    ../src/qwt_event_pattern.cpp \
    ../src/qwt_graphic.cpp \
    ../src/qwt_interval.cpp \
    ../src/qwt_interval_symbol.cpp \
    ../src/qwt_knob.cpp \
    ../src/qwt_legend.cpp \
    ../src/qwt_legend_data.cpp \
    ../src/qwt_legend_label.cpp \
    ../src/qwt_magnifier.cpp \
    ../src/qwt_math.cpp \
    ../src/qwt_matrix_raster_data.cpp \
    ../src/qwt_null_paintdevice.cpp \
    ../src/qwt_painter.cpp \
    ../src/qwt_painter_command.cpp \
    ../src/qwt_panner.cpp \
    ../src/qwt_picker.cpp \
    ../src/qwt_picker_machine.cpp \
    ../src/qwt_pixel_matrix.cpp \
    ../src/qwt_plot.cpp \
    ../src/qwt_plot_abstract_barchart.cpp \
    ../src/qwt_plot_axis.cpp \
    ../src/qwt_plot_barchart.cpp \
    ../src/qwt_plot_canvas.cpp \
    ../src/qwt_plot_curve.cpp \
    ../src/qwt_plot_dict.cpp \
    ../src/qwt_plot_directpainter.cpp \
    ../src/qwt_plot_glcanvas.cpp \
    ../src/qwt_plot_grid.cpp \
    ../src/qwt_plot_histogram.cpp \
    ../src/qwt_plot_intervalcurve.cpp \
    ../src/qwt_plot_item.cpp \
    ../src/qwt_plot_layout.cpp \
    ../src/qwt_plot_legenditem.cpp \
    ../src/qwt_plot_magnifier.cpp \
    ../src/qwt_plot_marker.cpp \
    ../src/qwt_plot_multi_barchart.cpp \
    ../src/qwt_plot_panner.cpp \
    ../src/qwt_plot_picker.cpp \
    ../src/qwt_plot_rasteritem.cpp \
    ../src/qwt_plot_renderer.cpp \
    ../src/qwt_plot_rescaler.cpp \
    ../src/qwt_plot_scaleitem.cpp \
    ../src/qwt_plot_seriesitem.cpp \
    ../src/qwt_plot_shapeitem.cpp \
    ../src/qwt_plot_spectrocurve.cpp \
    ../src/qwt_plot_spectrogram.cpp \
    ../src/qwt_plot_svgitem.cpp \
    ../src/qwt_plot_textlabel.cpp \
    ../src/qwt_plot_tradingcurve.cpp \
    ../src/qwt_plot_xml.cpp \
    ../src/qwt_plot_zoneitem.cpp \
    ../src/qwt_plot_zoomer.cpp \
    ../src/qwt_point_3d.cpp \
    ../src/qwt_point_data.cpp \
    ../src/qwt_point_mapper.cpp \
    ../src/qwt_point_polar.cpp \
    ../src/qwt_raster_data.cpp \
    ../src/qwt_round_scale_draw.cpp \
    ../src/qwt_sampling_thread.cpp \
    ../src/qwt_scale_div.cpp \
    ../src/qwt_scale_draw.cpp \
    ../src/qwt_scale_engine.cpp \
    ../src/qwt_scale_map.cpp \
    ../src/qwt_scale_widget.cpp \
    ../src/qwt_series_data.cpp \
    ../src/qwt_slider.cpp \
    ../src/qwt_spline.cpp \
    ../src/qwt_symbol.cpp \
    ../src/qwt_system_clock.cpp \
    ../src/qwt_text.cpp \
    ../src/qwt_text_engine.cpp \
    ../src/qwt_text_label.cpp \
    ../src/qwt_thermo.cpp \
    ../src/qwt_transform.cpp \
    ../src/qwt_wheel.cpp \
    ../src/qwt_widget_overlay.cpp
