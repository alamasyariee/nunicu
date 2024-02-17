import { menuLinks } from "@/app/lib/menulinks";
import Image from "next/image";
import Link from "next/link";

export default function Navbar () {
    return (
        <>

            <nav>
                <ul className="flex flex-col pl-4">
                    {
                        menuLinks.map((menu, idx) => (
                            <Link key={idx} href={menu.url}>{menu.title}</Link>
                        ))
                    }
                </ul>
            </nav>
        </>
    )
}
