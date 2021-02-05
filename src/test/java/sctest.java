public class sctest {
    public static void main(String[] args) {
        // 2021.2.3
        //投入总钱数
        int allmoney =
                1000+10+96+100+100
                +1000+300
                +1000+500+10+70+200+100+100
                +1000+300+96+200+100
                +500
                +1000
                +500+100
                +500
                +820
                +950;
        System.out.println(allmoney);     //10652

        //要扣除手续费,手续费为0.15%

        //中间发生三次转换,
        // 扣除手续费约20

        // 退回90
        int num = 35+35+20;

        int newmoney = allmoney - num;
        System.out.println(newmoney);

    }
}
