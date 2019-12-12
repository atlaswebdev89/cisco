<?php


namespace Wifi;


class ExcelReports
{
    protected $driver;

    public function __construct($driver)
    {
        $this->driver = $driver;
    }

    public  function getExcel ($request, $response, $args) {

            // Создаем объект класса PHPExcel
            $xls = new \PHPExcel();
            // Устанавливаем индекс активного листа
            $xls->setActiveSheetIndex(0);
            // Получаем активный лист
            $aSheet = $xls->getActiveSheet();
            // Подписываем лист
            $aSheet->setTitle('Отчет CiscoWifi');

            //ШАПКА ОТЧЕТА ПО CISCO WIFI
            $aSheet->setCellValue("A1",'Квартальный справка-отчет о показателях качества услуги "Предоставление в пользование сети  Wi-Fi" Брестского ЗУЭС за 3 квартал  2019 года');
            $aSheet->mergeCells('A1:H1');
            // Шрифт Times New Roman
            $aSheet->getStyle('A1:H3')->getFont()->setName('Times New Roman');
            // Размер шрифта 18
            $aSheet->getStyle("A1")->getFont()->setSize(12);
            $aSheet->getStyle("A1")->getFont()->setBold(true);


            // Выравнивание по горизонтале и вертикали.  По центру
            $aSheet->getStyle("A1:H3")->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER)->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);

            $aSheet->setCellValue("A2",' № п/п');
            $aSheet->getStyle("A2")->getAlignment()->setWrapText(true);
            $aSheet->mergeCells('A2:A3');

            $aSheet->setCellValue("B2",'Заказчик точек доступа, N точек');
            $aSheet->getColumnDimension('B')->setWidth(50);
            $aSheet->getRowDimension('2')->setRowHeight(40);
            $aSheet->mergeCells('B2:B3');




            $aSheet->setCellValue("C2",'Пропускная способность, Рi');
            $aSheet->getColumnDimension('C')->setWidth(10);
            $aSheet->getRowDimension('2')->setRowHeight(40);
            $aSheet->mergeCells('C2:C3');
            $aSheet->getStyle("C2")->getAlignment()->setWrapText(true);





            // Записываем данные в ячейку
            $date = date('d-m-Y');
            $aSheet->setCellValue('D4',$date);
// Устанавливает формат данных в ячейке (дата вида дд-мм-гггг)
            $aSheet->getStyle('D4')->getNumberFormat()
                ->setFormatCode(\PHPExcel_Style_NumberFormat::FORMAT_DATE_XLSX14);




            $objWriter = \PHPExcel_IOFactory::createWriter($xls, 'Excel5');
            $objWriter->save('php://output');



            return $response
                            ->withHeader('Content-Description', 'File Transfer')
                            ->withHeader('Content-Type', 'application/octet-stream')
                            ->withHeader('Accept-Ranges', 'bytes')
                            ->withHeader('Content-Transfer-Encoding', 'binary')
                            ->withHeader('Expires', '0')
                            ->withHeader('Cache-Control', 'must-revalidate')
                            ->withHeader('Pragma', 'public')
                            //->withHeader('Content-Length', '1215152')
                            ->withHeader('Content-Disposition', 'attachment; filename=123.xls');

        }
}