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
            $aSheet->getDefaultStyle()->getFont()->setName('Times New Roman');
            // Размер шрифта 18
            $aSheet->getDefaultStyle()->getFont()->setSize(12);
            
            //Границы для таблицы
            $border = array(
                                'borders'=>array(
                                        'outline' => array(
                                                'style' => \PHPExcel_Style_Border::BORDER_THICK,
                                                'color' => array('rgb' => '000000')
                                        ),
                                        'allborders' => array(
                                                'style' => \PHPExcel_Style_Border::BORDER_THIN,
                                                'color' => array('rgb' => '000000')
                                        )
                                )
                        );
            $aSheet->getStyle("A2:H3")->applyFromArray($border);
            
            //Жирный 
            $aSheet->getStyle("A1")->getFont()->setBold(true);
            $aSheet->getStyle("A2:H3")->getAlignment()->setWrapText(true);

            // Выравнивание по горизонтале и вертикали.  По центру
            $aSheet->getStyle("A1:H3")->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER)->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
            
            //Высота строк
            $aSheet->getRowDimension('1')->setRowHeight(30);
            $aSheet->getRowDimension('2')->setRowHeight(70);
            $aSheet->getRowDimension('3')->setRowHeight(20);
            
            $aSheet->setCellValue("A2",' № п/п');  
            $aSheet->getColumnDimension('A')->setWidth(5); 
            $aSheet->mergeCells('A2:A3');

            $aSheet->setCellValue("B2",'Заказчик точек доступа, N точек');
            $aSheet->getColumnDimension('B')->setWidth(70);         
            $aSheet->mergeCells('B2:B3');

            
            $aSheet->getColumnDimension('C')->setWidth(12);           
                $aSheet->setCellValue("C2",'Пропускная способность, Рi');
                $aSheet->mergeCells('C2:C3');
            $aSheet->getColumnDimension('D')->setWidth(12); 
                $aSheet->setCellValue("D2",'Время восстановления связи,   мин');
                $aSheet->mergeCells('D2:D3');
            
            $aSheet->setCellValue("E2",'Коэффициент восстановления связи');
            $aSheet->getColumnDimension('E')->setWidth(10);
            $aSheet->mergeCells('E2:G2');

            
            $aSheet->getStyle("E3:G3")->getFont()->setBold(true);
                $aSheet->setCellValue("E3",'N');          
                $aSheet->setCellValue("F3",'N заяв.');                               
                $aSheet->setCellValue("G3",'К вос.');   
            
           
            $aSheet->setCellValue("H2", 'Коэффициент готовности соединения с сетью Интернет (для  заказчика), Кг (%)');
                $aSheet->getColumnDimension('H')->setWidth(20);
                $aSheet->mergeCells('H2:H3');
            
        
            
            // Записываем данные в ячейку
            $date = date('d-m-Y');



            //Параметры для ПЕЧАТИ
            // Формат
            $aSheet->getPageSetup()->SetPaperSize(\PHPExcel_Worksheet_PageSetup::PAPERSIZE_A4);
 
            // Ориентация
            // ORIENTATION_PORTRAIT — книжная
            // ORIENTATION_LANDSCAPE — альбомная
            $aSheet->getPageSetup()->setOrientation(\PHPExcel_Worksheet_PageSetup::ORIENTATION_LANDSCAPE);
            $aSheet->getPageSetup()->setScale(87);
               
            // Поля
            $aSheet->getPageMargins()->setTop(0.2);
            $aSheet->getPageMargins()->setRight(0.2);
            $aSheet->getPageMargins()->setLeft(0.6);
            $aSheet->getPageMargins()->setBottom(0.6);
          
            // Нижний колонтитул
            $aSheet->getHeaderFooter()->setOddFooter('&L&B CiscoWifi &R Страница &P из &N');
            //--------------------------------------------------------------// 
            
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